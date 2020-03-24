package com.fpt_journals.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ChiefEditorByJournalsController {
	@RequestMapping("/tong-bien-tap-theo-chuyen-san/quan-ly-bai-viet-da-duoc-xuat-ban")
	public String ViewChiefEditorByJournals() {
		return "quanlybaivietdaduocxuatban";
	}
	
	@RequestMapping("/tong-bien-tap-theo-chuyen-san/bien-tap-chuyen-san")
	public String ViewJournal() {
		return "bientapchuyensan";
	}
}
