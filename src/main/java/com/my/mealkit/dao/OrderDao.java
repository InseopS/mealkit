package com.my.mealkit.dao;

import java.util.List;

import com.my.mealkit.domain.Order;
import com.my.mealkit.domain.User;

public interface OrderDao {
	List<Order> selectOrders(String userId);
	List<Order> detailOrders(int orderNum);
	List<Order> selectAdminOrders();
	void insertOrder(Order order, User user);
	void insertOrderMealkits(int orderMealkitNum, int orderMealkitCount, 
							int orderNum, int mealkitNum);
	void deleteOrder(int orderNum);
}
