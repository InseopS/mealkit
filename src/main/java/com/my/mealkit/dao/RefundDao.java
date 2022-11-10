package com.my.mealkit.dao;

import java.util.List;

import com.my.mealkit.domain.Refund;

public interface RefundDao {
	List<Refund> selectRefunds();
	List<Refund> selectAdminRefunds();
	List<Refund> selectMealkitNames(int refundNum);
	void insertRefund(Refund refund);
	void deleteRefund(int orderNum);
}
