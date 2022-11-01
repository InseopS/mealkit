package com.my.mealkit.domain;

import lombok.Data;

@Data
public class Cart {
	private String userId;
	private int mealkitNum;
	private int mealkitCount;
}
