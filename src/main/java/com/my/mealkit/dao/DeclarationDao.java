package com.my.mealkit.dao;

import java.util.List;

import com.my.mealkit.domain.DeclarationDto;

public interface DeclarationDao {
	List<DeclarationDto> selectDeclarations();
	List<DeclarationDto> selectDeclarations(String userId);
	List<DeclarationDto> selectSearchDeclarations(String keyword, String category);
}
