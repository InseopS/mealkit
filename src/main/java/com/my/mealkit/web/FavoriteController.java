package com.my.mealkit.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("favorite")
public class FavoriteController {
	@GetMapping("listFavorite")
	 public ModelAndView favorite(ModelAndView mv) {
	      mv.setViewName("favorite/listFavorite");
	      return mv;
	   }
	
}