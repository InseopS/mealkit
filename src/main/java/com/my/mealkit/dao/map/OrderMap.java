package com.my.mealkit.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.my.mealkit.domain.Order;

public interface OrderMap {
	List<Order> selectOrders(@Param("userId") String userId);
	List<Order> detailOrders(@Param("orderNum") int orderNum);
	List<Order> selectAdminOrders();
	List<Order> selectMealkitNames(@Param("orderNum") int orderNum);
	void insertOrder(Order order);
	void deleteOrder(int orderNum);
}