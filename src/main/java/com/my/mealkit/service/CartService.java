package com.my.mealkit.service;

import java.util.List;

import com.my.mealkit.domain.Cart;

public interface CartService {
	List<Cart> getCarts(String userId);
	List<Cart> getCart(String userId, int mealkitNum);
	int addCart(Cart cart);
	int delCart(String userId, int mealkitNum);
}
