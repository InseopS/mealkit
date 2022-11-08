package com.my.mealkit.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Exchange;
import com.my.mealkit.service.ExchangeService;

@Controller
@RequestMapping("exchange")
public class ExchangeController {
	@Autowired private ExchangeService exchangeService;
	
	@GetMapping("listExchange")
	public ModelAndView listExchange(ModelAndView mv) {
		mv.setViewName("exchange/listExchange");
		return mv;
	}
	
	@GetMapping("applyExchange")
	public ModelAndView applyExchange(ModelAndView mv) {
		mv.setViewName("exchange/applyExchange");
		return mv;
	}
	
	@PostMapping("applyExchange")
	public void addExchange(Exchange exchange) {
		exchangeService.addExchange(exchange);
	}
	
	@DeleteMapping("delExchange/{orderNum}")
	public void delExchange(@PathVariable int orderNum) {
		exchangeService.delExchange(orderNum);
	}

}
