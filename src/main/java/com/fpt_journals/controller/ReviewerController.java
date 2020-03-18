package com.fpt_journals.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReviewerController {
	@RequestMapping("/reviewer/quanlybaiviet")
	public String ViewReviewer() {
		return "quanlybaiviet";
	}
}
