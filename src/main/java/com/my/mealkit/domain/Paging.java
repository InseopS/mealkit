package com.my.mealkit.domain;

public class Paging {
	private int page = 1; 	// 현재 페이지 (get)
	private int totleCount; // row 전체 수 (get)
	private int beginPage; 	// 출력시작
	private int endPage; 	// 출력 끝
	private int displayRow = 5;	 // 한 페이지에 몇 개의 로우 ( 선택 set )
	private int displayPage = 5; //한 페이지에 몇 개의 페이지 ( 선택 set )
	boolean prev;
	boolean next;
}
