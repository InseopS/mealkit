package com.my.mealkit.dao.map;

import org.apache.ibatis.annotations.Param;

import com.my.mealkit.domain.User;

public interface UserMap {
	User selectUser(User user);
	String selectUserId(@Param("userId") String userId);
	String selectEmail(@Param("email") String email);
}