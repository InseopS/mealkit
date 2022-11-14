package com.my.mealkit.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Order;
import com.my.mealkit.domain.Refund;
import com.my.mealkit.service.OrderService;
import com.my.mealkit.service.RefundService;

@RestController
@RequestMapping("refund")
public class RefundController {
	@Autowired private RefundService refundService;
	@Autowired private OrderService orderService;
	
	@Value("${attachPath}") private String attachPath;
	
	@RequestMapping("listRefund")
	public ModelAndView listRefund(ModelAndView mv) {
		mv.setViewName("refund/listRefund");
		return mv;
	}
	
	@RequestMapping(value ="applyRefund", method=RequestMethod.GET)
	public ModelAndView applyRefund(@RequestParam("orderNum") int orderNum, ModelAndView mv) {
		Order order = orderService.getDetailOrders(orderNum);
		mv.setViewName("refund/applyRefund");
		return mv;
	}
	
	@ResponseBody
	@PostMapping("applyRefund")
	public ModelAndView applyRefund(Refund refund, ModelAndView mv) throws IOException {
		try {
			String refundFileName = refund.getRefundImgFile().getOriginalFilename();
			saveRefundFile(attachPath + "/" + refundFileName, refund.getRefundImgFile());
			refund.setRefundImgFileName(refundFileName);
		     
			refundService.addRefund(refund);
		} catch(NullPointerException e) {}
  
		mv.setViewName("refund/listRefund");
		return mv;
	}
	      
	private void saveRefundFile(String refundFileName, MultipartFile refundFile) {
		try {
			refundFile.transferTo(new File(refundFileName));
		} catch(IOException e) {}
	}
	
	@ResponseBody
	@GetMapping("getRefunds")
	public List<Refund> getRefunds(HttpSession session) {
		String userId = session.getAttribute("userId").toString();
		List<Refund> refunds = refundService.getRefunds(userId);
		return refunds;
	}
	
	@GetMapping("selectMealkitNames/{refundNum}")
	public List<Refund> getMealkitNames(@PathVariable int refundNum) {		
		List<Refund> mealkitNameList = refundService.getMealkitNames(refundNum);
		return mealkitNameList;
	}
}
