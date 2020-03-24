package com.fpt_journals.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class EditorController {

	@RequestMapping("/bien-tap-vien/quan-ly-bai-viet-btv")
	public String ViewEditor() {
		return "quanlybaivietEditor";
	}
	@RequestMapping("/bien-tap-vien/kiem-tra-truoc-bai-viet-btv")
	public String ViewCheck() {
		return "kiemtratruocbaiviet";
	}
	@RequestMapping("/bien-tap-vien/quan-ly-bai-viet-xuat-ban")
	public String ViewEditorXuatBan() {
		return "quanlybaivietxuatban";
	}
	@RequestMapping("/bien-tap-vien/xuat-ban-bai-viet")
	public String ViewXuatban() {
		return "xuatbanbaiviet";
	}
}
