package com.fpt.paper.model.admin.view;

import com.fpt.paper.model.admin.Category;

import java.util.List;

public class Submenu {
    private Category category;
    private List<Category> lts;

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public List<Category> getLts() {
        return lts;
    }

    public void setLts(List<Category> lts) {
        this.lts = lts;
    }
}
