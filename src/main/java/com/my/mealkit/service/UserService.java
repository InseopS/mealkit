package com.my.mealkit.service;

import java.util.List;

import com.my.mealkit.domain.User;

public interface UserService {
	boolean loginVerify(User user);
	boolean idDoubleCheck(String userId);
	boolean emailDoubleCheck(String email);
	String findUserId(String email);
<<<<<<< HEAD
=======
	List<User> getUsers();
>>>>>>> refs/heads/dev
	User getUser(String userId);
	void addUser(User user);
<<<<<<< HEAD
=======
	void resetPassword(String userId, String email, String password);
	void fixUser(User user);
>>>>>>> refs/heads/dev
	void delUser(String userId);
}