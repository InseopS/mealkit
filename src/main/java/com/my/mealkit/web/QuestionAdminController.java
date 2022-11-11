package com.my.mealkit.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Question;
import com.my.mealkit.service.QuestionService;

@Controller
@RequestMapping("/admin/question")
public class QuestionAdminController {
	@Autowired QuestionService questionService;
	
	@ResponseBody
	@PostMapping("getAdminQuestions")
	public List<Question> getAdminQuestions() {
		return questionService.getAdminQuestions();
	}
	
	@RequestMapping("addQuestion")
	public String addQuestion(Model model, @RequestParam("questionNum") int questionNum) {
		List<Question> questionList = questionService.getDetailQuestion(questionNum);
		model.addAttribute("questionList", questionList);
		return "admin/question/addQuestion";
	}
	
	@ResponseBody
	@PostMapping("addAdminQuestion")
	public ModelAndView addAdminQuestion(Question question, ModelAndView mv, HttpSession session) {
		System.out.println("시작ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");
		String userId = session.getAttribute("userId").toString();
        if(session == null || session.getAttribute("userId") == null) {
            return null;
        }
		question.setUserId(userId);
		System.out.println("asdasasdasd");
		questionService.addAdminQuestion(question);
		mv.setViewName("admin/question/listQuestion");
		return mv;
	}
	
	@RequestMapping(value ="detailQuestion", method=RequestMethod.GET)
	public String detailQuestion(Model model, @RequestParam("questionNum") int questionNum) {
		List<Question> questionList = questionService.getDetailQuestion(questionNum);
		model.addAttribute("questionList", questionList);
		return "admin/question/detailQuestion";
	}
	
	@RequestMapping("fixQuestion")
	public String fixQuestion() {
		return "admin/question/fixQuestion";
	}
	
	@RequestMapping("listQuestion")
	public String listQuestion() {
		return "admin/question/listQuestion";
	}
}
