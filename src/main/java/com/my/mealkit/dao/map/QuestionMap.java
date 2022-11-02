package com.my.mealkit.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.my.mealkit.domain.Question;

public interface QuestionMap {
	List<Question> selectQuestion();
	List<Question> selectAdminQuestions();
	void insertQuestion(Question question);
	void insertAdminQuestion(Question question);
	void updateQuestion(Question question);
	void updateAdminQuestion(Question question);
	void deleteQuestion(@Param("questionNum") int questionNum);
	void deleteAdminQuestion(@Param("questionNum") int questionNum);
}
