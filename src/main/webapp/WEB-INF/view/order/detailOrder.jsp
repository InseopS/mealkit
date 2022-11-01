<%@ page language='java' contentType='text/html; charset=EUC-KR'
    pageEncoding='utf-8'%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<title>detailOrder</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
	<script src='https://code.jquery.com/jquery-3.6.0.min.js'></script>
    <script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js'></script>
    <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js'></script>
    <link rel='stylesheet' href='http://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css' />
    <link rel='stylesheet' type='text/css' href='../res/lib.css'>
    <link href='https://fonts.googleapis.com/icon?family=Material+Icons' rel='stylesheet'>
    <link rel='preconnect' href='https://fonts.googleapis.com'>
    <link rel='preconnect' href='https://fonts.gstatic.com' crossorigin>
    <link href='https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap' rel='stylesheet'>
    <style>
        .orderInfoTitle1 {
            font-size: 12pt;
            text-align: left;
        }

        .orderInfoTitle2 {
            font-size: 9pt;
            text-align: left;

        }

        .orderInfoContent {
            font-size: 9pt;
            text-align: right;
        }
    </style>
</head>
<header>
    <nav class='navbar fixed-top navbar-light bg-light navbar-expand-sm p-0'>
        <div class='container-fluid'>
            <a class='navbar-brand ml-2' href='../main.html'>
                <div id='logo'>로고이미지</div>
            </a>

			<div>
				<p class='navbar-title flex-fill mr-1 my-0' style="font-family: 'Nanum Pen Script', cursive;">집밥을 특별하게</p>
				<p class='navbar-title flex-fill mr-1 my-0' style="font-family: 'Nanum Pen Script', cursive;">쉐프의 밀키트</p>
			</div>

            <a class='text-dark flex-fill text-right mr-3' href='../cart/01.html'>
                <span class='material-icons'>shopping_cart</span>
            </a>

            <button class='navbar-toggler mr-4' type='button' data-toggle='collapse' data-target='#menu'>
                <span class='navbar-toggler-icon'></span>
            </button>
        </div>
        <div id='subOuter' class='row d-block d-sm-none d-flex mx-0'>
            <a class='material-icons hBack m-2' onClick='history.back()'>arrow_back_ios</a>
            <div id='menuName'>
                <h3>주문상세</h3>
            </div>
        </div>

        <div class='collapse navbar-collapse' id='menu'>
            <ul class='navbar-nav mr-auto'>
                <li class='nav-item active'>
                    <a class='nav-link' href='../user/03.html'>로그인</a>
                </li>
                <li class='nav-item active'>
                    <a class='nav-link' href='../notice/01.html'>공지사항</a>
                </li>
                <li class='nav-item dropdown'>
                    <a class='nav-link dropdown-toggle' data-toggle='dropdown'>고객센터</a>
                    <div class='dropdown-menu'>
                        <a class='dropdown-item' href='../faq/01.html'>자주묻는질문</a>
                        <a class='dropdown-item' href='../question/02.html'>1:1문의</a>
                        <div class='dropdown-divider'></div>
                        <a class='dropdown-item' href='../declaration/02.html'>신고</a>
                    </div>
                </li>
            </ul>
            <form class='form-inline my-2 my-lg-0' action='../mealkit/03.html'>
                <input type='search' class='form-control mr-sm-2' placeholder='상품을 입력해주세요.'/>
                <button type='submit' class='btn btn-outline-dark my-2 my-sm-0'>검색</button>
            </form>
        </div>
        </div>
    </nav>
