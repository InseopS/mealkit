package com.my.mealkit.service;

import java.util.List;

import com.my.mealkit.domain.Question;

public interface QuestionService {
	List<Question> getQuestions();
	List<Question> getAdminQuestions();
	void addQuestion(Question question);
	void addAdminQuestion(Question question);
	void fixQuestion(Question question);
	void fixAdminQuestion(Question question);
	void delQuestion(int questionNum);
	void delAdminQuestion(int questionNum);
}
