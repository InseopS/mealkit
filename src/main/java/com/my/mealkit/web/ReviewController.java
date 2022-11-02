package com.my.mealkit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
@RequestMapping("review")
public class ReviewController {
	@RequestMapping("listReview")
	public void listReview() {		
	}
	
	@RequestMapping("addReview")
	public void addReview() {		
	}

	@RequestMapping("fixReview")
	public void fixReview() {		
	}
	
	@RequestMapping("detailReview")
	public void detailReview() {		
	}
}