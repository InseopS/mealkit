package com.my.mealkit.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Review;
import com.my.mealkit.service.ReviewService;

@Controller 
@RequestMapping("review")
public class ReviewController {
	@Autowired private ReviewService reviewService;
	
	@Value("${attachPath}") private String attachPath;
	
	@GetMapping("listReview")
	public ModelAndView list(ModelAndView mv) {
	   mv.setViewName("review/listReview");
	   return mv;
	}
	
	@PostMapping("getReview")
	public List<Review> getReviews(){
		return reviewService.getReviews();
	}	
	
	@RequestMapping("addReview")
	public String addReview() {
		return "review/addReview";
	}
	
	@RequestMapping("fixReview")
	public String fixReview() {
		return "review/fixReview";
	}
	
	@RequestMapping("detailReview")
	public String detailReview() {
		return "review/detailReview";
	}
	
	@ResponseBody
	@PostMapping("addReview")
	public ModelAndView addReview(Review review, ModelAndView mv) throws IOException {
		try {
			String reviewFileName = review.getReviewImgfile().getOriginalFilename();
			
			saveReviewFile(attachPath + "/" + reviewFileName, review.getReviewImgfile());
			review.setReviewImgfileName(reviewFileName);
			
			reviewService.addReview(review);
		} catch(NullPointerException e) {}
		
		mv.setViewName("review/listReview");
		return mv;
	}
	
	private void saveReviewFile(String reviewFileName, MultipartFile reviewFile) {
		try {
			reviewFile.transferTo(new File(reviewFileName));
		} catch(IOException e) {}
	}
}