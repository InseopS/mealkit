package com.my.mealkit.dao;

import java.util.List;

import com.my.mealkit.domain.Order;

public interface OrderDao {
	List<Order> selectOrders(String userId);
	List<Order> detailOrders(int orderNum);
	List<Order> selectAdminOrders();
	List<Order> selectAdminOrderCancel();
	void insertOrder(Order order);
	void insertOrderMealkits(int orderMealkitNum, int orderMealkitCount, 
							int orderNum, int mealkitNum);
	void deleteOrder(int orderNum);
}
