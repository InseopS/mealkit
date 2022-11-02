package com.my.mealkit.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.mealkit.domain.Notice;
import com.my.mealkit.service.NoticeService;

@Controller
@RequestMapping("/admin/notice")
public class NoticeAdminController {
	@Autowired private NoticeService noticeService;
	
	@RequestMapping("/listNotice")
	public String listNotice() {
		return "admin/notice/listNotice";
	}
	
	@GetMapping("/listNotice")
	public List<Notice> getNotices() {
		return noticeService.getAdminNotices();
	}
	
	@RequestMapping("/addNotice")
	public String addNotice() {
		return "admin/notice/addNotice";
	}
	
	@ResponseBody
	@PostMapping("/addNotice")
	public void addNotice(Notice notice) {
		noticeService.addAdminNotice(notice);
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
