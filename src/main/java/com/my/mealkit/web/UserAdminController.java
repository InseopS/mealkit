package com.my.mealkit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin/user")
public class UserAdminController {
	
	@RequestMapping("listUser")
	public void listUser() {		
	}
}
