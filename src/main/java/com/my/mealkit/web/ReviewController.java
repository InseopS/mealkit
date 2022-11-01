package com.my.mealkit.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.service.ReviewService;

@Controller 
@RequestMapping("/review")
public class ReviewController {
	@Autowired private ReviewService reviewService;	
	
	@RequestMapping("/listReview")
	public String listReview() {
		return "review/listReview";
	}
	
	@RequestMapping("/addReview")
	public String addReview() {
		return "review/addReview";
	}
}