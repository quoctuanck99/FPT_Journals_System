package com.fpt_journals.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReviewerController {
	@RequestMapping("/phan-bien-vien/quan-ly-bai-viet-duoc-chi-dinh")
	public String ViewReviewer() {
		return "quanlybaiviet";
	}
	
	@RequestMapping("/phan-bien-vien/danh-gia-bai-viet-duoc-chi-dinh")
	public String ViewBaiViet() {
		return "danhgiabaiviet";
	}
}
