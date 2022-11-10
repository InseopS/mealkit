package com.my.mealkit.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Order;
import com.my.mealkit.service.OrderService;

@RestController
@RequestMapping("order")
public class OrderController {
	@Autowired private OrderService orderSerivce;
	
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
	      mv.setViewName("order/listOrder");
	      return mv;
	   }
	
	@ResponseBody
	@PostMapping("listOrder")
	public List<Order> getOrder(HttpSession session, Order order) {
		String userId = session.getAttribute("userId").toString();
		order.setUserId(userId);
		List<Order> orders = orderSerivce.getOrders(userId);
		System.out.println(order.getUserId());
		return orders;
	}
	
	@GetMapping("selectMealkitNames/{orderNum}")
	public List<Order> getMealkitNames(@PathVariable int orderNum) {		
		List<Order> mealkitNameList = orderSerivce.getMealkitNames(orderNum);
		return mealkitNameList;
	}	

	@RequestMapping("detailOrder")
	 public ModelAndView detailOrder(ModelAndView mv) {
	      mv.setViewName("order/detailOrder");
	      return mv;
	   }
	
	@DeleteMapping("delOrder/{orderNum}")
	public void delOrder(@PathVariable int orderNum) {
		orderSerivce.delOrder(orderNum);
	}
}