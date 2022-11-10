package com.my.mealkit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.mealkit.dao.RefundDao;
import com.my.mealkit.domain.Refund;

@Repository
public class RefundServiceImpl implements RefundService{
	@Autowired private RefundDao refundDao;
	
	@Override
	public List<Refund> getRefunds() {
		return refundDao.selectRefunds();
	}
	
	@Override
	public List<Refund> getAdminRefunds() {
		return refundDao.selectAdminRefunds();
	}
	
	@Override
	public void addRefund(Refund refund) {
		refundDao.insertRefund(refund);
	}
	
	@Override
	public void delRefund(int orderNum) {
		refundDao.deleteRefund(orderNum);
	}
}
