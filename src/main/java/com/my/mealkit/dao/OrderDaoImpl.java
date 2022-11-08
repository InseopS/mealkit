package com.my.mealkit.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.mealkit.dao.map.OrderMap;
import com.my.mealkit.domain.Order;
import com.my.mealkit.domain.User;


@Repository
public class OrderDaoImpl implements OrderDao {
	@Autowired private OrderMap orderMap;
	
	@Override
	public List<Order> selectOrders(String userId) {
		return orderMap.selectOrders(userId);
	}
	
	@Override
	public List<Order> detailOrders(int orderNum) {
		return orderMap.detailOrders(orderNum);
	}
	
	@Override
	public List<Order> selectAdminOrders() {
		return orderMap.selectAdminOrders();
	}
	
	@Override
	public List<Order> selectAdminOrderCancel() {
		return orderMap.selectAdminOrderCancel();
	}
	
	@Override
	public void insertOrder(Order order, User user) {
		orderMap.insertOrder(order, user);
	}
	
	@Override
	public void insertOrderMealkits(
			int orderMealkitNum, int orderCount, int orderNum, int mealkitNum) {
		orderMap.insertOrderMealkits(orderMealkitNum, orderCount, orderNum, mealkitNum);
	}
	
	@Override
	public void deleteOrder(int orderNum) {
		orderMap.deleteOrder(orderNum);
	}
}