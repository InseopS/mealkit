package com.my.mealkit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.mealkit.dao.ExchangeDao;
import com.my.mealkit.domain.Exchange;

@Service
public class ExchangeServiceImpl implements ExchangeService {
	@Autowired private ExchangeDao exchangeDao;
	
	@Override
	public List<Exchange> getExchanges() {
		return exchangeDao.selectExchanges();
	}
	
	@Override
	public List<Exchange> getAdminExchanges() {
		return exchangeDao.selectAdminExchanges();
	}
	
	@Override
	public void addExchange(Exchange exchange) {
		exchangeDao.insertExchange(exchange);
	}
	
	@Override
	public void delExchange(int orderNum) {
		exchangeDao.deleteExchange(orderNum);
	}
}
