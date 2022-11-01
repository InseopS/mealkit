package com.my.mealkit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("exchange")
public class ExchangeController {
	@GetMapping("applyExchange")
	public ModelAndView applyExchange(ModelAndView mv) {
		mv.setViewName("exchange/applyExchange");
		return mv;
	}
	
	@GetMapping("listExchange")
	public ModelAndView listExchange(ModelAndView mv) {
		mv.setViewName("exchange/listExchange");
		return mv;
	}
}
