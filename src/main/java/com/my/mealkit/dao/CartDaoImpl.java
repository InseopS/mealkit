package com.my.mealkit.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.mealkit.dao.map.CartMap;
import com.my.mealkit.domain.Cart;

@Repository
public class CartDaoImpl implements CartDao {
	@Autowired private CartMap cartMap;
	
	@Override
	public List<Cart> selectCarts(String userId) {
		return cartMap.selectCarts(userId);
	}

	@Override
	public List<Cart> selectCart(String userId, int mealkitNum) {
		return cartMap.selectCart(userId, mealkitNum);
	}
	
	@Override
	public int insertCart(Cart cart) {
		return cartMap.insertCart(cart);
	}

	@Override
	public int deleteCart(String userId, int mealkitNum) {
		return cartMap.deleteCart(userId, mealkitNum);
	}
}
