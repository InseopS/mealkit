package com.my.mealkit.dao.map;

import java.time.LocalDate;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.my.mealkit.domain.Notice;

public interface NoticeMap {
	List<Notice> selectNotices();
	List<Notice> selectDetailNotices(@Param("noticeNum") int noticeNum);
	List<Notice> selectAdminNotices();
	List<Notice> selectAdminDetailNotices(@Param("noticeNum") int noticeNum);
	void insertAdminNotice(
			@Param("noticeTitle") String noticeTitle,
			@Param("noticeContent") String noticeContent,
			@Param("noticeRegDate") LocalDate noticeRegDate,
			@Param("noticeImgFileName") String noticeImgFileName);
	void updateAdminNotice(Notice notice);
	void deleteAdminNotice(@Param("noticeNum") int noticeNum);
}
