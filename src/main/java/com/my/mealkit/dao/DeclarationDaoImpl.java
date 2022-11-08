package com.my.mealkit.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.mealkit.dao.map.DeclarationMap;
import com.my.mealkit.domain.DeclarationDto;

@Repository
public class DeclarationDaoImpl implements DeclarationDao{
	@Autowired private DeclarationMap declarationMap;
	
	public List<DeclarationDto> selectDeclarations() {
		return declarationMap.selectDeclarations();
	}
	
	public List<DeclarationDto> selectDeclarations(String userId) {
		return declarationMap.selectUserDeclarations(userId);
	}
}
