package com.my.mealkit.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Service;

import com.my.mealkit.domain.Notice;

public interface NoticeService {
	List<Notice> getNotices();
	List<Notice> getDetailNotices(int noticeNum);
	List<Notice> getAdminNotices();
	List<Notice> getAdminDetailNotices(int noticeNum);
	void addAdminNotice(
			String noticeTitle,
			String noticeContent,
			LocalDate noticeRegDate,
			String noticeImgFileName);
	void fixAdminNotice(Notice notice);
	void delAdminNotice(int noticeNum);
}
