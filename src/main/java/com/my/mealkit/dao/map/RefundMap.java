package com.my.mealkit.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.my.mealkit.domain.Refund;

public interface RefundMap {
	List<Refund> selectRefunds(@Param("userId") String userId);
	List<Refund> selectAdminRefunds();
	List<Refund> selectMealkitNames(@Param("refundNum") int refundNum); 
	void insertRefund(Refund refund);
	void updateRefundStatus(int orderNum);
}
