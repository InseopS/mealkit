package com.my.mealkit.dao;

import java.util.List;

import com.my.mealkit.domain.Order;

public interface OrderDao {
	List<Order> selectOrders(String userId);
	List<Order> detailOrders(int orderNum);
	List<Order> selectAdminOrders();
	List<Order> selectMealkitNames(int orderNum);
	Order selectOrder(int orderNum);
	void insertOrder(Order order);
	void updateOrder(Order order);
}