package com.fpt_journals.service;

import com.fpt_journals.common.PagingResult;
import com.fpt_journals.dao.UserDAO;
import com.fpt_journals.entity.User;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.List;
import java.util.Optional;

@Repository
@Transactional(value = "transactionManager")
public class UserService implements UserDAO {
	@Qualifier(value = "sessionFactory")
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Optional<PagingResult> page(PagingResult page, String username, Integer roles, Integer status) {
        int offset = 0;
        if (page.getPageNumber() > 0) {
            page.setNumberPerPage(10);
            offset = (page.getPageNumber() - 1) * page.getNumberPerPage();
        }
        List<User> lts = null;
        Session session = sessionFactory.getSessionFactory().openSession();
        lts = (List<User>) session.createQuery("SELECT u from User u", User.class).getResultList();
        session.close();
        int count=0;
            if (lts != null && lts.size() > 0) {
                page.setItems(lts);
                count=lts.size();
            }

            page.setRowCount(count);
            session.close();

        return Optional.ofNullable(page);
    }

    @Override
    public List<User> danhsachacc() {
        List<User> lts = null;
        Session session = sessionFactory.getSessionFactory().openSession();
        lts = (List<User>) session.createQuery("SELECT u from User u", User.class).getResultList();
        session.close();
        return lts;
    }

    @Override
    public void add(User u) {
        EntityManager session = sessionFactory.getSessionFactory().createEntityManager();//
        session.getTransaction().begin();
        session.persist(u);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void delete(User u) {
        Session session = sessionFactory.getSessionFactory().openSession();
        session.remove(u);
        session.close();
    }

}
