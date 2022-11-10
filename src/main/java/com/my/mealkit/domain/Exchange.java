package com.my.mealkit.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor 
@Data
public class Exchange {
	private int exchangeNum;
	private String exchangeImgFileName;
	private String exchangeContent;
	private int orderNum;
	private int exchangeReasonCode;
	private int exchangeStatusCode;
	private String exchangeReasonName;
	private String exchangeStatusName;
	private String userId;
	private String mealkitName;
}
