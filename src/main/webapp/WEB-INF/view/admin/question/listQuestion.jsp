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
                <h3 id='logo'><a href='../main.html'>EZEN MEALKIT</a></h3>
            </div>
            <div class='col' id='title'>
                <div style='float: left'>
                    <h2 style='display: inline'>1:1문의</h2>
                    <h6>문의목록</h6>
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
            <div class='col' style='border: 1px solid;'>
                <div class='border w-auto my-3' id='content'>
                    <div id='pageGroup'>
                        <nav id='page'>
                            <ul class="pagination mb-0">
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="previous">
                                        <span aria-hidden="true">&lt;</span>
                                    </a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="next">
                                        <span aria-hidden="true">&gt;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class='container mw-100 mt-5' style='width: 98%;'>
                        <div class='row'>
                            <div class='col'>
                                <table class='table table-hover my-0'>
                                    <colgroup>
                                        <col width='5%'>
                                        <col width='10%'>
                                        <col width='45%'>
                                        <col width='14%'>
                                        <col width='13%'>
                                        <col width='13%'>
                                    </colgroup>
                                    <thead class='table-info'>
                                        <tr>
                                            <th scope='col'></th>
                                            <th scope='col'>번호</th>
                                            <th scope='col'>제목</th>
                                            <th scope='col'>작성자</th>
                                            <th scope='col'>작성일</th>
                                            <th scope='col'>답변</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th><input type='checkbox'></th>
                                            <td>0003</td>
                                            <td onclick='location.href="02.html"'>마라키트 많이 맵나요?</td>
                                            <td>tanaka</td>
                                            <td>2022.10.14</td>
                                            <td>답변대기</td>
                                        </tr>
                                        <tr>
                                            <th><input type='checkbox'></th>
                                            <td>0002</td>
                                            <td>배송문의ㅠㅜ</td>
                                            <td>tanaka</td>
                                            <td>2022.10.13</td>
                                            <td>답변완료</td>
                                        </tr>
                                        <tr>
                                            <th><input type='checkbox'></th>
                                            <td></td>
                                            <td onclick='location.href="04.html"'>ㄴ 답변:배송문의ㅠㅜ</td>
                                            <td>관리자</td>
                                            <td>2022.10.13</td>
                                            <td>-</td>
                                        </tr>
                                        <tr>
                                            <th><input type='checkbox'></th>
                                            <td>0001</td>
                                            <td>재입고 문의드려용~</td>
                                            <td>rightarm</td>
                                            <td>2022.10.12</td>
                                            <td>답변완료</td>
                                        </tr>
                                        <tr>
                                            <th><input type='checkbox'></th>
                                            <td></td>
                                            <td>ㄴ 답변:재입고 문의드려용~</td>
                                            <td>관리자</td>
                                            <td>2022.10.12</td>
                                            <td>-</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <hr class='mt-0'>
                            </div>
                        </div>
                    </div>
                </div>
                <hr style='position: relative; bottom: 13%;'>
                <div id='bottomBtn'>
                    <button type='button' id='delQuestion' class='btn btn-secondary' data-toggle='modal'
                        data-target='#questionDelModal'>삭제</button>
                </div>
            </div>
        </div>
    </div>

    <div class='modal fade' id='questionDelModal' tabindex='-1'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class='modal-header py-2'>
                    <p class='modal-title float-left' id='ModalLabel'>문의삭제</p>
                    <button bype='button' class='close' data-dismiss='modal'>
                        <span>&times;</span>
                    </button>
                </div>
                <div class='modal-body text-center'>
                    <p>선택한 문의를 삭제하시겠습니까?</p>
                </div>
                <div class='modal-footer py-1'>
                    <button type='button' class='btn btn-primary col-3' data-dismiss='modal'>아니오</button>
                    <button type='button' class='btn btn-danger col-3' data-dismiss='modal'>예</button>
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