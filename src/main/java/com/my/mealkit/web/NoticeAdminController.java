package com.my.mealkit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/notice")
public class NoticeAdminController {
	@RequestMapping("listNotice")
	public String listNotice() {
		return "admin/notice/listNotice";
	}
	
	@RequestMapping("addNotice")
	public String addNotice() {
		return "admin/notice/addNotice";
	}
	
	@RequestMapping("fixNotice")
	public String fixNotice() {
		return "admin/notice/fixNotice";
	}
	
	@RequestMapping("detailNotice")
	public String detailNotice() {
		return "admin/notice/detailNotice";
	}
}
