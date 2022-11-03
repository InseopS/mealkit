package com.my.mealkit.dao;

import com.my.mealkit.domain.User;

public interface UserDao {
	User selectUser(User user);
	String selectUserId(String userId);
	String selectEmail(String email);
}
