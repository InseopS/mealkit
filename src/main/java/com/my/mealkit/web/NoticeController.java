package com.my.mealkit.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("notice")
public class NoticeController {
	@GetMapping("list")
	public ModelAndView listNotice(ModelAndView mv) {
		mv.setViewName("notice/listNotice");
		return mv;
	}
	
	@GetMapping("detail")
	public ModelAndView detailNotice(ModelAndView mv) {
		mv.setViewName("notice/detailNotice");
		return mv;
	}
}