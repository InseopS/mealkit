package com.my.mealkit.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("order")
public class OrderController {
	@GetMapping("addOrder")
	 public ModelAndView addOrder(ModelAndView mv) {
	      mv.setViewName("order/addOrder");
	      return mv;
	   }
	
	@GetMapping("completeOrder")
	 public ModelAndView completeOrder(ModelAndView mv) {
	      mv.setViewName("order/completeOrder");
	      return mv;
	   }
}