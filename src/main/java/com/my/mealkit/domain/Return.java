package com.my.mealkit.domain;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Return {
	private int returnNum;
	private MultipartFile returnImgFile;
	private String returnImgFileName;
	private String returnContent;
	private int orderNum;
	private int returnReasonCode;
	private int returnStatusCode;
}
