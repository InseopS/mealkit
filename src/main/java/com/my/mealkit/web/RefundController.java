package com.my.mealkit.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Exchange;
import com.my.mealkit.domain.Refund;
import com.my.mealkit.service.RefundService;

@RestController
@RequestMapping("refund")
public class RefundController {
	@Autowired private RefundService refundService;
	
	@Value("${attachPath}") private String attachPath;
	
	@RequestMapping("applyRefund")
	public String applyRefund() {
		return "refund/applyRefund";
	}
	
	@ResponseBody
	@GetMapping("applyRefund")
	public ModelAndView addRefund( ModelAndView mv) {
		mv.setViewName("refund/applyRefund");
		return mv;
	}
	
	@ResponseBody
	@PostMapping("addRefund")
	public ModelAndView addRefund(Refund refund, ModelAndView mv) throws IOException {
		try {
			String refundFileName = refund.getRefundImgFile().getOriginalFilename();
			saveRefundFile(attachPath + "/" + refundFileName, refund.getRefundImgFile());
			refund.setRefundImgFileName(refundFileName);
		     
			refundService.addRefund(refund);
		} catch(NullPointerException e) {}
  
		mv.setViewName("exchange/listExchange");
		return mv;
	}	
	      
	private void saveRefundFile(String refundFileName, MultipartFile refundFile) {
		try {
			refundFile.transferTo(new File(refundFileName));
		} catch(IOException e) {}
	}
	
	@RequestMapping("listRefund")
	public String listRefund() {
		return "refund/listRefund";
	}
	
	@GetMapping("listRefund")
	public ModelAndView listRefund(ModelAndView mv) {
		return mv;
	}
	
	@GetMapping("getRefunds")
	public List<Refund> getRefunds() {
		return refundService.getRefunds();
	}
	
	@GetMapping("selectMealkitNames/{refundNum}")
	public List<Refund> getMealkitNames(@PathVariable int refundNum) {		
		List<Refund> mealkitNameList = refundService.getMealkitNames(refundNum);
		return mealkitNameList;
	}
}
