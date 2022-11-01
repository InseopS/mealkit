package com.my.mealkit.service;

import java.util.List;

import com.my.mealkit.domain.Mealkit;

public interface MealkitService {
	List<Mealkit> getMealkits();
	List<Mealkit> getSearchMealkit(String keyword);
	void addMealkit(Mealkit mealkit);
	void fixMealkit(Mealkit mealkit);
	void delMealkit(int mealkitNum);
}
