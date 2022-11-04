package com.my.mealkit.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.my.mealkit.domain.Faq;
import com.my.mealkit.service.FaqService;

@Controller
@RequestMapping("/admin/faq")
public class FaqAdminController {
	@Autowired private FaqService faqService;
	
	@RequestMapping("listFaq")
	public String listFaq() {
		return "admin/faq/listFaq";
	}
	
	@GetMapping("list")
	public List<Faq> getFaqs() {
		return faqService.getAdminFaqs();
	}
	
	@RequestMapping("addFaq")
	public String addNotice() {
		return "admin/faq/addFaq";
	}
	
	@RequestMapping("fixFaq")
	public String fixNotice() {
		return "admin/faq/fixFaq";
	}
	
	@RequestMapping("detailFaq")
	public String detailNotice() {
		return "admin/faq/detailFaq";
	}
}
