package com.my.mealkit.domain;

import lombok.Data;

@Data
public class Favorite {
	private String userId;
	private int mealkitNum;
	
	private String mealkitName;
	private String mealkitImgFileName;
	private int price;
}
