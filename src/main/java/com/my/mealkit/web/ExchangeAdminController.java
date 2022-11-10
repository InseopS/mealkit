package com.my.mealkit.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.mealkit.domain.Exchange;
import com.my.mealkit.domain.Order;
import com.my.mealkit.service.ExchangeService;
import com.my.mealkit.service.OrderService;

@Controller
@RequestMapping("/admin/exchange")
public class ExchangeAdminController {
	@Autowired ExchangeService exchangeService;
	@Autowired OrderService orderService;
	
	@RequestMapping("listExchange")
	public String listExchange() {
		System.out.println("페이지 뷰 실행");
		return "admin/exchange/listExchange";
	}
	
	@ResponseBody
	@PostMapping("getExchanges")
	public List<Exchange> getAdminExchanges() {
		System.out.println("가져오기 실행");
		return exchangeService.getAdminExchanges();
	}
	
	@ResponseBody
	@PostMapping("getExchange")
	public List<Exchange> getExchange(HttpSession session, Order order, Exchange exchange) {
		String userId = session.getAttribute("userId").toString();
		order.setUserId(userId);
		return exchangeService.getAdminExchanges();
	}
}
