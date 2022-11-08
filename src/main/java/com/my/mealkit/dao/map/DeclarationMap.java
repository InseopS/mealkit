package com.my.mealkit.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.my.mealkit.domain.DeclarationDto;
import com.my.mealkit.domain.User;

public interface DeclarationMap {
	List<DeclarationDto> selectDeclarations();
	List<DeclarationDto> selectUserDeclarations(@Param("userId") String userId);
	List<DeclarationDto> selectSearchDeclarations(@Param("keyword") String keyword, @Param("category") String category);
}