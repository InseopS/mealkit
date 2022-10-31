package com.my.mealkit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.mealkit.dao.UserDao;
import com.my.mealkit.domain.User;

@Service
public class UserServiceImpl implements UserService{
	@Autowired private UserDao userDao;

	@Override
	public boolean loginVerify(User user) {
		boolean isGood = false;
		if(userDao.selectUser(user) != null) isGood = true;
		return isGood;
	}
}

