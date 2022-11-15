package com.my.mealkit.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Cart;
import com.my.mealkit.domain.Mealkit;
import com.my.mealkit.domain.Order;
import com.my.mealkit.domain.User;
import com.my.mealkit.service.OrderService;
import com.my.mealkit.service.UserService;

@RestController
@RequestMapping("order")
public class OrderController {
	@Autowired private OrderService orderService;
	@Autowired private UserService userService;
	
	@RequestMapping("addOrder")
	 public ModelAndView addOrder(HttpSession session, ModelAndView mv, @RequestParam(value="mealkitsStr", required=false)String mealkitsStr) {
		String[] mealkitStr = mealkitsStr.split(",");
		List<Cart> carts = new ArrayList<>();
		List<Mealkit> mealkits = new ArrayList<>();
		
		for (String param : mealkitStr) {
			String[] params = param.split("_");
			Cart cart = new Cart();
			Mealkit mealkit = new Mealkit();
			cart.setMealkitNum(Integer.parseInt(params[0]));
			cart.setMealkitCount(Integer.parseInt(params[1]));
			carts.add(cart);
			mealkit.setMealkitNum(Integer.parseInt(params[0]));
			mealkit.setMealkitName(params[2]);
			mealkit.setPrice(Integer.parseInt(params[3]));
			mealkits.add(mealkit);
		}
		mv.addObject("carts", carts);
		mv.addObject("mealkits", mealkits);
		String userId = session.getAttribute("userId").toString();
		User user = userService.getUser(userId);
		mv.addObject(user);
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
	@GetMapping("getOrders")
	public List<Order> getOrders(HttpSession session, Order order) {
		String userId = session.getAttribute("userId").toString();
		order.setUserId(userId);
		List<Order> orders = orderService.getOrders(userId);
		return orders;
	}
	
	@GetMapping("selectMealkitNames/{orderNum}")
	public List<Order> getMealkitNames(@PathVariable int orderNum) {		
		List<Order> mealkitNameList = orderService.getMealkitNames(orderNum);
		return mealkitNameList;
	}	
	
	@GetMapping("selectMealkitPrices/{orderNum}")
	public List<Order> getMealkitPrices(@PathVariable int orderNum) {
		List<Order> mealkitPriceList = orderService.getMealkitPrices(orderNum);
		return mealkitPriceList;
	}
	
	@RequestMapping("detailOrder")
	 public ModelAndView detailOrder(ModelAndView mv) {
		mv.setViewName("order/detailOrder");
		return mv;
	}
		
	@GetMapping("getDetailOrders/{orderNum}")
	public List<Order> detailOrders(@PathVariable("orderNum") int orderNum) {
		List<Order> orderList = orderService.getDetailOrders(orderNum);
		return orderList;
	}
		
	@PutMapping("fixOrder")
	public ModelAndView fixOrder(@RequestBody Order order, ModelAndView mv) {
		orderService.fixOrder(order);
		mv.setViewName("order/listOrder");
		return mv;
	}
}