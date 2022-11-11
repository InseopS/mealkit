package com.my.mealkit.service;

import java.util.List;

import com.my.mealkit.domain.Order;

public interface OrderService {
	List<Order> getOrders(String userId);
	List<Order> getDetailOrders(int orderNum);
	List<Order> getAdminOrders();
	List<Order> getMealkitNames(int orderNum);
	void addOrder(Order order);
	void delOrder(int orderNum);
}