package com.my.mealkit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("return")
public class ReturnController {
	
	@GetMapping("applyReturn")
	public ModelAndView applyReturn(ModelAndView mv) {
		mv.setViewName("return/applyReturn");
		return mv;
	}
	
	@GetMapping("listReturn")
	public ModelAndView listReturn(ModelAndView mv) {
		mv.setViewName("return/listReturn");
		return mv;
	}
}
