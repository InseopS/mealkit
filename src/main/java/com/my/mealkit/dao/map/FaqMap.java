package com.my.mealkit.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.my.mealkit.domain.Faq;

public interface FaqMap {
	List<Faq> selectFaqs();
	List<Faq> selectAdminFaqs();
	List<Faq> selectAdminDetailFaq(@Param("FaqNum") int faqNum);
	void insertAdminFaq(Faq faq);
	void updateAdminFaq(Faq faq);
	void deleteAdminFaq(@Param("faqNum") int faqNum);
}
