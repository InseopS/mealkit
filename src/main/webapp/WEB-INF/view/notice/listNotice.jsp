<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<!DOCTYPE html>
<html>
    <head>
        <title>EZEN MEALKIT</title>
        <meta charset='utf-8'>
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
            #noticeTitle {
                font-weight: bold;
                font-size:14.5px;
            }
            #noticeList {
                font-weight: lighter;
                font-size:small;
            }
            #noticeInfo {
                font-size:x-small;
            }
            #pagingDiv {
                background-color: white;
                justify-content : center;
            }
            .paginationSection {
                position: relative;
                margin-bottom: 15px;
                width: 80%;
            }
            .paginationSection a {
                color: black;
                padding: 10px 18px;
                text-decoration: none;
            }
            .pageLink {
                border-color: white;
                color: black;
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
                <span class="material-icons">shopping_cart</span>
            </a>

            <button class='navbar-toggler mr-4' type='button' data-toggle='collapse' data-target='#menu'>
                <span class='navbar-toggler-icon'></span>
            </button>
        </div>
        <div id='subOuter' class='row d-block d-sm-none d-flex mx-0'>
            <a class='material-icons hBack m-2' onClick='history.back()'>arrow_back_ios</a>
            <div id="menuName">
                <h3>공지사항</h3>
            </div>
        </div>

        <div class='collapse navbar-collapse' id='menu'>
            <ul class='navbar-nav mr-auto'>
                <li class='nav-item active'>
                    <a class='nav-link' href='../user/03.html'>로그인</a>
                </li>
                <li class='nav-item active'>
                    <a class='nav-link' href='01.html'>공지사항</a>
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
    <form>
        <div id='mainContainerAddSub' class="container">
            <div class='row'>
                <div class='col'>
					<div id='noticeList' class='mt-2' onClick="location.href='detailNotice.jsp'">
						<p id='noticeTitle'>[공지] 10월 13일(목) EZEN MEALKIT 페이지 구현 일정 안내</p>
						<p id='noticeInfo'>관리자<br/>
						2022. 10. 12 &emsp; 조회수 3</p>
					</div>
					<hr>
					<div id='noticeList'>
						<h6 id='noticeTitle'>[공지] 추석 이벤트 안내</h6>
						<p id='noticeInfo'>관리자<br/>
						2022. 10. 11 &emsp; 조회수 2</p>
					</div>
					<hr>
					<div id='noticeList'>
						<h6 id='noticeTitle'>[당첨자발표] 오픈이벤트 당첨자 발표안내</h6>
						<p id='noticeInfo'>관리자<br/>
						2022. 10. 10 &emsp; 조회수 4</p>
					</div>
					<hr>
					<div id='noticeList'>
						<h6 id='noticeTitle'>[배송] 명절 배송지연 안내</h6>
						<p id='noticeInfo'>관리자<br/>
						2022. 10. 09 &emsp; 조회수 1</p>
					</div>
					<hr>
                </div>
            </div>
			<div class='row d-flex mx-auto fixed-bottom mb-5' id='pagingDiv'>
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                        <li class="page-item"><a class="page-link" href="#">&lt;</a></li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item active"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">&gt;</a></li>
                    </ul>
                </nav>
			</div>
        </div>
    </form>
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