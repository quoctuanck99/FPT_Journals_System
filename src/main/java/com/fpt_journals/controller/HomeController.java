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
	
	@RequestMapping("/gioithieu")
	public String ViewGioiThieu() {
		return "gioithieu";
	}
	
	@RequestMapping("/tintuc")
	public String ViewTinTuc() {
		return "tintuc";
	}
	@RequestMapping("/elements")
	public String ViewElements() {
		return "elements";
	}

	
}
