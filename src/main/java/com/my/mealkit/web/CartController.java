package com.my.mealkit.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("cart")
public class CartController {
	@GetMapping
	 public ModelAndView cart(ModelAndView mv) {
	      mv.setViewName("cart/listCart");
	      return mv;
	   }
	
}