package com.my.mealkit.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.my.mealkit.service.MealkitService;

@Controller
public class MainController {
	@Autowired private MealkitService mealkitService;
	
	@Value("${attachPath}") private String attachPath;
	
	@RequestMapping("/")
	public String mealkitList(Model model) {
		model.addAttribute("mealkitList", mealkitService.getMealkits());
		return "main";
	}
}
