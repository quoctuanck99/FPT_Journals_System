package com.fpt_journals.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	
	
	@RequestMapping("/trang-chu")
	public String ViewHome() {
		return "home";
	}
	
	@RequestMapping("/trang-chu/gioi-thieu")
	public String ViewGioiThieu() {
		return "gioithieu";
	}
	
	@RequestMapping("/trang-chu/tin-tuc")
	public String ViewTinTuc() {
		return "tintuc";
	}
	@RequestMapping("/trang-chu/elements")
	public String ViewElements() {
		return "elements";
	}
	@RequestMapping("/chinh-sua-profile")
	public String ViewChinhSuaProfile() {
		return "chinhsuaprofile";
	}
	@RequestMapping("/doi-mat-khau")
	public String ViewDoiMatKhau() {
		return "doimatkhau";
	}
	@RequestMapping("/dang-nhap")
	public String ViewDangNhap() {
		return "dangnhap";
	}
	@RequestMapping("/dang-ky")
	public String ViewDangKy() {
		return "dangky";
	}
	
	@RequestMapping("/ket-qua-tim-kiem")
	public String ViewKetQuaTimKiem() {
		return "ketquatimkiem";
	}
	
	
}

