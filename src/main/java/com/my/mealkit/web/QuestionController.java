package com.my.mealkit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("question")
public class QuestionController {
	
	@GetMapping("add")
	public ModelAndView addQuestion(ModelAndView mv) {
		mv.setViewName("question/addQuestion");
		return mv;
	}
	
	@GetMapping("detail")
	public ModelAndView detailQuestion(ModelAndView mv) {
		mv.setViewName("question/detailQuestion");
		return mv;
	}
	
	@GetMapping("fix")
	public ModelAndView fixQuestion(ModelAndView mv) {
		mv.setViewName("question/fixQuestion");
		return mv;
	}
	
	@GetMapping("list")
	public ModelAndView listQuestion(ModelAndView mv) {
		mv.setViewName("question/listQuestion");
		return mv;
	}
}
