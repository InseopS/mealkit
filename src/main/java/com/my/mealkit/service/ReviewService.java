package com.my.mealkit.service;

import java.time.LocalDate;
import java.util.List;

import com.my.mealkit.domain.Review;

public interface ReviewService {
	List<Review> getReviews();
	List<Review> getdetailReviews(int reviewNum);
	List<Review> getAdminReviews();
	List<Review> getdetailAdminReviews(int reviewNum);
	void addReview(String reviewTitle, String reviewContent, int rate,
			LocalDate reviewRegDate, String reviewImgFileName);
	void fixReview(Review review);
	void delReview(int reviewNum);
	void delAdminReview(int reviewNum);
}
