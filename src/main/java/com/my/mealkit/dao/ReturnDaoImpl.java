package com.my.mealkit.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.mealkit.dao.map.ReturnMap;
import com.my.mealkit.domain.Return;

@Repository
public class ReturnDaoImpl implements ReturnDao{
	@Autowired private ReturnMap returnMap;
	
	@Override
	public List<Return> selectReturns(){
		return returnMap.selectReturns();
	}
	
	@Override
	public List<Return> selectAdminReturns(){
		return returnMap.selectAdminReturns();
	}
	
	@Override
	public void insertReturn(Return banpum) {
		returnMap.insertReturn(banpum);
	}
	
	@Override
	public void deleteReturn(int orderNum) {
		returnMap.deleteReturn(orderNum);
	}
}