package com.fpt_journals.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@RequestMapping("/quan-tri-vien")
	public String ViewAdmin() {
		return "admin";
	}
}
