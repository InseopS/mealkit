<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<head>
    <title>EZEN MEALKIT</title>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <script src='https://code.jquery.com/jquery-3.6.0.min.js'></script>
    <script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js'></script>
    <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js'></script>
    <link rel='stylesheet' href='http://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css' />
    <link href='https://fonts.googleapis.com/icon?family=Material+Icons' rel='stylesheet'>
    <link rel='preconnect' href='https://fonts.googleapis.com'>
    <link rel='preconnect' href='https://fonts.gstatic.com' crossorigin>
    <link href='https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap' rel='stylesheet'>
    <link rel='stylesheet' type='text/css' href='../../res/admin.css'>
    <style>
        hr {
            height: 1px;
            background-color: lightgray;
        }
    </style>
</head>

<body>
    <div class='container-fluid'>
        <div class='row'>
            <div class='col-2' id='navLogo'>
                <h3 id='logo'><a href='../main.html'>EZEN MEALKIT</a></h3>
            </div>
            <div class='col' id='title'>
                <div style='float: left'>
                    <h2 style='display: inline'>상품</h2>&ensp;
                    <h6>상품수정</h6>
                </div>
                <div style='float: right'><a href='../../main.html'>로그아웃</a></div>
            </div>
        </div>
        <div class='row'>
            <div class='col-2' id='menu'>
                <ul class='mt-3 p-1'>
                    <li><a href="01.html"><span class="material-icons mr-2">shopping_bag</span>상품</a></li>
                    <li><a href="../notice/01.html"><span class="material-icons mr-2">sell</span>공지사항</a></li>
                    <li><a href="../review/01.html"><span class="material-icons mr-2">computer</span>리뷰</a></li>
                    <li><a href="../order/01.html"><span class="material-icons mr-2">article</span>주문</a></li>
                    <li><a href="../declaration/01.html"><span class="material-icons mr-2">report</span>신고</a></li>
                    <li><a href="../question/01.html"><span class="material-icons mr-2">forum</span>문의</a></li>
                    <li><a href="../faq/01.html"><span class="material-icons mr-2">chat_bubble_outline</span>FAQ</a>
                    </li>
                    <li><a href="../user/01.html"><span class="material-icons mr-2">people</span>회원조회</a></li>
                </ul>
            </div>
            <div class='col' style='border: 1px solid'>
                <div class='border w-auto my-3' id='content'>
                    <form action='01.html'>
                        <div class='container mw-100 mt-5' style='width: 98%;'>
                            <div class='row mt-3'>
                                <label for='input' class='col-2 pr-2 col-form-label'>상품명:</label>
                                <div class='col pl-1'>
                                    <input type='text' class='form-control' id='itle' placeholder='상품명을 입력해주세요.' value='파스타'>
                                </div>
                            </div>
                            <div class='row mt-3'>
                                <label for='input' class='col-2 pr-2 col-form-label'>판매가:</label>
                                <div class='col pl-1'>
                                    <input type='number' class='form-control' id='noticeTitle' placeholder='원' value='8000'>
                                </div>
                            </div>
                            <div class='row mt-3'>
                                <label for='input' class='col-2 pr-2 col-form-label'>상품설명:</label>
                                <div class='col pl-1'>
                                    <input type='text' class='form-control' id='noticeTitle' placeholder='내용을 입력해주세요.' value='집에서 간단하게 해먹을 수 있는 뽀모도로 파스타!'>
                                </div>
                            </div>
                            <div class='row mt-3'>
                                <label for='input' class='col-2 pr-2 col-form-label'>내용:</label>
                                <div class='col pl-1'>
                                    <textarea class="form-control" placeholder="내용을 입력해주세요." id="noticeContent" style="height: 248px">
상큼한 토마토와 양송이, 이탈리아 파마산 치즈맛이 잘 어울리는 파스타입니다.
</textarea>
                                </div>
                            </div>
                            <div class='row mt-3'>
                                <label for='input' class='col-2 pr-2 col-form-label'>이미지:</label>
                                <div class='col pl-1'>
                                    <input type='file' class='form-control' id='noticeTitle'>
                                </div>
                            </div>
                            <div class='row mt-3'>
                                <label for='input' class='col-2 pr-2 col-form-label'>카테고리:</label>
                                <div class='col pl-1'>
                                    <select class="form-control" name='category'>
                                        <option value='kor'>한식</option>
                                        <option value='chn'>중식</option>
                                        <option value='jpn'>일식</option>
                                        <option value='west' selected>양식</option>
                                        <option value='etc'>기타</option>
                                    </select>
                                </div>
                            </div>
                            <hr>
                            <div class='row mx-auto justify-content-end'>
                                <div class='row mt-2 d-flex justify-content-end'>
                                    <div class='col'>
                                        <button type='button' class='btn btn-secondary' onClick='history.back()'>취소</button>
                                        <button type='submit' class='btn btn-secondary'>수정</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
<footer>
    <div id='footer_text' class='bg-dark text-light'>
        <span><a href="#">이용약관 |&nbsp;</a></span>
        <span><a href="#"><strong> 개인정보처리방침 |&nbsp;</strong></a></span>
        <span><a href="#"> 법적고지 |&nbsp;</a></span>
        <span><a href="#"> 고객행복센터</a></span>
        <br>
        <div class="comp_info">
            <p class="company my-0">이젠밀키트(주)</p>
            <div class="line_wrap">
                <dl>
                    <dt>대표이사</dt>
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
                    <dt>사업자등록번호</dt>
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
                    <dt>개인정보보호책임자</dt>
                    <dd>&nbsp;양승일</dd>
                </dl>
                <dl>
                    <dt>호스팅제공자</dt>
                    <dd>&nbsp;이젠밀키트㈜ </dd>
                </dl>
            </div>
        </div>
    </div>
</footer>