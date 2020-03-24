package com.fpt_journals.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChiefEditorController {
	@RequestMapping("/quan-ly-noi-dung")
	public String ViewNoiDung() {
		return "quanlynoidung";
	}
}
