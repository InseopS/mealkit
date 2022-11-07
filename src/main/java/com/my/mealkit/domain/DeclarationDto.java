package com.my.mealkit.domain;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor 
public class DeclarationDto {
	private int declarationNum;
	private String declarationTitle;
	private LocalDate declarationRegdate;
	private int declarationStatusCode;
	private String declarationStatusName;
}