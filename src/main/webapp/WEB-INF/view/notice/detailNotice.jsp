<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            #noticeTop {
                font-weight: 600;
                font-size: medium;
            }

            #noticeTitle {
                font-size:16.5px;
            }
            #noticeInfo {
                font-weight: lighter;
                font-size:x-small;
            }
            #contentLogo {
                height: 3.5rem;
                width: 115px;
                margin:0 auto;
                margin-top: 20px;
                justify-content: center;
                border: solid 1px lightgrey;
                align-items: center;
            }
            #noticeContent {
                margin-top: 30px;
                margin-left: 10px;
                font-size:small;
            }
            #logoImg {
                height: 6rem;
                line-height: 35px;
                text-align: center;
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
                <h3>공지상세</h3>
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
					<div id='noticeTop'>
						<p id='noticeTitle'>[공지] 10월 13일(목) EZEN MEALKIT 페이지 구현 일정 안내</p>
						<p id='noticeInfo'>관리자<br/>
						2022. 10. 13 &emsp; 조회수 3</p>
					</div>
					<hr>
                </div>
            </div>
            <div class='row' id='contentLogo'>
                <div class='col'>
                    <p id='logoImg' class='pt-2'>로고이미지</p>
                </div>
            </div>
            <div class='row' id='noticeContent'>
                <pre>
안녕하세요 !

&lt;EZEN MEALKIT&gt; 관리자 입니다.

10월 13일부터 10월 18일까지, 페이지 구현이

진행될 예정입니다.

감사합니다.
                </pre>
            </div>
            <div class='row'>
                <div class='col'>
                    <hr>
                </div>
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