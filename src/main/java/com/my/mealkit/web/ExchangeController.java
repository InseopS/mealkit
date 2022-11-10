package com.my.mealkit.web;

import java.io.File;
import java.io.IOException;

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

import com.my.mealkit.domain.Exchange;
import com.my.mealkit.service.ExchangeService;

@Controller
@RequestMapping("exchange")
public class ExchangeController {
	@Autowired private ExchangeService exchangeService;
	
	@Value("${attachPath}") private String attachPath;

	
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
	
	@ResponseBody
	   @PostMapping("addExchange")
	   public ModelAndView addExchange(Exchange exchange, ModelAndView mv) throws IOException {
	      try {
	         String exchangeFileName = exchange.getExchangeImgfile().getOriginalFilename();
	         
	         saveExchangeFile(attachPath + "/" + exchangeFileName, exchange.getExchangeImgfile());
	         exchange.setExchangeImgFileName(exchangeFileName);
	         
	         exchangeService.addExchange(exchange);
	      } catch(NullPointerException e) {}
	      
	      mv.setViewName("exchange/listExchange");
	      return mv;
	   }
	   
	   private void saveExchangeFile(String exchangeFileName, MultipartFile exchangeFile) {
	      try {
	         exchangeFile.transferTo(new File(exchangeFileName));
	      } catch(IOException e) {}
	   }
	
	@DeleteMapping("delExchange/{orderNum}")
	public void delExchange(@PathVariable int orderNum) {
		exchangeService.delExchange(orderNum);
	}

}
