package com.my.mealkit.service;

import java.util.List;

import com.my.mealkit.domain.Review;

public interface ReviewService {
	List<Review> getReviews();
	List<Review> getdetailReviews(int reviewNum);
	List<Review> getAdminReviews();
	List<Review> getdetailAdminReviews(int reviewNum);
	List<Review> getSearchReviews(String keyword);
	void addReview(Review review);
	void fixReview(Review review);
	void delReview(int reviewNum);
	void delAdminReview(int reviewNum);
}
