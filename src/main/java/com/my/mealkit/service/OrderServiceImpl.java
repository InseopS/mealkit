package com.my.mealkit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.mealkit.dao.OrderDao;
import com.my.mealkit.domain.Order;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired private OrderDao orderDao;
	
	@Override
	public List<Order> getOrders(String userId) {
		return orderDao.selectOrders(userId);
	}
	
	@Override
	public List<Order> getDetailOrders(int orderNum) {
		return orderDao.detailOrders(orderNum);
	}
	
	@Override
	public List<Order> getAdminOrders() {
		return orderDao.selectAdminOrders();
	}
	
	@Override
	public List<Order> getAdminOrderCancel() {
		return orderDao.selectAdminOrderCancel();
	}
	
	@Override
	public void addOrder(Order order) {
		orderDao.insertOrder(order);
	}
	
	@Override
	public void addOrderMealkits(
			int orderMealkitNum, int orderMealkitCount, int orderNum, int mealkitNum) {
		orderDao.insertOrderMealkits(orderMealkitNum, orderMealkitCount, orderNum, mealkitNum);
	}
	
	@Override
	public void delOrder(int orderNum) {
		orderDao.deleteOrder(orderNum);
	}
}