package com.my.mealkit.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.mealkit.domain.Mealkit;
import com.my.mealkit.service.MealkitService;

@Controller
@RequestMapping("/mealkit")
public class MealkitController {
	@Autowired private MealkitService mealkitService;
	
	@Value("${attachPath}") private String attachPath;
	
	@RequestMapping("/listMealkit")
	public String listMealkit() {
		return "mealkit/listMealkit";
	}
	
	@RequestMapping(value ="/searchMealkit", method=RequestMethod.GET )
	public String searchMealkit(Model model, @RequestParam("search") String search) {
		List<Mealkit> mealkitList = mealkitService.getSearchMealkits(search);
		model.addAttribute("mealkitList", mealkitList);
		return "mealkit/searchMealkit";
	}
	
	@ResponseBody
	@RequestMapping("/listMealkits")
	public List<Mealkit> getmealkits() {
		return mealkitService.getMealkits();
	}
	
	@RequestMapping(value = "/detailMealkit", method=RequestMethod.GET)
	public String detailMealkit(Model model, @RequestParam("mealkitNum") int mealkitNum) {
		List<Mealkit> mealkitList = mealkitService.getMealkit(mealkitNum);
		model.addAttribute("mealkitList", mealkitList);
		return "mealkit/detailMealkit";
	}
}
