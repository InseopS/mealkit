package com.my.mealkit.dao.map;

import java.util.List;

import com.my.mealkit.domain.Refund;

public interface RefundMap {
	List<Refund> selectRefunds();
	List<Refund> selectAdminRefunds();
	void insertRefund(Refund refund);
	void deleteRefund(int orderNum);
}
