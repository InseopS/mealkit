package com.my.mealkit.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.my.mealkit.domain.Question;

public interface QuestionMap {
	List<Question> selectQuestion(@Param("questionNum") int questionNum);
	List<Question> selectAdminQuestion(@Param("questionNum") int questionNum);
	List<Question> selectQuestions();
	List<Question> selectAdminQuestions();
	void insertQuestion(Question question);
	void insertAdminQuestion(Question question);
	void updateQuestion(Question question);
	void updateAdminQuestion(Question question);
	void deleteQuestion(int questionNum);
	void deleteAdminQuestion(int questionNum);
}
