package com.my.mealkit.dao;

import java.util.List;

import com.my.mealkit.domain.Exchange;

public interface ExchangeDao {
	List<Exchange> selectExchanges();
	List<Exchange> selectAdminExchanges();
	void insertExchange(Exchange exchange);
	void deleteExchange(int orderNum);
}