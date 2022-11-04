package com.my.mealkit.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.my.mealkit.domain.Notice;
import com.my.mealkit.service.NoticeService;

@RestController
@RequestMapping("/admin/notice")
public class NoticeAdminController {
	@Autowired private NoticeService noticeService;
	
	@Value("${attachPath}") private String attachPath;
	
	@RequestMapping("listNotice")
	public ModelAndView list(ModelAndView mv) {
		mv.setViewName("admin/notice/listNotice");
		return mv;
	}
	
	@GetMapping("getNotices")	
	public List<Notice> getNotices() {
		return noticeService.getAdminNotices();
	}
	
	@RequestMapping("detailNotice")
	public ModelAndView detailNotice(ModelAndView mv) {
		mv.setViewName("admin/notice/detailNotice");
		return mv;
	}
	/*
	@RequestMapping(value = "detailNotice", method=RequestMethod.GET)
	public String detailFlower(Model model, @RequestParam("noticeNum") int noticeNum, HttpSession session) {
	    List<Notice> noticeList = noticeService.getAdminDetailNotices(noticeNum);
	    model.addAttribute("noticeList", noticeList);
		return "admin/notice/detailNotice";
	}
	*/
	@RequestMapping("addNotice")
	public ModelAndView add(ModelAndView mv) {
		mv.setViewName("admin/notice/addNotice");
		return mv;
	}
	
	/*
	@PostMapping("add")
	public ModelAndView addNotice(Notice notice, ModelAndView mv) throws IOException {
		try {
			String noticeFileName = notice.getNoticeImgFile().getOriginalFilename();
			
			saveNoticeFile(attachPath + "/" + noticeFileName, notice.getNoticeImgFile());
			notice.setNoticeImgFileName(noticeFileName);
			
			noticeService.addAdminNotice(notice);
		} catch(NullPointerException e) {}
		
		mv.setViewName("admin/notice/listNotice");
		return mv;
	}
	*/
	/*
	@PostMapping("add")
	public void addNotice(Notice notice) throws IOException {
		try {
			String noticeFileName = notice.getNoticeImgFile().getOriginalFilename();
			
			saveNoticeFile(attachPath + "/" + noticeFileName, notice.getNoticeImgFile());
			notice.setNoticeImgFileName(noticeFileName);
			
			noticeService.addAdminNotice(notice);
		} catch(NullPointerException e) {}
		
		//mv.setViewName("admin/notice/listNotice");
		//return mv;
	}
	*/
	
	@PostMapping("add")
	public void addNotice(Notice notice) {
		noticeService.addAdminNotice(notice);
	}
	
	/*
	private void saveNoticeFile(String noticeFileName, MultipartFile noticeFile) {
		try {
			noticeFile.transferTo(new File(noticeFileName));
		} catch(IOException e) {}
	}
	*/
	/*
	@PostMapping("add")
	public void addNotice(Notice notice) {
		noticeService.addAdminNotice(notice);
	}
	*/
	
	@RequestMapping("fixNotice")
	public ModelAndView fixNotice(ModelAndView mv) {
		mv.setViewName("admin/notice/fixNotice");
		return mv;
	}
	
	@PutMapping("fix")
	public void fix(@RequestBody Notice notice, HttpServletRequest request, HttpServletResponse response) {
		noticeService.fixAdminNotice(notice);
	}
	
	
	@DeleteMapping("del/{noticeNum}")
	public void delNotice(@PathVariable int noticeNum) {
	   noticeService.delAdminNotice(noticeNum);
	}
}
