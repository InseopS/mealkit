package com.my.mealkit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("refund")
public class RefundController {
	
	@GetMapping("applyRefund")
	public ModelAndView applyRefund(ModelAndView mv) {
		mv.setViewName("refund/applyRefund");
		return mv;
	}
	
	@GetMapping("listRefund")
	public ModelAndView listRefund(ModelAndView mv) {
		mv.setViewName("refund/listRefund");
		return mv;
	}
}
