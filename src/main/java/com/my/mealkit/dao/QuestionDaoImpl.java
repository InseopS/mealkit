package com.my.mealkit.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.mealkit.dao.map.QuestionMap;
import com.my.mealkit.domain.Question;

@Repository
public class QuestionDaoImpl implements QuestionDao{
	@Autowired private QuestionMap questionMap;
	
	@Override
	public List<Question> selectDetailQuestion(int questionNum) {
		return questionMap.selectDetailQuestion(questionNum);
	}
	
	@Override
	public List<Question> selectAdminQuestion(int questionNum) {
		return questionMap.selectAdminQuestion(questionNum);
	}
	
	@Override
	public List<Question> selectQuestions() {
		return questionMap.selectQuestions();
	}
	
	@Override
	public List<Question> selectAdminQuestions() {
		return questionMap.selectAdminQuestions();
	}
	
	@Override
	public void insertQuestion(Question question) {
		questionMap.insertQuestion(question);
	}
	
	@Override
	public void insertAdminQuestion(Question question) {
		questionMap.insertAdminQuestion(question);
	}
	
	@Override
	public void updateQuestion(Question question) {
		questionMap.updateQuestion(question);
	}
	
	@Override
	public void updateAdminQuestion(Question question) {
		questionMap.updateAdminQuestion(question);
	}
	
	@Override
	public void deleteQuestion(int questionNum) {
		questionMap.deleteQuestion(questionNum);
	}
	
	@Override
	public void deleteAdminQuestion(int questionNum) {
		questionMap.deleteAdminQuestion(questionNum);
	}
}
