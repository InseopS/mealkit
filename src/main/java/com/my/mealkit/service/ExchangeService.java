package com.my.mealkit.service;

import java.util.List;

import com.my.mealkit.domain.Exchange;

public interface ExchangeService {
	List<Exchange> getExchanges();
	List<Exchange> getAdminExchanges();
	void addExchange(Exchange exchange);
	void delExchange(int orderNum);
}
