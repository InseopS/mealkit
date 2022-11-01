<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link rel='stylesheet' type='text/css' href='../res/admin.css'>
<style>
table {
    text-align: center;
    font-size: smaller;
}
</style>
</head>
<body>
    <div class='container-fluid'>
        <div class='row'>
            <div class='col-2' id='navLogo'>
                <h3 id='logo'><a href='main.html'>EZEN MEALKIT</a></h3>
            </div>
            <div class='col' id='title'>
                <div style='float: left'>
                    <h2 style='display: inline'>MAIN</h2>&ensp;
                </div>
                <div style='float: right'><a href='../main.html'>로그아웃</a></div>
            </div>
        </div>
        <div class='row'>
            <div class='col-2' id='menu'>
                <ul class='mt-3 p-1'>
                    <li><a href='mealkit/01.html'><span class='material-icons mr-2'>shopping_bag</span>상품</a></li>
                    <li><a href='notice/01.html'><span class='material-icons mr-2'>sell</span>공지사항</a></li>
                    <li><a href='review/01.html'><span class='material-icons mr-2'>computer</span>리뷰</a></li>
                    <li><a href='order/01.html'><span class='material-icons mr-2'>article</span>주문</a></li>
                    <li><a href='declaration/01.html'><span class='material-icons mr-2'>report</span>신고</a></li>
                    <li><a href='question/01.html'><span class='material-icons mr-2'>forum</span>문의</a></li>
                    <li><a href='faq/01.html'><span class='material-icons mr-2'>chat_bubble_outline</span>FAQ</a></li>
                    <li><a href='user/01.html'><span class='material-icons mr-2'>people</span>회원조회</a></li>
                </ul>
            </div>
            <div class='col' style='border: 1px solid'>
                <div class='border w-auto mt-3' id='content'>
                    <div class='mx-4 my-2' style='height: 16.5rem; border: 0.1rem; border-style: solid; position: relative;'>
                        <p style='position: absolute; top: 50%; left: 45%'>로고이미지</p>
                    </div>

                    <form action='main.html' class='d-flex justify-content-end'>
                        <div class='row'>
                            <label for='input' class='col-2 px-0 mr-2 col-form-label' style='font-size: 70%;'>로고이미지:</label>
                            <div class='col-7 px-0 input-group input-group-sm'>
                                <input type='file' class='form-control' id='logoImg' style='font-size: 70%;'>
                            </div>
                            <div class='col pl-1 mr-3'>
                                <button type='submit' class='btn btn-sm btn-secondary' style='font-size: 70%;'>변경</button>
                            </div>
                        </div>
                    </form>

                    <p class='ml-4'>[최근 문의]</p>
                    <div class='row mx-4'>
                        <table class='table table-sm'>
                            <colgroup>
                                <col width='15%'>
                                <col width='51%'>
                                <col width='17%'>
                                <col width='17%'>
                            </colgroup>
                            <thead>
                                <tr class='table-active'>
                                    <th scope='col'>글번호</th>
                                    <th scope='col'>제목</th>
                                    <th scope='col'>아이디</th>
                                    <th scope='col'>상태</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>3</td>
                                    <td><a href='question/03.html'>마라키트 많이 맵나요?</a></td>
                                    <td>seop2</td>
                                    <td>답변대기</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>배송문의 ㅠㅜ</td>
                                    <td>seop2</td>
                                    <td>답변완료</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>재입고 문의드려용~</td>
                                    <td>rightarm</td>
                                    <td>답변완료</td>
                                </tr>
                                <tr><th><td><td><td></td></td></th></tr>
                            </tbody>
                        </table>
                    </div>

                    <p class='ml-4'>[최근 신고]</p>
                    <div class='row mx-4'>
                        <table class='table table-sm'>
                            <colgroup>
                                <col width='15%'>
                                <col width='51%'>
                                <col width='17%'>
                                <col width='17%'>
                            </colgroup>
                            <thead>
                                <tr class='table-active'>
                                    <th scope='col'>글번호</th>
                                    <th scope='col'>제목</th>
                                    <th scope='col'>아이디</th>
                                    <th scope='col'>상태</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>4</td>
                                    <td><a href='declaration/02.html'>대출광고 신고합니다.</a></td>
                                    <td>ezen01</td>
                                    <td>처리중</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>욕설 신고합니다.</td>
                                    <td>ezen01</td>
                                    <td>삭제</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>비방 신고합니다.</td>
                                    <td>ezen01</td>
                                    <td>기각</td>
                                </tr>
                                <tr><th><td><td><td></td></td></th></tr>
                            </tbody>
                        </table>
                    </div>
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