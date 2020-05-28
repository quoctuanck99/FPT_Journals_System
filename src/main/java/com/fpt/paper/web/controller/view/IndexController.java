package com.fpt.paper.web.controller.view;

import com.fpt.paper.model.admin.Category;
import com.fpt.paper.model.admin.view.Submenu;
import com.fpt.paper.web.dao.category.CategoryDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("/")
public class IndexController {
   @Autowired
	CategoryDAO categoryDAO;
	@RequestMapping("/trang-chu")
	public String ViewHome(ModelMap model) {

		return "home";
	}
	@GetMapping("/danhmuc/list")
	public ResponseEntity<List<Submenu>> list(){
		List<Category> list=new ArrayList<>();
		List<Submenu> lts=new ArrayList<>();

		try {
			list=categoryDAO.listCategory();
			for(Category category: list){
				Submenu submenu=new Submenu();
				submenu.setCategory(category);
				List<Category> listds=new ArrayList<>();
				listds=categoryDAO.ltsFindRoot(category.getId());
				submenu.setLts(listds);
				lts.add(submenu);

			}
 		} catch (Exception e) {

		}
		return new ResponseEntity<List<Submenu>>(lts, HttpStatus.OK);
	}

}
