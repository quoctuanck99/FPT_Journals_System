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
	
	@RequestMapping("/tac-gia/gui-bai-buoc-3")
	public String ViewGuiBaiBuoc3() {
		return "guibaibuoc3";
	}
	@RequestMapping("/tac-gia/gui-bai-buoc-4")
	public String ViewGuiBaiBuoc4() {
		return "guibaibuoc4";
	}
	@RequestMapping("/tac-gia/trang-thai-bai-dang")
	public String ViewTrangThaiBaiDang() {
		return "trangthaibaidang";
	}
	@RequestMapping("/tac-gia/theo-doi-phan-bien")
	public String ViewTheoDoiPhanBien() {
		return "theodoiphanbien";
	}
}
	