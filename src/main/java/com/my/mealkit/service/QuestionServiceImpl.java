package com.my.mealkit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.mealkit.dao.QuestionDao;
import com.my.mealkit.domain.Question;

@Service
public class QuestionServiceImpl implements QuestionService{
	@Autowired private QuestionDao questionDao;
	
	@Override
	public List<Question> getDetailQuestion(int questionNum) {
		return questionDao.selectDetailQuestion(questionNum);
	}
	
	@Override
	public List<Question> getAdminQuestion(int questionNum) {
		return questionDao.selectAdminQuestion(questionNum);
	}
	
	@Override
	public List<Question> getQuestions() {
		return questionDao.selectQuestions();
	}
	
	@Override
	public List<Question> getAdminQuestions(){
		return questionDao.selectAdminQuestions();
	}
	
	@Override
	public void addQuestion(Question question) {
		questionDao.insertQuestion(question);
	}
	
	@Override
	public void addAdminQuestion(Question question) {
		questionDao.insertAdminQuestion(question);
	}
	
	@Override
	public void fixQuestion(Question question) {
		questionDao.updateQuestion(question);
	}
	
	@Override
	public void fixAdminQuestion(Question question) {
		questionDao.updateAdminQuestion(question);
	}
	
	@Override
	public void delQuestion(int questionNum) {
		questionDao.deleteQuestion(questionNum);
	}
	
	@Override
	public void delAdminQuestion(int questionNum) {
		questionDao.deleteAdminQuestion(questionNum);
	}
}
