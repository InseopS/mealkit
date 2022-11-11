package com.my.mealkit.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.my.mealkit.service.CartService;
import com.my.mealkit.service.MealkitService;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired private CartService cartService;
	@Autowired private MealkitService mealkitService;
	
	@Value("${attachPath") private String attachPath;
	
	@RequestMapping("listCart")
	public String listCart() {
		return "cart/listCart";
	}
	
	@RequestMapping(value = "/listCart", method=RequestMethod.GET)
	public String listCart(Model model, HttpSession session) {
		System.out.println("테스트");
        if(session == null || session.getAttribute("userId") == null) {
            return null;
        }
        model.addAttribute("carts", cartService.getCarts((String)session.getAttribute("userId")));
        System.out.println(cartService.getCarts((String)session.getAttribute("userId")));
        model.addAttribute("mealkits", mealkitService.getMealkit(1));
        System.out.println(mealkitService.getMealkit(1));
        return "cart/listCart";
	} 
	
	@DeleteMapping("delCart/{mealkitNum}")
	public void delCart(HttpSession session, @PathVariable int mealkitNum) {
		String userId = session.getAttribute("userId").toString();
		cartService.delCart(userId, mealkitNum);
	}
}
	