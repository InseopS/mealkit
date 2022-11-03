package com.my.mealkit.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.my.mealkit.domain.Order;

public interface OrderMap {
	List<Order> selectOrders(@Param("userId") String userId); // 주문내역
	List<Order> detailOrders(@Param("orderNum") int orderNum); // 주문상세
	List<Order> selectAdminOrders(); // 어드민
	List<Order> selectAdminOrderCancel(); // 어드민
	void insertOrder(Order order); // 주문
	void insertOrderMealkits(
			@Param("orderMealkitNum") int orderMealkitNum, 
			@Param("orderCount") int orderCount, 
			@Param("oderNum") int orderNum, 
			@Param("mealkitNum") int mealkitNum); // 주문밀키트
	void deleteOrder(int orderNum); // 주문취소
}
