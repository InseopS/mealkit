package com.my.mealkit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.mealkit.dao.DeclarationDao;
import com.my.mealkit.domain.DeclarationDto;
import com.my.mealkit.domain.User;

@Service
public class DeclarationServiceImpl implements DeclarationService{
	@Autowired private DeclarationDao declarationDao;
	
	@Override
	public List<DeclarationDto> getDeclarations() {
		return declarationDao.selectDeclarations();
	}
	
	@Override
	public List<DeclarationDto> getDeclarations(String userId) {
		return declarationDao.selectDeclarations(userId);
	}
	
	@Override
	public List<DeclarationDto> getSearchDeclarations(String keyword, String category) {
		return declarationDao.selectSearchDeclarations(keyword, category);
	}
}
