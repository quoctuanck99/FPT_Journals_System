package com.fpt.paper.web.dao.category;

import com.fpt.paper.common.PagingResult;
import com.fpt.paper.model.admin.Category;
import com.fpt.paper.model.admin.view.CategoryView;
import com.fpt.paper.web.dao.group_adm.GroupDaoImpl;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
@Repository
@Transactional(value = "transactionManager")
public class CategoryDAOimpl implements CategoryDAO {
    private Logger logger= LogManager.getLogger(GroupDaoImpl.class);
    @PersistenceContext(unitName = "appAdmin")
    @Qualifier(value = "transactionManager")
    private EntityManager entityManager;
    @Override
    public Optional<PagingResult> page(PagingResult page,String name) {
        int offset = 0;
        if (page.getPageNumber() > 0) {
            page.setNumberPerPage(10);
            offset = (page.getPageNumber() - 1) * page.getNumberPerPage();
        }
        String dieukien="";
        if(name!=null && name!=""){
            dieukien = dieukien + " AND LOWER (a.name) LIKE '%" + name.toLowerCase() + "%'";

        }
        String sql="select a.*,b.name as categoryName from Category a left join Category b on a.root=b.id  where 1=1 "+dieukien;
        Query query=entityManager.createNativeQuery(sql,CategoryView.class);
        List<String> item= query.setFirstResult(offset).setMaxResults(page.getNumberPerPage()).getResultList();
        int count=0;
        count=query.getResultList().size();
        if(item!=null){
            page.setItems(item);
            page.setRowCount(count);
        }



        return Optional.of(page);
    }
    @Override
    public List<Category> listCategory() {

        List<Category> lts=new ArrayList<>();

        String sql="select a from Category a where a.root =0";
        Query query=entityManager.createQuery(sql);
      lts = query.getResultList();
      return lts;


    }

    @Override
    public List<Category> ltsFindRoot(Integer root) {
        List<Category> lts=new ArrayList<>();

        String sql="select a from Category a where a.root ="+root;
        Query query=entityManager.createQuery(sql);
        lts = query.getResultList();
        return lts;


    }

    @Override
    public void save(Category category) {
         entityManager.persist(category);
    }

    @Override
    public void edit(Category category) {
         entityManager.merge(category);
    }

    @Override
    public Category findById(Integer id) {
        return null;
    }

    @Override
    public void delete(Category category) {
         entityManager.remove(category);
    }
}
