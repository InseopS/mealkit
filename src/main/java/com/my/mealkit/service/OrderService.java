package com.my.mealkit.service;

import java.util.List;

import com.my.mealkit.domain.Order;

public interface OrderService {
	List<Order> getOrders(String userId);
	List<Order> getOrders(int orderNum);
	List<Order> getAdminOrders();
	List<Order> getMealkitNames(int orderNum);
	List<Order> getMealkitPrices(int orderNum);
	Order getOrder(int orderNum);
	void addOrder(Order order);
	void fixOrder(Order order);
}