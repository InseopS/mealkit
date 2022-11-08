package com.my.mealkit.service;

import java.util.List;

import com.my.mealkit.domain.Favorite;

public interface FavoriteService {
	List<Favorite> getFavorites(String userId);
	List<Favorite> getFavorite(String userId, int mealkitNum);
	int addFavorite(Favorite favorite);
	int delFavorite(String userId, int mealkitNum);
}
