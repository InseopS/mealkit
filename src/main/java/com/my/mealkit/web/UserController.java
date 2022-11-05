package com.my.mealkit.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.User;
import com.my.mealkit.service.MailSendService;
import com.my.mealkit.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired private UserService userService;
	@Autowired private MailSendService mailSendService;
	
	@RequestMapping("jusoPopup")
	public void jusoPopup() {		
	}
	
	@RequestMapping("signUp")
	public void signUp() {
	}
	
	@PostMapping("signUp")
	public void signUp(@RequestBody User user) {
		userService.addUser(user);
	}
	
	@ResponseBody
	@RequestMapping("idDoubleCheck")
	public boolean idDoubleCheck(@RequestParam("userId") String userId, HttpServletRequest request, HttpServletResponse response) {
		boolean isGood = userService.idDoubleCheck(userId);
		return isGood;
	}
	
	@ResponseBody
	@RequestMapping("emailDoubleCheck")
	public boolean emailDoubleCheck(@RequestParam("email") String email, HttpServletRequest request, HttpServletResponse response) {
		boolean isGood = userService.emailDoubleCheck(email);
		return isGood;
	}
	
	@GetMapping("emailCheck")
	@ResponseBody
	public String emailCheck(String email) {
		return mailSendService.emailWrite(email);
	}
	
	@RequestMapping("welcome")
	public void welcome() {		
	}

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
				mv.setViewName("redirect:../admin/");
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
	
	@RequestMapping("findId")
	public void findId() {		
	}
	
	@RequestMapping("completeFindId")
	public ModelAndView completeFindId(@RequestParam(value="email", required=false) String email, ModelAndView mv) {
		if(email != null) {
			String userId = userService.findUserId(email);				
			mv.addObject("userId", userId);
		} else {
			mv.setViewName("redirect:/");
		}
		return mv;
	}
	
	@RequestMapping("findPassword")
	public void findPassword() {		
	}
	
	@RequestMapping("resetPassword")
	public void resetPassword() {		
	}
	
	@RequestMapping("completeResetPassword")
	public void completeResetPassword() {		
	}
	
	@RequestMapping("fixUser")
	public void fixUser() {		
	}
	
	@RequestMapping("completeFixUser")
	public void completeFixUser() {		
	}
	
	@RequestMapping("withdrawal")
	public ModelAndView withdrawal(HttpSession session, ModelAndView mv) {
		if(session.getAttribute("userId") != null) {
			String userId = session.getAttribute("userId").toString();
			userService.delUser(userId);
			session.invalidate();
			mv.setViewName("user/completeWithdrawal");
		} else {
		mv.setViewName("redirect:/");
		}
		
		return mv;
	}
	
	@RequestMapping("completeWithdrawal")
	public void completeWithdrawal() {
	}
	
	@RequestMapping("mypage")
	public ModelAndView mypage(HttpSession session, ModelAndView mv) {		
		if(session.getAttribute("userId") != null) {
			String userId = session.getAttribute("userId").toString();
			User user = userService.getUser(userId);
			mv.addObject(user);
		} else {
		mv.setViewName("redirect:/");
		}
		
		return mv;
	}
}
