package com.my.mealkit.domain;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Refund {
	private int refundNum;
	private MultipartFile refundImgFile;
	private String refundImgFileName;
	private String refundContent;
	private int orderNum;
	private int refundReasonCode;
	private String refundReasonName;
	private int refundStatusCode;
	private String refundStatusName;
	private String userId;
	private String mealkitName;
}
