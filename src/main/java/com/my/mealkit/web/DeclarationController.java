package com.my.mealkit.web;

import java.util.List;

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
	public ModelAndView listDeclaration(ModelAndView mv) {
		return mv;
	}
	
	@GetMapping("getDeclarations")
	public List<DeclarationDto> getDeclarations() {
		return declarationService.getDeclarations();
	}
	
	@RequestMapping("detailDeclaration")
	public void detailDeclaration() {		
	}
}
