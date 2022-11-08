package com.my.mealkit.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.my.mealkit.domain.Cart;

public interface CartMap {
	List<Cart> selectCarts(@Param("userId") String userId);
	List<Cart> selectCart(@Param("userId") String userId, 
						@Param("mealkitNum") int mealkitNum);
	int insertCart(Cart cart);
	int deleteCart(@Param("userId") String userId, 
				@Param("mealkiNum") int mealkitNum);
}
