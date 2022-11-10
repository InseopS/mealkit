package com.my.mealkit.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.my.mealkit.domain.Question;

public interface QuestionMap {
	List<Question> selectDetailQuestion(@Param("questionNum") int questionNum); //문의상세
	List<Question> selectAdminQuestion(@Param("questionNum") int questionNum); //답변상세
	List<Question> selectQuestions(); //유저문의목록
	List<Question> selectAdminQuestions(); //어드민문의목록
	void insertQuestion(Question question); //유저문의추가
	void insertAdminQuestion(Question question); //어드민답변추가
	void updateQuestion(Question question); //어드민문의수정
	void updateAdminQuestion(Question question); //어드민답변수정
	void deleteQuestion(int questionNum); //유저문의삭제
	void deleteAdminQuestion(int questionNum); //어드민문의삭제
}
