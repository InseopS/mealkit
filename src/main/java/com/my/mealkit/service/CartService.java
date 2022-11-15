package com.my.mealkit.service;

import java.util.List;

import com.my.mealkit.domain.Cart;

public interface CartService {
	List<Cart> getCarts(String userId);
	List<Cart> getCart(String userId, int mealkitNum);
	void addCart(Cart cart);
	void delCart(String userId, int mealkitNum);
	void emptyCart(String userId);
}
