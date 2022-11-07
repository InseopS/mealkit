package com.my.mealkit.dao.map;

import java.util.List;

import com.my.mealkit.domain.Return;

public interface ReturnMap {
	List<Return> selectReturns();
	List<Return> selectAdminReturns();
	void insertReturn(Return returnMealkit);
	void deleteReturn(int orderNum);
}
