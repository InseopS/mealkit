package com.my.mealkit.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.my.mealkit.domain.Return;

public interface ReturnMap {
	List<Return> selectReturns();
	List<Return> selectAdminReturns();
	void insertReturn(Return banpum);
	void deleteReturn(@Param("orderNum") int orderNum);
}
