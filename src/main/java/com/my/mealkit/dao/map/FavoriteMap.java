package com.my.mealkit.dao.map;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.my.mealkit.domain.Favorite;

public interface FavoriteMap {
	List<Favorite> selectFavorites(String userId);
	List<Favorite> selectFavorite(@Param("userId") String userId, 
						@Param("mealkitNum") int mealkitNum);
	int insertFavorite(Favorite favorite);
	int deleteFavorite(@Param("userId") String userId, 
				@Param("mealkitNum") int mealkitNum);
}
