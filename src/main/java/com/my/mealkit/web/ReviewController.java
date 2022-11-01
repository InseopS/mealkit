package com.my.mealkit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
@RequestMapping("review")
public class ReviewController {
	
	@RequestMapping("listReview")
	public String listReview() {
		return "review/listReview";
	}
	
	@RequestMapping("addReview")
	public String addReview() {
		return "review/addReview";
	}
}