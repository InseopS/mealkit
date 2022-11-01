<%@ page language='java' contentType='text/html; charset=EUC-KR'
    pageEncoding='utf-8'%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<title>EZEN MEALKIT</title>
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
</head>
<body>
    <div class='container-fluid'>
        <div class='row'>
            <div class='col-2' id='navLogo'>
                <h3 id='logo'><a href='#'>EZEN MEALKIT</a></h3>
            </div>
            <div class='col' id='title'>
                <div style='float: left'>
                    <h2 style='display: inline'>1:1문의</h2>&ensp;
                    <h6>답변작성</h6>
                </div>
                <div style='float: right'><a href='../../main.html'>로그아웃</a></div>
            </div>
        </div>
        <div class='row'>
            <div class='col-2' id='menu'>
                <ul class='mt-3 p-1'>
                    <li><a href="../mealkit/01.html"><span class="material-icons mr-2">shopping_bag</span>상품</a></li>
                    <li><a href="../notice/01.html"><span class="material-icons mr-2">sell</span>공지사항</a></li>
                    <li><a href="../review/01.html"><span class="material-icons mr-2">computer</span>리뷰</a></li>
                    <li><a href="../order/01.html"><span class="material-icons mr-2">article</span>주문</a></li>
                    <li><a href="../declaration/01.html"><span class="material-icons mr-2">report</span>신고</a></li>
                    <li><a href="01.html"><span class="material-icons mr-2">forum</span>문의</a></li>
                    <li><a href="../faq/01.html"><span class="material-icons mr-2">chat_bubble_outline</span>FAQ</a></li>
                    <li><a href="../user/01.html"><span class="material-icons mr-2">people</span>회원조회</a></li>
                </ul>
            </div>
            <div class='col' style='border: 1px solid'>
                <div class='border w-auto my-3' id='content'>
                    <form action='01.html'>
                        <div class='container mw-100 mt-5' style='width: 98%;'>
                            <div class='row mt-3'>
                                <label for='input' class='col-2 pr-2 col-form-label'>제목:</label>
                                <div class='col pl-1'>
                                    <input type='text' class='form-control bg-light' id='questionTitle' placeholder='제목을 입력해주세요.' value='답변: 마라키트 많이 맵나요?' disabled>
                                </div>
                            </div>
                            <div class='row mt-3'>
                                <label for='input' class='col-2 pr-2 col-form-label'>내용:</label>
                                <div class='col pl-1'>
                                    <textarea class='form-control' maxlength='1300' placeholder='내용을 입력해주세요.' id='questionContent'
                                        style='height: 464px'></textarea>
                                </div>
                            </div>
                            <hr>
                            <div class='row mx-auto justify-content-end'>
                                <div class='row mt-2 d-flex justify-content-end'>
                                    <div class='col'>
                                        <button type='button' class='btn btn-secondary' onClick='location.href="01.html"'>취소</button>
                                        <button type='submit' class='btn btn-secondary'>작성</button>
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
            <span><a href='#'>이용약관 |&nbsp;</a></span>
            <span><a href='#'><strong> 개인정보처리방침 |&nbsp;</strong></a></span>
            <span><a href='#'> 법적고지 |&nbsp;</a></span>
            <span><a href='#'> 고객행복센터</a></span>
        <br>
        <div class='comp_info'>
            <p class='company my-0'>이젠밀키트(주)</p>
            <div class='line_wrap'>
                <dl>
                    <dt>대표이사</dt>
                    <dd>&nbsp;최한석, 한아름</dd>
                </dl>
            </div>
            <div class='line_wrap'>
                <dl>
                    <dd>
                        <address class='my-0'>서울시 관악구 신림로 340 이젠밀키트 (우) 08754 (ezan@gmail.com)</address>
                    </dd>
                </dl>
            </div>
            <div class='line_wrap'>
                <dl>
                    <dt>사업자등록번호</dt>
                    <dd><span class='ff_avr'>&nbsp;123-45-67890</span></dd>
                </dl>
            </div>
            <div class='line_wrap'>
                <dl>
                    <dt>통신판매업신고</dt>
                    <dd>&nbsp;중구 제 07767호&nbsp;
                        <a href='#'><strong>사업자정보확인</strong></a>
                    </dd>
                </dl>
            </div>
            <div class='line_wrap'>
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
</html>