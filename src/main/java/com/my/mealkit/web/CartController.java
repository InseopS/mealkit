package com.my.mealkit.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
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

import com.my.mealkit.domain.Cart;
import com.my.mealkit.service.CartService;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired private CartService cartService;
	
	@Value("${attachPath") private String attachPath;
	
	@GetMapping("listCart")
	public String list() {
		return "cart/listCart";
	}
	
	@ResponseBody
	@PostMapping("getCarts")
	public List<Cart> getCarts(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
        if(session == null || session.getAttribute("userId") == null) {
            return null;
        }
		return cartService.getCarts((String)session.getAttribute("userId"));
	}
	
	@ResponseBody
	@DeleteMapping("del/{cartNum}")
	public void delCart(@PathVariable String userId, @PathVariable int mealkitNum) {
		cartService.delCart(userId, mealkitNum);
	}
}
	