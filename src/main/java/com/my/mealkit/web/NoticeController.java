package com.my.mealkit.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.mealkit.domain.Notice;
import com.my.mealkit.service.NoticeService;

@Controller
@RequestMapping("notice")
public class NoticeController {
	@Autowired private NoticeService noticeService;
	/*
	@RequestMapping("listNotice")
	public ModelAndView listNotice(ModelAndView mv) {
		mv.setViewName("notice/listNotice");
		return mv;
	}
	
	@RequestMapping("detailNotice")
	public ModelAndView detailNotice(ModelAndView mv) {
		mv.setViewName("notice/detailNotice");
		return mv; 
	}
	*/
	
	@RequestMapping("listNotice")
	public void listNotice() {		
	}
	
	@RequestMapping("detailNotice")
	public void detailNotice() {}
	
	/*
	@RequestMapping(value ="detailNotice", method=RequestMethod.GET)
	public String detailNotice(Model model, @RequestParam("noticeNum") int noticeNum) {
		List<Notice> noticeList = noticeService.getDetailNotices(noticeNum);
		model.addAttribute("noticeList", noticeList);
		return "notice/detailNotice";
	}
	*/
	
	@ResponseBody
	@PostMapping("listNotice")
	public List<Notice> getNotices() {
		return noticeService.getNotices();
	}
}