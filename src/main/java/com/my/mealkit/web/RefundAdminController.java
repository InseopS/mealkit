package com.my.mealkit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin/refund")
public class RefundAdminController {
	
	@RequestMapping("listRefund")
	public String listAdminRefund() {
		return "admin/refund/listRefund";
	}
}
