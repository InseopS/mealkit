package com.my.mealkit.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.DeclarationDto;
import com.my.mealkit.service.DeclarationService;

@RestController
@RequestMapping("declaration")
public class DeclarationController {
	@Autowired private DeclarationService declarationService;
	
	@RequestMapping("declareReview")
	public void declareReview() {		
	}
	
	@GetMapping("listDeclaration")
	public ModelAndView listDeclaration(HttpSession session, ModelAndView mv) {
		if(session.getAttribute("userId") != null) {
		} else {
		mv.setViewName("redirect:/");
		}		
		return mv;
	}
	
	@GetMapping("getDeclarations")
	public List<DeclarationDto> getDeclarations(HttpSession session) {
		String userId = session.getAttribute("userId").toString();
		return declarationService.getDeclarations(userId);
	}
	
	@RequestMapping("detailDeclaration")
	public void detailDeclaration() {		
	}
}
