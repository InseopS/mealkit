package com.my.mealkit.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Refund;
import com.my.mealkit.service.RefundService;

@RestController
@RequestMapping("admin/refund")
public class RefundAdminController {
	@Autowired private RefundService refundService;
	
	@RequestMapping("listRefund")
	public String listRefund() {
		return "admin/refund/listRefund";
	}

	@GetMapping("listRefund")
	public ModelAndView listRefund(HttpSession session, ModelAndView mv) {	
		return mv;
	}
	
	@GetMapping("getAdminRefunds")
	public List<Refund> getAdminRefunds() {
		return refundService.getAdminRefunds();
	}
	
	@GetMapping("selectMealkitNames/{refundNum}")
	public List<Refund> getMealkitNames(@PathVariable int refundNum) {		
		List<Refund> mealkitNameList = refundService.getMealkitNames(refundNum);
		return mealkitNameList;
	}
}
