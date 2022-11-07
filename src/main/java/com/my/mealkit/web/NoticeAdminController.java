package com.my.mealkit.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Notice;
import com.my.mealkit.service.NoticeService;

@Controller
@RequestMapping("/admin/notice")
public class NoticeAdminController {
	@Autowired private NoticeService noticeService;
	
	@Value("${attachPath}") private String attachPath;
	
	@RequestMapping("listNotice")
	public String list() {
		return "admin/notice/listNotice";
	}

	@ResponseBody
	@PostMapping("getNotices")
	public List<Notice> getNotices() {
		return noticeService.getAdminNotices();
	}

	@RequestMapping(value ="detailNotice", method=RequestMethod.GET)
	public String detailNotice(Model model, @RequestParam("noticeNum") int noticeNum) {
		List<Notice> noticeList = noticeService.getAdminDetailNotices(noticeNum);
		model.addAttribute("noticeList", noticeList);
		return "admin/notice/detailNotice";
	}
	
	@RequestMapping("addNotice")
	public String addNotice() {
		return "admin/notice/addNotice";
	}
	
	@ResponseBody
	@PostMapping("addNotice")
	public ModelAndView addNotice(Notice notice, ModelAndView mv) throws IOException {
		System.out.println(notice.getNoticeImgFileName());
		try {
			String noticeFileName = notice.getNoticeImgFile().getOriginalFilename();
			
			saveNoticeFile(attachPath + "/" + noticeFileName, notice.getNoticeImgFile());
			notice.setNoticeImgFileName(noticeFileName);
			System.out.println(notice.getNoticeImgFileName());
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
	
	@RequestMapping(value ="fixNotice", method=RequestMethod.GET)
	public String fixNotice(Model model, @RequestParam("noticeNum") int noticeNum) {
		List<Notice> noticeList = noticeService.getNotice(noticeNum);
		System.out.println(noticeList);
		model.addAttribute("noticeList", noticeList);
		return "admin/notice/fixNotice";
	}
	/*
	@ResponseBody
	@PutMapping("fixNotice")
	public ModelAndView fixNotice(Notice notice, ModelAndView mv) throws IOException {
		System.out.println(notice.getNoticeTitle());
		System.out.println(notice.getNoticeNum()+"123456789");
		noticeService.fixAdminNotice(notice);
		mv.setViewName("admin/notice/listNotice");
		return mv;
	}
	*/
	
	@PutMapping("fixNotice")
	public void fixNotice(@RequestBody Notice notice) {
		System.out.println("2222");
		noticeService.fixAdminNotice(notice);
	}
	
	/*
	@ResponseBody
	@PostMapping("/fixNotice")
	public ModelAndView fixNotice(Notice notice, ModelAndView mv) throws IOException {
		System.out.println(notice.getNoticeNum() + "dd");
		try {
			String noticeFileName = notice.getNoticeImgFile().getOriginalFilename();
			
			saveNoticeFile(attachPath + "/" + noticeFileName, notice.getNoticeImgFile());
			notice.setNoticeImgFileName(noticeFileName);
			
			noticeService.fixAdminNotice(notice);
		} catch(NullPointerException e) {}
		mv.setViewName("admin/notice/listNotice");
		return mv;
	}
	*/
	
	@ResponseBody
	@DeleteMapping("del/{noticeNum}")
	public void delNotice(@PathVariable int noticeNum) {
		noticeService.delAdminNotice(noticeNum);
	}
}
