package com.my.mealkit.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Notice;
import com.my.mealkit.service.NoticeService;

@RestController
@RequestMapping("/admin/notice")
public class NoticeAdminController {
	@Autowired private NoticeService noticeService;
	
	@Value("${attachPath}") private String attachPath;
	
	@GetMapping("listNotice")
	public ModelAndView list(ModelAndView mv) {
		mv.setViewName("admin/notice/listNotice");
		return mv;
	}
	
	@GetMapping("getNotice")	
	public List<Notice> getNotices() {
		return noticeService.getAdminNotices();
	}
	
	@RequestMapping("detailNotice")
	public String detailNotice() {
		return "admin/notice/detailNotice";
	}
	
	@RequestMapping(value = "/detailNotice", method=RequestMethod.GET)
	public String detailFlower(Model model, @RequestParam("noticeNum") int noticeNum, HttpSession session) {
	    List<Notice> noticeList = noticeService.getAdminDetailNotices(noticeNum);
	    model.addAttribute("noticeList", noticeList);
		return "admin/notice/detailNotice";
	}
	
	@GetMapping("addNotice")
	public ModelAndView addNotice(ModelAndView mv) {
		mv.setViewName("admin/notice/addNotice");
		return mv;
	}
	
	@PostMapping("add")
	public ModelAndView add(Notice notice, ModelAndView mv) throws IOException {
		try {
			String noticeFileName = notice.getNoticeImgFile().getOriginalFilename();
			
			saveNoticeFile(attachPath + "/" + noticeFileName, notice.getNoticeImgFile());
			notice.setNoticeImgFileName(noticeFileName);
			
			noticeService.addAdminNotice(notice);
		} catch(NullPointerException e) {}
		
		mv.setViewName("admin/notice/listNotice");
		return mv;
	}
	
	private void saveNoticeFile(String noticeFileName, MultipartFile noticeFile) {
		try {
			noticeFile.transferTo(new File(noticeFileName));
		} catch(IOException e) {}
	}
	/*
	@PostMapping("add")
	public void addNotice(Notice notice) {
		noticeService.addAdminNotice(notice);
	}
	*/
	@RequestMapping("fixNotice")
	public String fixNotice() {
		return "admin/notice/fixNotice";
	}
	
	
	@DeleteMapping("del/{noticeNum}")
	public void delNotice(@PathVariable int noticeNum) {
	   noticeService.delAdminNotice(noticeNum);
	}
}
