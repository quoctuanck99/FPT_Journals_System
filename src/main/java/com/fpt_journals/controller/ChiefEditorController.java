package com.fpt_journals.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChiefEditorController {
	@RequestMapping("/tong-bien-tap/quan-ly-bai-viet")
	public String ViewArticle() {
		return "quanlybaiviet";
	}
	
	@RequestMapping("/tong-bien-tap/phe-duyet-bai-viet")
	public String ViewApproveArticle() {
		return "pheduyetbaiviet";
	}
}
