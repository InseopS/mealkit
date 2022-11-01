package com.my.mealkit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.mealkit.dao.MealkitDao;
import com.my.mealkit.domain.Mealkit;

@Service
public class MealkitServiceImpl implements MealkitService {
	@Autowired private MealkitDao mealkitDao;

	@Override
	public List<Mealkit> getMealkits() {
		return mealkitDao.selectMealkits();
	}

	@Override
	public List<Mealkit> getDetailMealkit(int mealkitNum) {
		return mealkitDao.detailMealkit(mealkitNum);
	}

	@Override
	public List<Mealkit> getSearchMealkit(String keyword) {
		return mealkitDao.searchMealkit(keyword);
	}

	@Override
	public void addMealkit(Mealkit mealkit) {
		mealkitDao.insertMealkit(mealkit);
	}

	@Override
	public void fixMealkit(Mealkit mealkit) {
		mealkitDao.updateMealkit(mealkit);
	}

	@Override
	public void delMealkit(int mealkitNum) {
		mealkitDao.deleteMealkit(mealkitNum);
	}

}
