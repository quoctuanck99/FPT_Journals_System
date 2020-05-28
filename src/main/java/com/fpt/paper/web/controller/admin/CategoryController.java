package com.fpt.paper.web.controller.admin;

import com.fpt.paper.common.PagingResult;
import com.fpt.paper.model.admin.Category;
import com.fpt.paper.model.admin.view.CategoryView;
import com.fpt.paper.web.dao.category.CategoryDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.persistence.Column;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/system/category")
public class CategoryController {
    @Autowired
    CategoryDAO categoryDAO;
    @GetMapping("/list")
    public String list() {
        return "category.list";
    }
    @GetMapping("/search")
    public ResponseEntity<PagingResult> search(@RequestParam(value = "p", required = false, defaultValue = "1") int pageNumber,
                                               @RequestParam(value = "numberPerPage", required = false, defaultValue = "10") int numberPerPage,
                                               @RequestParam(value = "name", required = false) String name)

    {
        PagingResult page = new PagingResult();

        try {
             page = categoryDAO.page(page,name).orElse(new PagingResult());
        } catch (Exception e) {
        }
        return new ResponseEntity<PagingResult>(page, HttpStatus.OK);
    }
    @PostMapping("/add")
    public ResponseEntity<Boolean> Add(Model model, @RequestBody Category category) {
        boolean check=false;

        try {
            if(category.getRoot()==null){
                category.setRoot(0);
            }
            categoryDAO.save(category);
            check=true;
        }catch (Exception e){
            e.printStackTrace();
            check=false;
        }
        return new ResponseEntity<Boolean>(check, HttpStatus.OK);
    }
    @PostMapping("/edit")
    public ResponseEntity<Boolean> Edit(Model model, @RequestBody Category category) {
        boolean check=false;

        try {
            if(category.getRoot()==null){
                category.setRoot(0);
            }
            categoryDAO.edit(category);
            check=true;
        }catch (Exception e){
            e.printStackTrace();
            check=false;
        }
        return new ResponseEntity<Boolean>(check, HttpStatus.OK);
    }
    @GetMapping("/listCategory")
    public ResponseEntity<List<Category>> search()

    {
        List<Category> lts=new ArrayList<>();

        try {
            lts = categoryDAO.listCategory();
        } catch (Exception e) {
        }
        return new ResponseEntity<List<Category>>(lts, HttpStatus.OK);
    }
    @PostMapping("/delete")
    public ResponseEntity<Boolean> del(Model model, @RequestBody Category category) {
        boolean check=false;
        try {
            categoryDAO.delete(category);
            check=true;
        }catch (Exception e){
            e.printStackTrace();
            check=false;

        }
        return new ResponseEntity<Boolean>(check, HttpStatus.OK);
    }
}
