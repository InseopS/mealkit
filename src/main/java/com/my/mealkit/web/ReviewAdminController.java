package com.my.mealkit.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Review;
import com.my.mealkit.service.ReviewService;

@RestController 
@RequestMapping("admin/review")
public class ReviewAdminController {
	@Autowired private ReviewService reviewService;
	
	@GetMapping("listReview")
	public ModelAndView list(ModelAndView mv) {
	   mv.setViewName("admin/review/listReview");
	   return mv;
	}
	
	@PostMapping("getReview")
	public List<Review> getReviews(){
		return reviewService.getAdminReviews();
	}	
	
	@ResponseBody
	@DeleteMapping("del/{reviewNum}")
	public void delReview(@PathVariable int reviewNum) {
		reviewService.delReview(reviewNum);
	}
}
