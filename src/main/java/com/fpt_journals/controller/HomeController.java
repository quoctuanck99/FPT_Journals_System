package com.fpt_journals.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	
	
	@RequestMapping("/trang-chu")
	public String ViewHome() {
		return "home";
	}
	
	@RequestMapping("/trang-chu/gioi-thieu")
	public String ViewGioiThieu() {
		return "gioithieu";
	}
	
	@RequestMapping("/trang-chu/tin-tuc")
	public String ViewTinTuc() {
		return "tintuc";
	}
	@RequestMapping("/trang-chu/elements")
	public String ViewElements() {
		return "elements";
	}
	
}
