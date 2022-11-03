package com.my.mealkit.service;

import java.util.List;

import com.my.mealkit.domain.Order;

public interface OrderService {
	List<Order> getOrders(String userId); // 주문내역
	List<Order> getDetailOrders(int orderNum); // 주문상세
	List<Order> getAdminOrders(); // 어드민
	List<Order> getAdminOrderCancel(); // 어드민
	void addOrder(Order order); // 주문
	void addOrderMealkits(
			int orderMealkitNum, int orderMealkitCount, int orderNum, int mealkitNum); // 주문밀키트
	void delOrder(int orderNum); // 주문취소
}
