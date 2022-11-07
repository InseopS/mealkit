package com.my.mealkit.dao.map;

import java.util.List;

import com.my.mealkit.domain.DeclarationDto;

public interface DeclarationMap {
	List<DeclarationDto> selectDeclarations();
}