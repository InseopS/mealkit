package com.my.mealkit.dao;

import com.my.mealkit.domain.User;

public interface UserDao {
	User selectUser(User user);
	User selectUser(String userId);
	String selectUserId(String userId);
	String findUserId(String email);
	String selectEmail(String email);
	void insertUser(User user);
	void deleteUser(String userId);
}
