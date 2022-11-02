package com.my.mealkit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.mealkit.dao.ReturnDao;
import com.my.mealkit.domain.Return;

@Repository
public class ReturnServiceImpl implements ReturnService{
	@Autowired private ReturnDao returnDao;
	
	@Override
	public List<Return> getReturns() {
		return returnDao.selectReturns();
	}
	
	@Override
	public List<Return> getAdminReturns() {
		return returnDao.selectAdminReturns();
	}
	
	@Override
	public void addReturn(Return banpum) {
		returnDao.insertReturn(banpum);
	}
	
	@Override
	public void delReturn(int orderNum) {
		returnDao.deleteReturn(orderNum);
	}
}
