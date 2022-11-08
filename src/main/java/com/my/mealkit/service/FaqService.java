package com.my.mealkit.service;

import java.util.List;

import com.my.mealkit.domain.Faq;

public interface FaqService {
	List<Faq> getFaq(int faqNum);
	List<Faq> getFaqs();
	List<Faq> getAdminFaqs();
	List<Faq> getAdminDetailFaq(int faqNum);
	void addAdminFaq(Faq faq);
	void fixAdminFaq(Faq faq);
	void delAdminFaq(int faqNum);
}
