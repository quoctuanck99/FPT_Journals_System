package com.fpt_journals.controller;

import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.fpt_journals.common.PagingResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import com.fpt_journals.dao.UserDAO;
import com.fpt_journals.entity.User;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
	@Autowired
	UserDAO userDAO;
	@RequestMapping("/quan-tri-vien")
	public String ViewAdmin() {
		return "admin";
	}
	@GetMapping("/quan-tri-nguoi-dung")
	public ResponseEntity<PagingResult> quantringuoidung(@RequestParam(value = "p", required = false, defaultValue = "1") int pageNumber){
		PagingResult page=new PagingResult();
		page.setPageNumber(pageNumber);
		try{
			page=userDAO.page(page,"",null,null).orElse(new PagingResult());
		}catch (Exception e){
		}
		return new ResponseEntity<PagingResult>(page, HttpStatus.OK);
	}
	@GetMapping("/search-nguoi-dung")
	public ResponseEntity<PagingResult> searchnguoidung(@RequestParam(value = "p", required = false, defaultValue = "1") int pageNumber, @RequestParam(value = "name", required = false) String name,@RequestParam(value="status")Long status,@RequestParam(value="role")Long role){
		PagingResult page=new PagingResult();
		page.setPageNumber(pageNumber);
		try{
			page=userDAO.page(page,name,Integer.parseInt(String.valueOf(role)),Integer.parseInt(String.valueOf(status))).orElse(new PagingResult());
		}catch (Exception e){
		}
		return new ResponseEntity<PagingResult>(page, HttpStatus.OK);
	}
	@PostMapping("/addUser")
	public ResponseEntity<Boolean> login(HttpServletRequest request, Model model, @RequestBody User user) throws NoSuchAlgorithmException {
		boolean check=false;
		userDAO.add(user);
		return  new ResponseEntity<Boolean>(check, HttpStatus.OK);
	}
}
