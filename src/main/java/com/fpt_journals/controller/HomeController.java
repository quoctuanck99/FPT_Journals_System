package com.fpt_journals.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	
	
	@RequestMapping("/home")
	public String ViewHome() {
		return "home";
	}
	
	@RequestMapping("/home/gioithieu")
	public String ViewGioiThieu() {
		return "gioithieu";
	}
	
	@RequestMapping("/home/tintuc")
	public String ViewTinTuc() {
		return "tintuc";
	}
	@RequestMapping("/home/elements")
	public String ViewElements() {
		return "elements";
	}
	
}
