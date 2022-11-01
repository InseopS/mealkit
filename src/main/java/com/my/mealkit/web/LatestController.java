package com.my.mealkit.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("latest")
public class LatestController {
	@GetMapping
	 public ModelAndView latest(ModelAndView mv) {
	      mv.setViewName("latest/listLatest");
	      return mv;
	   }
	
}