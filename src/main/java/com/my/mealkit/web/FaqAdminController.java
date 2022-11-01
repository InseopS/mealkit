package com.my.mealkit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/faq")
public class FaqAdminController {
	@RequestMapping("listFaq")
	public String listFaq() {
		return "admin/faq/listFaq";
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
