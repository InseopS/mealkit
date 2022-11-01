package com.my.mealkit.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Mealkit;
import com.my.mealkit.service.MealkitService;

@Controller
@RequestMapping("/admin/mealkit")
public class MealkitAdminController {
	@Autowired private MealkitService mealkitService;
	
	@Value("${attachPath}") private String attachPath;
	
	@RequestMapping("/listMealkit")
	public String listMealkit() {
		return "admin/mealkit/listMealkit";
	}
	
	@RequestMapping("/addMealkit")
	public String addMealkit() {
		return "admin/mealkit/addMealkit";
	}
	
	@RequestMapping("fixMealkit")
	public String fixMealkit() {
		return "admin/mealkit/fixMealkit";
	}
	
	@ResponseBody
	@PostMapping("/listMealkit")
	public List<Mealkit> getMealkits() {
		return mealkitService.getMealkits();
	}
	
	@ResponseBody
	@PostMapping("/addMealkit")
	public ModelAndView addMealkit(Mealkit mealkit, ModelAndView mv) throws IOException {
		try {
			String mealkitFileName = mealkit.getMealkitImgfile().getOriginalFilename();
			
			saveMealkitFile(attachPath + "/" + mealkitFileName, mealkit.getMealkitImgfile());
			mealkit.setMealkitImgfileName(mealkitFileName);
			
			mealkitService.addMealkit(mealkit);
		} catch(NullPointerException e) {}
		
		mv.setViewName("admin/mealkit/listMealkit");
		return mv;
	}
	
	private void saveMealkitFile(String mealkitFileName, MultipartFile mealkitFile) {
		try {
			mealkitFile.transferTo(new File(mealkitFileName));
		} catch(IOException e) {}
	}
	
	@ResponseBody
	@PostMapping("/fix")
	public void fixMealkit(@RequestBody Mealkit mealkit, HttpServletRequest request, HttpServletResponse response) {
		mealkitService.fixMealkit(mealkit);
	}
	
	@ResponseBody
	@DeleteMapping("del/{mealkitNum}")
	public void delMealkit(@PathVariable int mealkitNum) {
		mealkitService.delMealkit(mealkitNum);
	}
}
