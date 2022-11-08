package com.my.mealkit.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Faq;
import com.my.mealkit.service.FaqService;

@Controller
@RequestMapping("/admin/faq")
public class FaqAdminController {
	@Autowired private FaqService faqService;
	
	@Value("${attachPath}") private String attachPath;
	
	@RequestMapping("listFaq")
	public String listFaq() {
		return "admin/faq/listFaq";
	}
	
	@ResponseBody
	@PostMapping("getFaqs")
	public List<Faq> getFaqs() {
		return faqService.getAdminFaqs();
	}
	
	@RequestMapping(value ="detailFaq", method=RequestMethod.GET)
	public String detailFaq(Model model, @RequestParam("faqNum") int faqNum) {
		List<Faq> faqList = faqService.getAdminDetailFaq(faqNum);
		model.addAttribute("faqList", faqList);
		return "admin/faq/detailFaq";
	}
	
	@RequestMapping("addFaq")
	public String addNotice() {
		return "admin/faq/addFaq";
	}
	
	@ResponseBody
	@PostMapping("addFaq")
	public ModelAndView addFaq(Faq faq, ModelAndView mv) {
		faqService.addAdminFaq(faq);
		mv.setViewName("admin/faq/listFaq");
		return mv;
	}
	
	@RequestMapping(value ="fixFaq", method=RequestMethod.GET)
	public String fixFaq(Model model, @RequestParam("faqNum") int faqNum) {
		List<Faq> faqList = faqService.getFaq(faqNum);
		System.out.println(faqList);
		model.addAttribute("faqList", faqList);
		return "admin/faq/fixFaq";
	}
	
	@PutMapping("fixFaq")
	public ModelAndView fixFaq(@RequestBody Faq faq, ModelAndView mv) {
		System.out.println("??");
		faqService.fixAdminFaq(faq);
		mv.setViewName("admin/faq/listFaq");
		return mv;
	}
	
	
	@ResponseBody
	@DeleteMapping("del/{faqNum}")
	public void delFaq(@PathVariable int faqNum) {
		faqService.delAdminFaq(faqNum);
	}
}
