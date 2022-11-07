package com.my.mealkit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin/returnMealkit")
public class ReturnAdminController {
	
	@RequestMapping("listReturn")
	public String listAdminReturn() {
		return "admin/returnMealkit/listReturn";
	}
}
