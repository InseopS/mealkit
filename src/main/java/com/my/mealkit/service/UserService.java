package com.my.mealkit.service;

import com.my.mealkit.domain.User;

public interface UserService {
	boolean loginVerify(User user);
	boolean idDoubleCheck(String userId);
	boolean emailDoubleCheck(String email);
	void addUser(User user);
}