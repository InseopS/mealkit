package com.my.mealkit.service;

import java.util.List;

import com.my.mealkit.domain.DeclarationDto;

public interface DeclarationService {
	List<DeclarationDto> getDeclarations();
	List<DeclarationDto> getDeclarations(String userId);
	List<DeclarationDto> getSearchDeclarations(String keyword, String category);
}