</header>
<body>
	<div id='mainContainerAddSub' class='container'>
	    <div class='row'>
	        <div class='col mt-3 mb-1'>
	            <b>주문번호</b>&ensp;000005
	        </div>
	    </div>
	    <hr class='mt-0 mb-2'>
        <div class='row'>
            <div class='col-4'>
                <div class='mt-2 mr-0 rounded border' style='width: 6rem; height: 6rem; background-color: white; justify-content: center; align-items: center; text-align: center;'>
                    <br>
                    <span><small>감바스</span><p>이미지</p></small>
                </div>
                <div class='col mt-2 ml-2 mr-3'>
                    <small><b>주문완료</b></small>
                </div>
            </div>
            <div class='col-4 mt-5'>
                <span><small>감바스</span><p>3개 / 29000원</p></small>
            </div>
        </div>
	    <hr class='mt-2 mr-2 mb-2'>
		<div class='row'>
		    <div class='col'>
		        <table class='table table-sm table-borderless ml-0'>
		            <tr><th class='orderInfoTitle1'>주문상세</th><th></th></tr>
		            <tbody>
		                <tr>
		                    <td class='orderInfoTitle2'>주문일자</td>
		                    <td class='orderInfoContent'>2022-10-13</td>
		                </tr>
		                <tr>
		                    <td class='orderInfoTitle2'>주문자</td>
		                    <td class='orderInfoContent'>김연이</td>
		                </tr>
		            </tbody>
		        </table><hr class='mt-3 mb-2'>
		
		        <table class='table table-sm table-borderless ml-0'>
		            <tr><th class='orderInfoTitle1'>결제상세</th><th></th></tr>
		            <tbody>
		                <tr>
		                    <td class='orderInfoTitle2'>결제수단</td>
		                    <td class='orderInfoContent'>카드결제</td>
		                </tr>
		                <tr>
		                    <td class='orderInfoTitle2'>주문금액</td>
		                    <td class='orderInfoContent'>29000원</td>
		                </tr>
		                <tr>
		                    <td class='orderInfoTitle2'>배송비</td>
		                    <td class='orderInfoContent'>무료</td>
		                </tr>
		                <tr>
		                    <td class='orderInfoTitle2'><b>총 결제금액</b></td>
		                    <td class='orderInfoContent'><b>29000원</b></td>
		                </tr>
		            </tbody>
		        </table><hr class='mt-3 mb-2'>
		
		        <table class='table table-sm table-borderless ml-0'>
		            <tr><th class='orderInfoTitle1'>배송지</th><th></th></tr>
		            <tbody>
		                <tr>
		                    <td class='orderInfoTitle2'>수령인</td>
		                    <td class='orderInfoContent'>김연이</td>
		                </tr>
		                <tr>
		                    <td class='orderInfoTitle2'>연락처</td>
		                    <td class='orderInfoContent'>010-1234-1212</td>
		                </tr>
		                <tr>
		                    <td class='orderInfoTitle2'>우편번호</td>
		                    <td class='orderInfoContent'>08754</td>
		                </tr>
		                <tr>
		                    <td class='orderInfoTitle2'>주소</td>
		                    <td class='orderInfoContent'>
		                    서울특별시 관악구 신림로340(신림동)<br>
		                    <p class='orderInfoContent'>르네상스쇼핑몰 603호</p></td>
		                </tr>
		                <tr>
		                    <td class='orderInfoTitle2'>요청사항</td>
		                    <td class='orderInfoContent'>없음</td>
		                </tr>
		            </tbody>
		        </table><hr class='mt-5 mb-2'>
		    </div>
		</div>
        <div class='row d-flex mx-auto mt-5'>
            <a href='03.html' class='btn flex-fill bg-dark text-white mt-5 mb-4' role='button'>주문내역</a>
        </div>
    </div>
</body>
<footer>
    <nav class='navbar fixed-bottom navbar-light bg-light'>
        <div class='container-fluid'>
            <a class='navbar-brand' href='../main.html'><span class='material-icons'>home</span></a>
            <a class='navbar-brand' href='../mealkit/02.html'><span class='material-icons'>restaurant_menu</span></a>
            <a class='navbar-brand' href='../review/02.html'><span class='material-icons'>rate_review</span></a>
            <a class='navbar-brand' href='../user/mypage.html'><span class='material-icons'>person</span></a>
            <a class='navbar-brand' href='../latest/01.html'><span class='material-icons'>history</span></a>
        </div>
    </nav>
</footer>
</html>