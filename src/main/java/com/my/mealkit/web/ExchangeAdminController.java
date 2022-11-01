package com.my.mealkit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/exchange")
public class ExchangeAdminController {
	@RequestMapping("listExchange")
	public String listExchange() {
		return "admin/exchange/listExchange";
	}
}
