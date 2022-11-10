package com.my.mealkit.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.my.mealkit.domain.Order;
import com.my.mealkit.domain.User;

public interface OrderMap {
	List<Order> selectOrders(@Param("userId") String userId);
	List<Order> detailOrders(@Param("orderNum") int orderNum);
	List<Order> selectAdminOrders();
	void insertOrder(Order order, User user);
	void insertOrderMealkits(
			@Param("orderMealkitNum") int orderMealkitNum, 
			@Param("orderMealkitCount") int orderMealkitCount, 
			@Param("orderNum") int orderNum, 
			@Param("mealkitNum") int mealkitNum);
	void deleteOrder(int orderNum);
}
