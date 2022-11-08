package com.my.mealkit.dao.map;

import java.util.List;

import com.my.mealkit.domain.Exchange;

public interface ExchangeMap {
	List<Exchange> selectExchanges();
	List<Exchange> selectAdminExchanges();
	void insertExchange(Exchange exchange);
	void deleteExchange(int orderNum);
}
