package com.fpt.paper.web.dao.category;

import com.fpt.paper.common.PagingResult;
import com.fpt.paper.model.admin.Category;
import com.fpt.paper.model.admin.view.CategoryView;

import java.util.List;
import java.util.Optional;

public interface CategoryDAO {
    Optional<PagingResult> page(PagingResult page,String name);
    void save(Category category);
    void edit(Category category);
    Category findById(Integer id);
    void delete(Category category);
    public List<Category> listCategory();
    public List<Category> ltsFindRoot(Integer root);
}
