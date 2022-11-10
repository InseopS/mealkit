package com.my.mealkit.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Refund;
import com.my.mealkit.service.RefundService;

@Controller
@RequestMapping("refund")
public class RefundController {
	@Autowired private RefundService refundService;
	
	@RequestMapping("applyRefund")
	public String applyRefund() {
		return "refund/applyRefund";
	}
	
	@ResponseBody
	@PostMapping("applyRefund")
	public ModelAndView addRefund(Refund refund, ModelAndView mv) {
		refundService.addRefund(refund);
		mv.setViewName("../order/listOrder");
		return mv;
	}
	
	@GetMapping("listRefund")
	public ModelAndView listRefund(ModelAndView mv) {
		mv.setViewName("refund/listRefund");
		return mv;
	}
}
