package com.my.mealkit.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.service.OrderService;

@RestController
@RequestMapping("order")
public class OrderController {
	@Autowired private OrderService orederSerivce;
	
	@GetMapping("addOrder")
	 public ModelAndView addOrder(ModelAndView mv) {
	      mv.setViewName("order/addOrder");
	      return mv;
	   }
	
	@GetMapping("addOrder2")
	 public ModelAndView addOrder2(ModelAndView mv) {
	      mv.setViewName("order/addOrder2");
	      return mv;
	   }
	
	@GetMapping("completeOrder")
	 public ModelAndView completeOrder(ModelAndView mv) {
	      mv.setViewName("order/completeOrder");
	      return mv;
	   }
	
	@GetMapping("listOrder")
	 public ModelAndView listOrder(ModelAndView mv) {
	      mv.setViewName("order/listOrder");
	      return mv;
	   }
	
	@GetMapping("detailOrder")
	 public ModelAndView detailOrder(ModelAndView mv) {
	      mv.setViewName("order/detailOrder");
	      return mv;
	   }
}