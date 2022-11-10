package com.my.mealkit.service;

import java.util.List;

import com.my.mealkit.domain.Order;
import com.my.mealkit.domain.User;

public interface OrderService {
	List<Order> getOrders(String userId);
	List<Order> getDetailOrders(int orderNum);
	List<Order> getAdminOrders();
	void addOrder(Order order, User user);
	void addOrderMealkits(
			int orderMealkitNum, int orderMealkitCount, int orderNum, int mealkitNum);
	void delOrder(int orderNum);
}
