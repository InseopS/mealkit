<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>listOrder</title>
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
        #paging_div {
            background-color: white;
            justify-content: center;
        }

        .pagination_section {
            position: relative;
            margin-bottom: 15px;
            width: 80%;
        }

        .pagination_section a {
            color: black;
            padding: 10px 18px;
            text-decoration: none;
        }

        .pagination_section a:hover:not(.active) {
            background-color: #031F3B;
            color: white;
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
                <p class='navbar-title flex-fill mr-1 my-0' style="font-family: 'Nanum Pen Script', cursive;">집밥을 특별하게
                </p>
                <p class='navbar-title flex-fill mr-1 my-0' style="font-family: 'Nanum Pen Script', cursive;">쉐프의 밀키트
                </p>
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
                <h3>주문내역</h3>
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
                <input type='search' class='form-control mr-sm-2' placeholder='상품을 입력해주세요.' />
                <button type='submit' class='btn btn-outline-dark my-2 my-sm-0'>검색</button>
            </form>
        </div>
        </div>
    </nav>
</header>
<body>
    <div id='mainContainerAddSub' class='container'>
        <div class='row'>
            <div class='col'>
                <nav class='d-flex mt-3 justify-content-center'>
                    <button type='button' class='btn flex-fill ml-0.5 mr-4 bg-dark text-white'
                        onclick='location.href="03.html"'>주문내역</button>
                    <button type='button' class='btn flex-fill btn-outline-dark mr-4'
                        onclick='location.href="../exchange/02.html"'>교환내역</button>
                    <button type='button' class='btn flex-fill btn-outline-dark'
                        onclick='location.href="../return/02.html"'>반품내역</button>
                </nav>
                <hr style='border: solid 1px'>
            </div>
        </div>
    </div>
    <div class='row'>
        <div class='col ml-3 mt-2 mb-1'>
            <b>주문번호</b>&ensp;000005
        </div>
    </div>
    <hr class='mt-0 ml-3 mr-3 mb-2'>
    <div class='row'>
        <div class='col-4'>
            <div class='ml-3 mt-2 mr-0 rounded border'
                style='width: 6rem; height: 6rem; background-color: white; justify-content: center; align-items: center; text-align: center;'>
                <br>
                <span><small>감바스</span>
                <p>이미지</p></small>
            </div>
            <div class='col mt-2 ml-4 mr-3'>
                <small><b>주문완료</b></small>
            </div>
        </div>
        <div class='col-4 mt-5'>
            <span><small>감바스</span>
            <p>3개 / 29000원</p>
        </div>
        <div class='col-3 mt-2 ml-4'>
            <a href='04.html' class='link flex-fill text-dark mt-5' role='button'><u>주문상세</u></a><br>
            <a href='03.html' class='link flex-fill text-dark mt-5' role='button' data-toggle='modal'
                data-target='#orderCancleModal'><u>주문취소</u></a><br>
            <a href='../exchange/01.html' class='link flex-fill text-dark mt-5' role='button'><u>교환신청</u></a><br>
            <a href='../return/01.html' class='link flex-fill text-dark mt-5' role='button'><u>반품신청</u></a><br>
            <a href='../review/01.html' class='link flex-fill text-dark mt-5' role='button'><u>리뷰작성</u></a>
            </small>
        </div>
    </div>
    <hr class='mt-2 ml-3 mr-3 mb-2'>
    <div class='row d-flex mx-auto fixed-bottom mb-5' id='paging_div'>
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="#">&lt;</a></li>
                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">&gt;</a></li>
            </ul>
        </nav>
    </div>
    <div class='modal fade' id='orderCancleModal' tabindex='-1'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class='modal-header py-2'>
                    <p class='modal-title float-left' id='myModalLabel'>주문취소</p>
                    <button bype='button' class='close' data-dismiss='modal'>
                        <span>&times;</span>
                    </button>
                </div>
                <div class='modal-body text-center'>
                    <p>주문을 취소 하시겠습니까?</p>
                </div>
                <div class='modal-footer py-1'>
                    <button type='button' class='btn btn-danger col-3' data-dismiss='modal'>아니오</button>&emsp;
                    <button type='button' class='btn btn-primary col-3' data-dismiss='modal' data-toggle='modal'
                        data-target='#deleteOkModal'>예</button>
                </div>
            </div>
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