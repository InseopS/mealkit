package com.my.mealkit.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.User;
import com.my.mealkit.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired private UserService userService;
	 
	@GetMapping("login")
	public ModelAndView loginIn(HttpSession session, ModelAndView mv) {
		if(session.getAttribute("userId") == null) {
			mv.setViewName("user/login");
		} else {
			mv.setViewName("redirect:/");
		}
		
		session.removeAttribute("errMsg");
		
		return mv;
	}
	
	@PostMapping("login")
	public ModelAndView login(User user, HttpSession session, ModelAndView mv) {
		if(userService.loginVerify(user)) {
			session.setAttribute("userId", user.getUserId());
			if(user.getUserId().equals("admin")) {
				mv.setViewName("redirect:../admin/main");
			} else {
				mv.setViewName("redirect:/");
			}
		} else {
			session.setAttribute("errMsg", "올바르지 않은 아이디 또는 패스워드 입니다.");
			mv.setViewName("user/login");
		}
				
		return mv;
	}
	
	@GetMapping("logout")
	public ModelAndView logout(HttpSession session, ModelAndView mv) {
		session.invalidate();
		mv.setViewName("redirect:/");
		
		return mv;
	}
}
