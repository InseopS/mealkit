package com.my.mealkit.domain;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor 
public class Exchange {
	private int exchangeNum;
	private String exchangeImgFileName;
	private MultipartFile exchangeImgfile;
	private String exchangeContent;
	private int orderNum;
	private int exchangeReasonCode;
	private int exchangeStatusCode;
	private String exchangeReasonName;
	private String exchangeStatusName;
	private String userId;
	private String mealkitName;
}
