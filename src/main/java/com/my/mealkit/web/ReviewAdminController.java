package com.my.mealkit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
@RequestMapping("admin/review")
public class ReviewAdminController {
	@RequestMapping("listReview")
	public void listReview() {		
	}
}
