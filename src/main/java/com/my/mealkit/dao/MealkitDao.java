package com.my.mealkit.dao;

import java.util.List;

import com.my.mealkit.domain.Mealkit;

public interface MealkitDao {
	List<Mealkit> selectMealkits();
	List<Mealkit> detailMealkit(int mealkitNum);
	List<Mealkit> searchMealkit(String keyword);
	void insertMealkit(Mealkit mealkit);
	void updateMealkit(Mealkit mealkit);
	void deleteMealkit(int mealkitNum);
}
