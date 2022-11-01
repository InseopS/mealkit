package com.my.mealkit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/question")
public class QuestionAdminController {
	
	@RequestMapping("addQuestion")
	public String addQuestion() {
		return "admin/question/addQuestion";
	}
	
	@RequestMapping("detailQuestion")
	public String detailQuestion() {
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
