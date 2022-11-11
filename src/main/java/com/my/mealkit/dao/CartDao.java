package com.my.mealkit.dao;

import java.util.List;

import com.my.mealkit.domain.Cart;

public interface CartDao {
	List<Cart> selectCarts(String userId);
	List<Cart> selectCart(String userId, int mealkitNum);
	void insertCart(Cart cart);
	void deleteCart(String userId, int mealkitNum);
}
