package com.my.mealkit.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.DeclarationDto;
import com.my.mealkit.service.DeclarationService;

@RestController
@RequestMapping("admin/declaration")
public class DeclarationAdminController {
	@Autowired private DeclarationService declarationService;
	
	@GetMapping("listDeclaration")
	public ModelAndView listDeclaration(HttpSession session, ModelAndView mv) {
		if(session.getAttribute("userId").equals("admin")) {
		} else {
		mv.setViewName("redirect:/");
		}		
		return mv;
	}
	
	@GetMapping("getDeclarations")
	public List<DeclarationDto> getDeclarations() {
		return declarationService.getDeclarations();
	}

	@RequestMapping(value = "/searchDeclarations", method=RequestMethod.GET)
	public List<DeclarationDto> searchDeclarations(@RequestParam String keyword, @RequestParam String category) {		
		List<DeclarationDto> declarationList = declarationService.getSearchDeclarations(keyword, category);
		return declarationList;
	}
}
