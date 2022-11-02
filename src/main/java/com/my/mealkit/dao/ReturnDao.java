package com.my.mealkit.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.my.mealkit.domain.Return;

public interface ReturnDao {
	List<Return> selectReturns();
	List<Return> selectAdminReturns();
	void insertReturn(Return banpum);
	void deleteReturn(int orderNum);
}
