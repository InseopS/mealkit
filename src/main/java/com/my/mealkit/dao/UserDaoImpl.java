package com.my.mealkit.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.mealkit.dao.map.UserMap;
import com.my.mealkit.domain.User;

@Repository
public class UserDaoImpl implements UserDao {
	@Autowired private UserMap userMap;
	
	@Override
	public User selectUser(User user) {
		return userMap.selectUser(user);
	}

	@Override
	public String selectUserId(String userId) {
		return userMap.selectUserId(userId);
	}

	@Override
	public String selectEmail(String email) {
		return userMap.selectEmail(email);
	}
}
