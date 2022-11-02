package com.my.mealkit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/order")
public class OrderAdminController {
	@RequestMapping("listOrder")
	public String listOrder() {
		return "admin/order/listOrder";
	}
	
	@RequestMapping("listOrderCancel")
	public String listOrderCancel() {
		return "admin/order/listOrderCancel";
	}
}
