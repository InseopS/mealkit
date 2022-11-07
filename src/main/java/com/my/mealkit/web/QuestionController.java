package com.my.mealkit.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Question;
import com.my.mealkit.service.QuestionService;

@Controller
@RequestMapping("question")
public class QuestionController {
	@Autowired private QuestionService questionService;

	@GetMapping("listQuestion")
	public ModelAndView listQuestion(ModelAndView mv) {
		mv.setViewName("question/listQuestion");
		return mv;
	}
	
	@ResponseBody
	@GetMapping("getQuestions")
	public List<Question> getQuestions() {
		return questionService.getQuestions();
	}
	
	@RequestMapping("addQuestion")
	public String addQuestion() {
		return "question/addQuestion";
	}
	
	@ResponseBody
	@PostMapping("addQuestion")
	public void addQuestion(Question question) {
		questionService.addQuestion(question);
	}
	
	@GetMapping("detailQuestion")
	public ModelAndView detailQuestion(ModelAndView mv) {
		mv.setViewName("question/detailQuestion");
		return mv;
	}
	
	@PutMapping("fixQuestion")
	public void fixQuestion(@RequestBody Question question) {
		questionService.fixQuestion(question);
	}
	
	@DeleteMapping("delQuestion/{questionNum}")
	public void delQuestion(@PathVariable int questionNum) {
		questionService.delQuestion(questionNum);
	}
}
