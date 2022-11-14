package com.my.mealkit.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Mealkit;
import com.my.mealkit.domain.Order;
import com.my.mealkit.service.MealkitService;
import com.my.mealkit.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired private OrderService orderSerivce;
	@Autowired private MealkitService mealkitService;
	
	@Value("${attachPath}") private String attachPath;
	
	@RequestMapping("/addOrder")
	public String addOrder() {
		return "order/addOrder";
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
	@GetMapping("getOrders")
	public List<Order> getOrders(HttpSession session, Order order) {
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