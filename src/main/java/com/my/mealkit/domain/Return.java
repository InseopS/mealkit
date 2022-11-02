package com.my.mealkit.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Return {
	private int returnNum;
	private String returnImgFileName;
	private String returnContent;
	private int orderNum;
	private int returnReasonCode;
	private int returnStatusCode;
}
