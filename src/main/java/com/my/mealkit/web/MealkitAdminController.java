package com.my.mealkit.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.my.mealkit.service.MealkitService;

@Controller
@RequestMapping("/admin/mealkit")
public class MealkitAdminController {
	@Autowired private MealkitService mealkitService;
	
	@Value("${attachPath}") private String attachPath;
	
	@RequestMapping("/listMealkit")
	public String listMealkit() {
		return "admin/mealkit/listmealkt";
	}
}
