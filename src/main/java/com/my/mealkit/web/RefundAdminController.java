package com.my.mealkit.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.mealkit.domain.Refund;
import com.my.mealkit.service.OrderService;
import com.my.mealkit.service.RefundService;

@Controller
@RequestMapping("admin/refund")
public class RefundAdminController {
	@Autowired private RefundService refundService;
	
	@RequestMapping("listRefund")
	public String listRefund() {
		return "admin/refund/listRefund";
	}
	
	@ResponseBody
	@PostMapping("getAdminRefunds")
	public List<Refund> getAdminRefunds() {
		return refundService.getAdminRefunds();
	}
}
