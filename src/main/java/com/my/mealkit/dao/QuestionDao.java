package com.my.mealkit.dao;

import java.util.List;

import com.my.mealkit.domain.Question;

public interface QuestionDao {
	List<Question> selectDetailQuestion(int questionNum);
	List<Question> selectAdminQuestion(int questionNum);
	List<Question> selectQuestions(String userId);
	List<Question> selectAdminQuestions();
	void insertQuestion(Question question);
	void insertAdminQuestion(Question question);
	void updateQuestion(Question question);
	void updateAdminQuestion(Question question);
	void deleteQuestion(int questionNum);
	void deleteAdminQuestion(int questionNum);
}
