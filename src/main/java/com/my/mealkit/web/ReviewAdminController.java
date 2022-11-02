package com.my.mealkit.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.my.mealkit.domain.Review;
import com.my.mealkit.service.ReviewService;

@Controller 
@RequestMapping("admin/review")
public class ReviewAdminController {
	@Autowired private ReviewService reviewService;
	
	@RequestMapping("listReview")
	public void listReview() {		
	}
	
	@GetMapping("listReview")
	public List<Review> getReviews(){
		return reviewService.getAdminReviews();
	}	
}
