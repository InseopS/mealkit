package com.my.mealkit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.mealkit.dao.ReviewDao;
import com.my.mealkit.domain.Review;

@Service
public class ReviewServiceImpl implements ReviewService {
	@Autowired private ReviewDao reviewDao;
	
	@Override
	public List<Review> getReviews(){
		return reviewDao.selectReviews();
	}
	
	@Override
	public List<Review> getdetailReviews(int reviewNum) {
		return reviewDao.detailReviews(reviewNum);
	}
	
	@Override
	public List<Review> getAdminReviews() {
		return reviewDao.selectAdminReviews();
	}
	
	@Override
	public List<Review> getdetailAdminReviews(int reviewNum) {
		return reviewDao.detailAdminReviews(reviewNum);
	}
	
	@Override
	public List<Review> getSearchReviews(String keyword){
		return reviewDao.searchReviews(keyword);
	}
	
	@Override
	public void addReview(Review review) {
		reviewDao.insertReview(review);
	}
	
	@Override
	public void fixReview(Review review) {
		reviewDao.updateReview(review);
	}
	
	@Override
	public void delReview(int reviewNum) {
		reviewDao.deleteReview(reviewNum);
	}
	
	@Override
	public void delAdminReview(int reviewNum) {
		reviewDao.deleteAdminReview(reviewNum);
	}
}
