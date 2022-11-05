package com.my.mealkit.dao.map;

import org.apache.ibatis.annotations.Param;

import com.my.mealkit.domain.User;

public interface UserMap {
	User selectUser(User user);
	String selectUserId(@Param("userId") String userId);
	String findUserId(@Param("email") String email);
	String selectEmail(@Param("email") String email);
	void insertUser(User user);
	void deleteUser(String userId);
}