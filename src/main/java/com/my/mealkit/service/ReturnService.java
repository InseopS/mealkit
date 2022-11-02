package com.my.mealkit.service;

import java.util.List;

import com.my.mealkit.domain.Return;

public interface ReturnService {
	List<Return> getReturns();
	List<Return> getAdminReturns();
	void addReturn(Return banpum);
	void delReturn(int orderNum);
}
