package com.my.mealkit.dao;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.my.mealkit.dao.map.ReviewMap;
import com.my.mealkit.domain.Review;

public class ReviewDaoImpl implements ReviewDao{
	@Autowired private ReviewMap reviewMap;
	
	@Override
	public List<Review> selectReviews() {
		return reviewMap.selectReviews();
	}
	
	@Override
	public List<Review> detailReviews(int reviewNum) {
		return reviewMap.detailReviews(reviewNum);
	}
	
	@Override
	public List<Review> selectAdminReviews(){
		return reviewMap.selectAdminReviews();
	}
	
	@Override
	public List<Review> detailAdminReviews(int reviewNum){
		return reviewMap.detailAdminReviews(reviewNum);
	} 
	
	@Override
	public void insertReview(String reviewTitle, String reviewContent, int rate,
			LocalDate reviewRegDate, String reviewImgFileName) {
		reviewMap.insertReview(reviewTitle, reviewContent, rate, reviewRegDate, reviewImgFileName);
	}
	
	@Override
	public void updateReview(Review review) {
		reviewMap.updateReview(review);
	}
	
	@Override
	public void deleteReview(int reviewNum) {
		reviewMap.deleteReview(reviewNum);
	}
	
	@Override
	public void deleteAdminReview(int reviewNum) {
		reviewMap.deleteAdminReview(reviewNum);
	}
}
