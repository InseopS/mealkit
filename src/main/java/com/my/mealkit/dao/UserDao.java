package com.my.mealkit.dao;

import java.util.List;

import com.my.mealkit.domain.User;

public interface UserDao {
	List<User> selectUsers();
	User selectUser(User user);
	User selectUser(String userId);
	String selectUserId(String userId);
	String findUserId(String email);
	String selectEmail(String email);
	void insertUser(User user);
<<<<<<< HEAD
=======
	void updatePassword(String userId, String email, String password);
	void updateUser(User user);
>>>>>>> refs/heads/dev
	void deleteUser(String userId);
}
