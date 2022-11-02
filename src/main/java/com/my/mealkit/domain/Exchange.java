package com.my.mealkit.domain;

import lombok.Data;

@Data
public class Exchange {
	private int exchangeNum;
	private String exchangeImgFileName;
	private String exchangeContent;
	private int orderNum;
	private int exchangeReasonCode;
	private int exchangeStatusCode;
}
