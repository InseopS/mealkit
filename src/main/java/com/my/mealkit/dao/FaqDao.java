package com.my.mealkit.dao;

import java.util.List;

import com.my.mealkit.domain.Faq;

public interface FaqDao {
	List<Faq> selectFaqs();
	List<Faq> selectAdminFaqs();
	List<Faq> selectAdminDetailFaq(int faqNum);
	void insertAdminFaq(Faq faq);
	void updateAdminFaq(Faq faq);
	void deleteAdminFaq(int faqNum);
}
