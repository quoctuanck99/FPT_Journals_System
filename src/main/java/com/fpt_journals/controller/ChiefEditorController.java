package com.fpt_journals.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChiefEditorController {
	@RequestMapping("/tong-bien-tap/quan-ly-noi-dung")
	public String ViewNoiDung() {
		return "quanlynoidung";
	}
		@RequestMapping("/tong-bien-tap/chinh-sua-tin-tuc")
		public String Viewchinhsuatintuc() {
			return "chinhsuatintuc";
	}
		@RequestMapping("/tong-bien-tap/chinh-sua-huong-dan")
		public String Viewchinhsuahuongdan() {
			return "chinhsuahuongdan";
	}
		@RequestMapping("/tong-bien-tap/chinh-sua-gioi-thieu")
		public String Viewchinhgioithieu() {
			return "chinhsuagioithieu";
		}
	@RequestMapping("/tong-bien-tap/quan-ly-bai-viet")
	public String ViewArticle() {
		return "quanlybaiviet";
	}
	
	@RequestMapping("/tong-bien-tap/phe-duyet-bai-viet")
	public String ViewApproveArticle() {
		return "pheduyetbaiviet";
	}
	}
