package com.my.mealkit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.my.mealkit.dao.CartDao;
import com.my.mealkit.domain.Cart;

public class CartServiceImpl implements CartService {
@Autowired private CartDao cartDao;
	
	@Override
	public List<Cart> getCarts(String userId) {
		return cartDao.selectCarts(userId);
	}

	@Override
	public List<Cart> getCart(String userId, int mealkitNum) {
		return cartDao.selectCart(userId, mealkitNum);
	}
	
	@Override
	public int addCart(Cart cart) {
		return cartDao.insertCart(cart);
	}

	@Override
	public int delCart(String userId, int mealkitNum) {
		return cartDao.deleteCart(userId, mealkitNum);
	}
}
