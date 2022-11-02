package com.my.mealkit.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.my.mealkit.dao.map.ExchangeMap;
import com.my.mealkit.domain.Exchange;

public class ExchangeDaoImpl implements ExchangeDao {
	@Autowired private ExchangeMap exchangeMap;
	
	@Override
	public List<Exchange> selectExchanges() {
		return exchangeMap.selectExchanges();
	}
	
	@Override
	public List<Exchange> selectAdminExchanges() {
		return exchangeMap.selectAdminExchanges();
	}
	
	@Override
	public void insertExchange(Exchange exchange) {
		exchangeMap.insertExchange(exchange);
	}
	
	@Override
	public void deleteExchange(int orderNum) {
		exchangeMap.deleteExchange(orderNum);
	}
}
