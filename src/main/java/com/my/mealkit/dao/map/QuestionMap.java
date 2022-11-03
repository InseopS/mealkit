package com.my.mealkit.dao.map;

import java.util.List;

import com.my.mealkit.domain.Question;

public interface QuestionMap {
	List<Question> selectQuestion();
	List<Question> selectAdminQuestions();
	void insertQuestion(Question question);
	void insertAdminQuestion(Question question);
	void updateQuestion(Question question);
	void updateAdminQuestion(Question question);
	void deleteQuestion(int questionNum);
	void deleteAdminQuestion(int questionNum);
}
