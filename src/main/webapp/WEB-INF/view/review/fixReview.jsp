<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<!DOCTYPE html>
<html>
    <head>
        <title>EAZEN MEALKIT</title>
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
                    <h3>리뷰수정</h3>
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
    <div id='mainContainerAddSub' class="container">
        <div class='row'>
            <div class='col'>
                <div class>
                    <form class="mb-4">
                        <input type='radio' name='star' value='5' checked> <span style="font-size:14px">★★★★★</span>
                        <input type='radio' name='star' value='4'> <span style="font-size:14px">★★★★</span>
                        <input type='radio' name='star' value='3'> <span style="font-size:14px">★★★</span>
                        <input type='radio' name='star' value='2'> <span style="font-size:14px">★★</span>
                        <input type='radio' name='star' value='1' > <span style="font-size:14px">★</span>
                    </form>
                </div>
            </div>
        </div>
        <div class='form-row'>
            <div class='col-2' >
                제목 :
            </div>
            <div class='col'>
                <form>
                    <textarea style="resize: none;" cols='33' rows='1' maxlength="13" placeholder='맛있습니다.' id='content'></textarea>
                </form>
            </div>
        </div>
        <br>
        <div class='form-row'>
            <div class='col-2' >
                내용 :
            </div>
            <div class='col'>
                <form>
                    <textarea style="resize: none;" cols='33' rows='8' maxlength="1333" placeholder='맛이 깔끔한게 아주 좋네요.' id='content'></textarea>
                </form>
            </div>
        </div>
        <br>
        <div class='row'>
            <div class='col'>
                <span style="font-size:13px">이미지등록:&nbsp;&nbsp;<input type='file' accept="image/*" style="font-size:13px"></span>
            </div>
        </div>
        <hr>
        <br>
        <div class='row justify-content-end'>
            <div class='col d-flex justify-content-end'>
                <button type='button' class='btn btn-secondary' onclick='location.href="02.html"'>취소</button>
                &nbsp;
                <button type='button' class='btn btn-secondary' data-toggle='modal' data-target='#editModal'>수정</button>
            </div>
        </div>
    </div>
    <div class='modal fade' id='editModal' tabindex='-1'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class='modal-header py-2'>
                    <p class="modal-title float-left" id='myModalLabel'>리뷰수정</p>
                    <button type='button' class='close' data-dismiss='modal'><span>&times;</span></button>
                </div>
                <div class='modal-body text-center'>
                    <p>리뷰를 수정하시겠습니까?</p>
                </div>
                <div class='modal-footer py-1'>
                    <button type='button' class='btn btn-danger col-3' data-dismiss='modal'>아니오</button>&nbsp;&nbsp;
                    <button type='button' class='btn btn-primary col-3' data-dismiss='modal'
                      onclick='location.href="02.html"'>예</button>
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
            <a class='navbar-brand' href='02.html'><span class='material-icons'>rate_review</span></a>
            <a class='navbar-brand' href='../user/mypage.html'><span class='material-icons'>person</span></a>
            <a class='navbar-brand' href='../latest/01.html'><span class='material-icons'>history</span></a>
        </div>
    </nav>
</footer>
</html>