package com.my.mealkit.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.User;
import com.my.mealkit.service.UserService;

@RestController
@RequestMapping("admin/user")
public class UserAdminController {
	@Autowired private UserService userService;
	
	@GetMapping("listUser")
	public ModelAndView listUser(ModelAndView mv) {
		return mv;
	}
	
	@GetMapping("getUsers")
	public List<User> getUsers() {
		return userService.getUsers();
	}
	
	@DeleteMapping("delUser/{userId}")
	public void delUser(@PathVariable String userId) {
		userService.delUser(userId);
	}
}
