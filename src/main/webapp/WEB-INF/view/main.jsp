<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang='ko'>
<head>
<title>EZEN MEALKIT</title>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://code.jquery.com/jquery-3.6.0.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js'></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js'></script>
<link rel='stylesheet' href='http://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css' />
<link href='https://fonts.googleapis.com/icon?family=Material+Icons' rel='stylesheet'>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel='stylesheet' type='text/css' href='../res/lib.css'>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<style>
	#event_list a {
		color: rgb(0, 0, 0);
	}
	
	#footer_text {
		margin-bottom: 3.5rem;
		font-size: x-small;
	}

	#footer_text a {
		color: white;
	}

	#footer_text dl dt {
		float: left;
	}

	#footer_ul {
		list-style: none;
		padding: 0px;
	}

	#footer_ul li {
		float: left;
	}

	footer span {
		color: green;
	}

	dd {
		margin-top: 0;
		margin-bottom: 0;
	}

	dt {
		margin-top: 0;
		margin-bottom: 0;
	}

	dl {
		margin-top: 0;
		margin-bottom: 0;
	}
</style>
</head>
<header>
    <nav class='navbar fixed-top navbar-light bg-light navbar-expand-sm p-0'>
        <div class='container-fluid'>
            <a class='navbar-brand ml-2' href='/'>
                <div id='logo'>로고이미지</div>
            </a>
			<div>
				<p class='navbar-title flex-fill mr-1 my-0' style="font-family: 'Nanum Pen Script', cursive;">집밥을 특별하게</p>
				<p class='navbar-title flex-fill mr-1 my-0' style="font-family: 'Nanum Pen Script', cursive;">쉐프의 밀키트</p>
			</div>

            <a class='text-dark flex-fill text-right mr-3' href='cart/01.html'>
				<span class="material-icons">shopping_cart</span>
			</a>

            <button class='navbar-toggler mr-4' type='button' data-toggle='collapse' data-target='#menu'>
                <span class='navbar-toggler-icon'></span>
            </button>
        </div>

        <div class='collapse navbar-collapse' id='menu'>
            <ul class='navbar-nav mr-auto'>
                <li class='nav-item active'>
                <%
                	if(session.getAttribute("userId") == null) {
                %>
                		<a class='nav-link' href='user/login'>로그인</a>
                <%	
                	}                
                	else {
               	%>
               			<a class='nav-link' href='user/logout'>로그아웃</a>
               	<%	
                }
                	%>
                </li>
                <li class='nav-item active'>
                    <a class='nav-link' href='notice/01.html'>공지사항</a>
                </li>
                <li class='nav-item dropdown'>
                    <a class='nav-link dropdown-toggle' data-toggle='dropdown'>고객센터</a>
                    <div class='dropdown-menu'>
                        <a class='dropdown-item' href='faq/01.html'>자주묻는질문</a>
                        <a class='dropdown-item' href='qeustion/01.html'>1:1문의</a>
                        <div class='dropdown-divider'></div>
                        <a class='dropdown-item' href='declaration/02.html'>신고</a>
                    </div>
                </li>
            </ul>
            <form class='form-inline my-2 my-lg-0' action='mealkit/03.html'>
                <input type='search' class='form-control mr-sm-2' placeholder='상품을 입력해주세요.'/>
                <button type='submit' class='btn btn-outline-dark my-2 my-sm-0'>검색</button>
            </form>
        </div>
    </nav>
