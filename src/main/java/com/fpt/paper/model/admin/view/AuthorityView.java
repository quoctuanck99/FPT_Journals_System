package com.fpt.paper.model.admin.view;

import java.util.List;

import com.fpt.paper.model.admin.Authority;


public class AuthorityView {
    private Authority parent;
    private List<Authority> childrens;

    public Authority getParent() {
        return parent;
    }

    public void setParent(Authority parent) {
        this.parent = parent;
    }

    public List<Authority> getChildrens() {
        return childrens;
    }

    public void setChildrens(List<Authority> childrens) {
        this.childrens = childrens;
    }
}
