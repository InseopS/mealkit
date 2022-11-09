package com.my.mealkit.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Cart;
import com.my.mealkit.service.CartService;

@RestController
@RequestMapping("/cart")
public class CartController {
	@Autowired private CartService cartService;
	
	@Value("${attachPath") private String attachPath;
	
	@GetMapping("listCart")
	public ModelAndView listCart(ModelAndView mv) {
		return mv;
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
	
	@DeleteMapping("delCart/{mealkitNum}")
	public void delCart(HttpSession session, @PathVariable int mealkitNum) {
		String userId = session.getAttribute("userId").toString();
		cartService.delCart(userId, mealkitNum);
	}
}
	