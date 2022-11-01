package com.my.mealkit.dao.map;

import java.time.LocalDate;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.my.mealkit.domain.Review;

public interface ReviewMap {
	List<Review> selectReviews();
	List<Review> detailReviews(@Param("reviewNum") int reviewNum);
	List<Review> selectAdminReviews();
	List<Review> detailAdminReviews(@Param("reviewNum") int reviewNum);
	void insertReview(
			@Param("reviewTitle") String reviewTitle,
			@Param("reviewContent") String reviewContent,
			@Param("rate") int rate,
			@Param("reviewRegDate") LocalDate reviewRegDate,
			@Param("reviewImgFileName") String reviewImgFileName);
	void updateReview(Review review);
	void deleteReview(int reviewNum);
	void deleteAdminReview(int reviewNum);
}