</header>
<body>
	<div class='container' style='margin-top: 5rem;'>
		<div class='carousel slide border w-auto' data-ride="carousel" id='mealkit_list' style='height: 170px; display: flex; justify-content: center; align-items: center; text-align: center;'>
			<div class='carousel-inner'>
				<div class='carousel-item active'>
					<a href='mealkit/01.html'>
						감바스이미지
						<img />
					</a>
				</div>
				<div class='carousel-item'>
					<a href='mealkit/01.html'>
						탕수육이미지
						<img />
					</a>
				</div>
			</div>
		</div>
		<div id='product_list' class='carousel slide mt-3' data-ride='carousel' data-interval='20000'>
			<div class='carousel-inner' style='text-align: center;'>
				<div class='carousel-item active'>
					<div class='row'>
						<div class='col-6'>
							<div class='card' id='card'>
								<a href='mealkit/01.html'>
									<p style='height: 5rem; display: flex; justify-content: center; align-items: center; text-align: center;'>냉우동이미지</p>
									<img />
								</a>
							</div>
						</div>
						<div class='col-6'>
							<div class='card' id='card'>
								<a href='mealkit/01.html'>
									<p style='height: 5rem; display: flex; justify-content: center; align-items: center; text-align: center;'>불고기이미지</p>
									<img />
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class='carousel-item'>
					<div class='row'>
						<div class='col-6'>
							<div class='card' id='card'>
								<a href='mealkit/01.html'>
									<p style='height: 5rem; display: flex; justify-content: center; align-items: center; text-align: center;'>매운갈비이미지</p>
									<img />
								</a>
							</div>
						</div>
						<div class='col-6'>
							<div class='card' id='card'>
								<a href='mealkit/01.html'>
									<p style='height: 5rem; display: flex; justify-content: center; align-items: center; text-align: center;'>회냉면이미지</p>
									<img />
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<a href='#product_list' class='carousel-control-prev' data-slide='prev'>
				<span class='carousel-control-prev-icon'></span>
			</a>
			<a href='#product_list' class='carousel-control-next' data-slide='next'>
				<span class='carousel-control-next-icon'></span>
			</a>
		</div>
		<div class='row mt-2'>
			<div class='col'>
				<div class='jumbotron p-2 m-0'>
					<div class='carousel slide' data-ride='carousel' data-interval='5000' id='event_list' style='font-size: 88%'>
						<div class='carousel-inner'>
							<div class='carousel-item active'>
								<a href='#' ><strong>공지] </strong><small>추석 이벤트 안내</small></a>
							</div>
							<div class='carousel-item'>
								<a href='notice/02.html'><strong>공지] </strong><small>10월 13일(목) EZEN MEALKIT 페이지 구현 일정 안내</small></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id='footer_text' class='bg-dark text-light'>
			<nav id='footer_nav'>
				<ul id='footer_ul'>
					<li><a href="#">이용약관 |&nbsp;</a></li>
					<li><a href="#"><strong> 개인정보처리방침 |&nbsp;</strong></a></li>
					<li><a href="#"> 법적고지 |&nbsp;</a></li>
					<li><a href="#"> 고객행복센터</a></li>
				</ul>
			</nav>
			<br>
			<div class="comp_info">
				<p class="company my-0">이젠밀키트(주)</p>
				<div class="line_wrap">
					<dl>
						<dt>대표이사 :</dt>
						<dd>&nbsp;최한석, 한아름</dd>
					</dl>
				</div>
				<div class="line_wrap">
					<dl>
						<dd>
							<address class="my-0">서울시 관악구 신림로 340 이젠밀키트 (우) 08754 (ezan@gmail.com)</address>
						</dd>
					</dl>
				</div>
				<div class="line_wrap">
					<dl>
						<dt>사업자등록번호 :</dt>
						<dd><span class="ff_avr">&nbsp;123-45-67890</span></dd>
					</dl>
				</div>
				<div class="line_wrap">
					<dl>
						<dt>통신판매업신고</dt>
						<dd>&nbsp;중구 제 07767호&nbsp;
							<a href="#"><strong>사업자정보확인</strong></a>
						</dd>
					</dl>
				</div>
				<div class="line_wrap">
					<dl>
						<dt>개인정보보호책임자 :</dt>
						<dd>&nbsp;양승일</dd>
					</dl>
					<dl>
						<dt>호스팅제공자 :</dt>
						<dd>&nbsp;이젠밀키트㈜ </dd>
					</dl>
				</div>
			</div>
		</div>
	</div>
</body>
<footer>
	<nav class="navbar fixed-bottom navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="/"><span class="material-icons">home</span></a>
			<a class="navbar-brand" href="mealkit/02.html"><span class="material-icons">restaurant_menu</span></a>
			<a class="navbar-brand" href="review/02.html"><span class="material-icons">rate_review</span></a>
			<a class="navbar-brand" href="user/mypage.html"><span class="material-icons">person</span></a>
			<a class="navbar-brand" href="latest/01.html"><span class="material-icons">history</span></a>
		</div>
	</nav>
</footer>
</html>