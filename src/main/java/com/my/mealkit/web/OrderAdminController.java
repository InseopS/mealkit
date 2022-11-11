package com.my.mealkit.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.mealkit.domain.Order;
import com.my.mealkit.service.OrderService;

@Controller
@RequestMapping("/admin/order")
public class OrderAdminController {
	@Autowired OrderService orderService;
	
	@RequestMapping("listOrder")
	public String listOrder() {
		return "admin/order/listOrder";
	}
	
	@ResponseBody
	@PostMapping("getOrders")
	public List<Order> getAdminOrders() {
		return orderService.getAdminOrders();
	}
	
	@ResponseBody
	@PostMapping("getOrder")
	public List<Order> getOrder(HttpSession session, Order order) {
		String userId = session.getAttribute("userId").toString();
		order.setUserId(userId);
		return orderService.getAdminOrders();
	}	
}