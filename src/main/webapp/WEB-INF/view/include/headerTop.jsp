<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<header>
    <nav class='navbar fixed-top navbar-light bg-light navbar-expand-sm p-0'>
        <div class='container-fluid'>
            <a class='navbar-brand ml-2' href='<%=request.getContextPath()%>/'>
                <div id='logo'>로고이미지</div>
            </a>

			<div>
				<p class='navbar-title flex-fill mr-1 my-0' style="font-family: 'Nanum Pen Script', cursive;">집밥을 특별하게</p>
				<p class='navbar-title flex-fill mr-1 my-0' style="font-family: 'Nanum Pen Script', cursive;">쉐프의 밀키트</p>
			</div>

            <a class='text-dark flex-fill text-right mr-3' href='<%=request.getContextPath()%>/cart/listCart'>
                <span class='material-icons'>shopping_cart</span>
            </a>

            <button class='navbar-toggler mr-4' type='button' data-toggle='collapse' data-target='#menu'>
                <span class='navbar-toggler-icon'></span>
            </button>
        </div>