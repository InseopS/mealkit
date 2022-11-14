package com.my.mealkit.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Order;
import com.my.mealkit.service.OrderService;

@RestController
@RequestMapping("order")
public class OrderController {
	@Autowired private OrderService orderService;
	
	@GetMapping("addOrder")
	 public ModelAndView addOrder(ModelAndView mv) {
	    mv.setViewName("order/addOrder");
	    return mv;
	   }
	
	@GetMapping("completeOrder")
	 public ModelAndView completeOrder(ModelAndView mv) {
	    mv.setViewName("order/completeOrder");
	    return mv;
	   }
	
	@RequestMapping("listOrder")	
	 public ModelAndView listOrder(ModelAndView mv) {
		System.out.println("테스트1");
	    mv.setViewName("order/listOrder");
	    return mv;
	   }
	
	@ResponseBody
	@GetMapping("getOrders")
	public List<Order> getOrders(HttpSession session, Order order) {
		String userId = session.getAttribute("userId").toString();
		order.setUserId(userId);
		List<Order> orders = orderService.getOrders(userId);
		System.out.println(order.getUserId());
		return orders;
	}
	
	@GetMapping("selectMealkitNames/{orderNum}")
	public List<Order> getMealkitNames(@PathVariable int orderNum) {		
		List<Order> mealkitNameList = orderService.getMealkitNames(orderNum);
		return mealkitNameList;
	}	
	
	@RequestMapping("detailOrder")
	 public ModelAndView detailOrder(ModelAndView mv) {
		//mv.setViewName("order/detailOrder");
		System.out.println("테스트33");
		return mv;
	}
	
	
	
	@GetMapping("getDetailOrders/{orderNum}")
	public List<Order> detailOrders(@PathVariable("orderNum") int orderNum) {
		List<Order> orderList = orderService.getDetailOrders(orderNum);
		System.out.println("2131");
		return orderList;
	}
		
		
		
	
	
	
	@PutMapping("fixOrder")
	public ModelAndView fixOrder(@RequestBody Order order, ModelAndView mv) {
		System.out.println("123");
		orderService.fixOrder(order);
		mv.setViewName("order/listOrder");
		return mv;
	}
	/*
	@DeleteMapping("delOrder/{orderNum}")
	public void delOrder(@PathVariable int orderNum) {
		orderService.delOrder(orderNum);
	}
	
	
	@PutMapping("fix")
	public ModelAndView fixOrder(Order order, ModelAndView mv) {
		System.out.println(order.getOrderNum());
		order.setOrderNum(5);
		System.out.println(order.getOrderNum());
		orderService.fixOrder(order);
		mv.setViewName("order/listOrder");
		System.out.println(order.getOrderStatusCode());
		return mv;
	}*/
}