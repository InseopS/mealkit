<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<html>

<head>
    <title>mealkit.01</title>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <script src='https://code.jquery.com/jquery-3.6.0.min.js'></script>
    <script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js'></script>
    <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js'></script>
    <link rel='stylesheet' href='http://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css' />
    <link href='https://fonts.googleapis.com/icon?family=Material+Icons' rel='stylesheet'>
    <link rel='stylesheet' type='text/css' href='../res/lib.css'>
    <link rel='preconnect' href='https://fonts.googleapis.com'>
    <link rel='preconnect' href='https://fonts.gstatic.com' crossorigin>
    <link href='https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap' rel='stylesheet'>
    <style>
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
                <h3>교환신청</h3>
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
    <div id='mainContainerAddSub' class="container">
        <form class='refund-request mt-5 ml-2 mb-2'>
            <div class='row'>
                <div class='col-3 p-2 mt-2 ml-4'>
                    <br>교환상품<span style='font-size:12px'></span>
                </div>
                <div class='col-3'>
                    <div class='mt-2 rounded border'
                        style='width: 6rem; height: 5rem; background-color: white; justify-content: center; align-items: center; text-align: center;'>
                        <p></p>
                        <small>마라샹궈<br>이미지</small>
                    </div>
                </div>
                <div class='col-4 mt-4 ml-4'>
                    <small>마라샹궈<br>3개 / 50000원</small>
                </div>
            </div>
            <div class='row'>
                <div class='col-5 mt-1 ml-3'>
                    <br>교환사유<span style='font-size:12px'>(필수)</span>
                </div>
                <div class='col mt-3'>
                    <select name='reason' style='width:8rem; height:3rem'>
                        <option value='none' selected hidden>선택</option>
                        <option value='poor'>품질 이상</option>
                        <option value='misdelivery'>오배송</option>
                        <option value='etc'>기타</option>
                    </select>
                </div>
            </div>
            <div class='row'>
                <div class='col ml-3'>
                    <br>상세사유<span style='font-size:12px'>(선택)</span><br>
                    <textarea maxlength='2000' style='resize: none;' cols='34' rows='5' placeholder='내용을 입력해주세요.'
                        id='content'></textarea>
                </div>
            </div>
            <div class='row'>
                <div class='col mt-2 ml-3 mb-3'>
                    이미지등록<span style='font-size:12px'>(필수)&emsp;&ensp;<input type='file' accept='image/*'
                            style='font-size:11px'></span>
                </div>
            </div>
            <div class='row justify-content-end mr-1'>
                <div class='col-5 mt-4 '>
                    <button type='button' class='btn btn-secondary btn-sm'
                        onclick='location.href="../order/03.html"'>취소</button>
                    <button type='button' class='btn btn-secondary btn-sm' data-toggle='modal'
                        data-target='#returnModal'>신청</button>
                </div>
            </div>
        </form>
    </div>
    <div class='modal fade' id='returnModal' tabindex='-1'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class='modal-header'>
                    <p class='modal-title float-left' id='myModalLabel'>교환신청</p>
                    <button bype='button' class='close' data-dismiss='modal'>
                        <span>&times;</span>
                    </button>
                </div>
                <div class='modal-body text-center'>
                    <p>교환을 신청 하시겠습니까?</p>
                    <button type='button' class='btn btn-danger col-3' data-dismiss='modal'>아니오</button>&emsp;
                    <button type='button' class='btn btn-primary col-3' data-dismiss='modal' data-toggle='modal'
                        data-target='#requestOkModal' onclick='location.href="02.html"'>예</button>
                </div>
            </div>
        </div>
    </div>
</body>

<footer>
    <nav class="navbar fixed-bottom navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="../main.html"><span class="material-icons">home</span></a>
            <a class="navbar-brand" href="../mealkit/02.html"><span class="material-icons">restaurant_menu</span></a>
            <a class="navbar-brand" href="../review/02.html"><span class="material-icons">rate_review</span></a>
            <a class="navbar-brand" href="../user/mypage.html"><span class="material-icons">person</span></a>
            <a class="navbar-brand" href="../latest/01.html"><span class="material-icons">history</span></a>
        </div>
    </nav>
</footer>

</html>