package com.my.mealkit.dao;

import java.time.LocalDate;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.my.mealkit.domain.Review;

public interface ReviewDao {
	List<Review> selectReviews();
	List<Review> detailReviews(int reviewNum);
	List<Review> selectAdminReviews();
	List<Review> detailAdminReviews(int reviewNum);
	void insertReview(String reviewTitle, String reviewContent, int rate,
			LocalDate reviewRegDate, String reviewImgFileName);
	void updateReview(Review review);
	void deleteReview(int reviewNum);
	void deleteAdminReview(int reviewNum);
}
