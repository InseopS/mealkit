package com.my.mealkit.dao;

import java.util.List;

import com.my.mealkit.domain.Notice;

public interface NoticeDao {
	List<Notice> selectNotice(int noticeNum);
	List<Notice> searchNotice(String keyword);
	List<Notice> selectNotices();
	List<Notice> selectDetailNotices(int noticeNum);
	List<Notice> selectAdminNotices();
	List<Notice> selectAdminDetailNotices(int noticeNum);
	void insertAdminNotice(Notice notice);
	void updateAdminNotice(Notice notice);
	void deleteAdminNotice(int noticeNum);
}
