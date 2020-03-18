package com.fpt_journals.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AuthorController {
	
	@RequestMapping("/tac-gia/gui-bai-buoc-1")
	public String ViewGuiBaiBuoc1() {
		return "guibaibuoc1";
	}
	
	@RequestMapping("/tac-gia/gui-bai-buoc-2")
	public String ViewGuiBaiBuoc2() {
		return "guibaibuoc2";
	}
	
}
	