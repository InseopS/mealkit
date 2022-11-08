package com.my.mealkit.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.my.mealkit.domain.Faq;

public interface FaqMap {
	List<Faq> selectFaq(@Param("faqNum") int faqNum);
	List<Faq> selectFaqs();
	List<Faq> selectAdminFaqs();
	List<Faq> selectAdminDetailFaq(@Param("faqNum") int faqNum);
	void insertAdminFaq(Faq faq);
	void updateAdminFaq(Faq faq);
	void deleteAdminFaq(@Param("faqNum") int faqNum);
}
