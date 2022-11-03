package com.my.mealkit.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Notice;
import com.my.mealkit.service.NoticeService;

@RestController
@RequestMapping("/admin/notice")
public class NoticeAdminController {
	@Autowired private NoticeService noticeService;
	
	@GetMapping("listNotice")
	public ModelAndView list(ModelAndView mv) {
		mv.setViewName("admin/notice/listNotice");
		return mv;
	}

	@GetMapping("getNotice")
	public List<Notice> getNotices() {
		return noticeService.getAdminNotices();
	}
	
	@GetMapping("addNotice")
	public String addNotice() {
		return "admin/notice/addNotice";
	}
	
	@ResponseBody
	@PostMapping("addNotice")
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
