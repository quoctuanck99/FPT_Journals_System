package com.fpt.paper.web.controller.view;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.*;




@Controller
@RequestMapping("/")
public class IndexController {
   
	@RequestMapping("/trang-chu")
	public String ViewHome() {
		return "home";
	}

}
