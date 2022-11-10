package com.my.mealkit.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Question;
import com.my.mealkit.service.QuestionService;

@Controller
@RequestMapping("question")
public class QuestionController {
	@Autowired private QuestionService questionService;
	
	@RequestMapping("listQuestion")
	public String listQuestion() {
		return "question/listQuestion";
	}
	
	@ResponseBody
	@PostMapping("getQuestions")
	public List<Question> getQuestions() {
		return questionService.getQuestions();
	}
	
	@RequestMapping("addQuestion")
	public String addQuestion() {
		return "question/addQuestion";
	}
	
	@ResponseBody
	@PostMapping("addQuestion")
	public ModelAndView addQuestion(Question question, ModelAndView mv, HttpSession session) {
		String userId = session.getAttribute("userId").toString();
        if(session == null || session.getAttribute("userId") == null) {
            return null;
        }
        question.setUserId(userId);
        System.out.println(question);
		questionService.addQuestion(question);
		
		mv.setViewName("question/listQuestion");
		return mv;
	}
	
	@RequestMapping(value ="detailQuestion", method=RequestMethod.GET)
	public String detailQuestion(Model model, @RequestParam("questionNum") int questionNum) {
		List<Question> questionList = questionService.getDetailQuestion(questionNum);
		model.addAttribute("questionList", questionList);
		return "question/detailQuestion";
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
