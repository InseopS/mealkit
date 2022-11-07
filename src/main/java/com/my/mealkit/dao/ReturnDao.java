package com.my.mealkit.dao;

import java.util.List;

import com.my.mealkit.domain.Return;

public interface ReturnDao {
	List<Return> selectReturns();
	List<Return> selectAdminReturns();
	void insertReturn(Return returnMealkit);
	void deleteReturn(int orderNum);
}
