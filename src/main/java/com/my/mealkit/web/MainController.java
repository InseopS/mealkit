package com.my.mealkit.web;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Logo;
import com.my.mealkit.domain.LogoDto;
import com.my.mealkit.service.MealkitService;

@Controller
public class MainController {
	@Autowired private MealkitService mealkitService;
	
	@Value("${attachPath}") private String attachPath;
	
	@RequestMapping("/")
	public String mealkitList(Model model) {
		model.addAttribute("mealkitList", mealkitService.getMealkits());
		return "main";
	}
	
	@GetMapping("/admin/")
	public ModelAndView logout(HttpSession session, ModelAndView mv) {
		if(session.getAttribute("userId") != null) {
		if(!session.getAttribute("userId").equals("admin")) mv.setViewName("redirect:/");
		else mv.setViewName("admin/main");
		} else mv.setViewName("redirect:/");
		return mv;
	}
	
	@PostMapping("/admin/addLogo")
	public String addLogo(LogoDto logoDto, HttpServletRequest request, Logo logo) {
		String fileName = "logo.png";
		saveFile(attachPath + "/" + fileName, logoDto.getLogo());
		
		logo.setLogoFilename(fileName);
		
		return "admin/main";
	}
	
	private void saveFile(String fileName, MultipartFile file) {
		try {
			file.transferTo(new File(fileName)); 
		} catch(IOException e) {}
	}
}
