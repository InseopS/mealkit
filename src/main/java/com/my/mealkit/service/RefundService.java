package com.my.mealkit.service;

import java.util.List;

import com.my.mealkit.domain.Refund;

public interface RefundService {
	List<Refund> getRefunds();
	List<Refund> getAdminRefunds();
	void addRefund(Refund refund);
	void delRefund(int orderNum);
}
