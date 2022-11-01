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
                    <h6>상품목록</h6>
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
                    <li><a href="../faq/01.html"><span class="material-icons mr-2">chat_bubble_outline</span>FAQ</a></li>
                    <li><a href="../user/01.html"><span class="material-icons mr-2">people</span>회원조회</a></li>
                </ul>
            </div>
            <div class='col' style='border: 1px solid'>
                <div class='border w-auto mt-3 my-3' id='content'>
                    <div id='pageGroup'>
                        <nav id='page'>
                            <ul class="pagination mb-0">
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="previous">
                                        <span aria-hidden="true">&lt;</span>
                                    </a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="next">
                                        <span aria-hidden="true">&gt;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class='container mw-100 mt-5' style='width: 98%;'>
                    <form>
                        <div class='row'>
                            <div class='col-2'>
                                <select class='form-control' name='category'>
                                    <option value='0' selected hidden>카테고리</option>
                                    <option value='1'>한식</option>
                                    <option value='2'>중식</option>
                                    <option value='3'>일식</option>
                                    <option value='4'>양식</option>
                                    <option value='5'>기타</option>
                                </select>
                            </div>
                            <div class='col px-0'>
                                <input type='text' class='form-control' id='searchIn' placeholder='상품명을 입력해주세요.'>
                            </div>
                            <div class='col-2 d-flex'>
                                <button type='button' id='serchUser' class='btn btn-secondary flex-fill'>검색</button>
                            </div>
                        </div>
                    </form>
                    <div class='mt-5'>
                        <table class='table table-sm'>
                            <colgroup>
                                <col width='15%'>
                                <col width='15%'>
                                <col width='15%'>
                                <col width='15%'>
                                <col width='15%'>
                                <col width='15%'>

                            </colgroup>
                            <thead class='table-info'>
                                <tr>
                                    <th scope='col'>상품</th>
                                    <th scope='col'>이름</th>
                                    <th scope='col'>카테고리</th>
                                    <th scope='col'>판매가</th>
                                    <th scope='col'>등록일</th>
                                    <th scope='col'>수정&ensp;/&ensp;삭제</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class='align-middle'><div class='border w-auto' style='height: 75px;'>파스타이미지</div></td>
                                    <td class='align-middle'>파스타</td>
                                    <td class='align-middle'>양식</td>
                                    <td class='align-middle'>8000원</td>
                                    <td class='align-middle'>2022-10-20</td>
                                    <td class='align-middle'>
                                        <a class='btn btn-secondary btn-sm' href='03.html'>수정</a>
                                        <a class='btn btn-secondary btn-sm' data-toggle='modal' data-target='#delModal'>삭제</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class='align-middle'><div class='border w-auto' style='height: 75px;'>고기만두이미지</div></td>
                                    <td class='align-middle'>고기만두</td>
                                    <td class='align-middle'>중식</td>
                                    <td class='align-middle'>5000원</td>
                                    <td class='align-middle'>2022-10-21</td>
                                    <td class='align-middle'>
                                        <a class='btn btn-secondary btn-sm' href='03.html'>수정</a>
                                        <a class='btn btn-secondary btn-sm'>삭제</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class='align-middle'><div class='border w-auto' style='height: 75px;'>김치만두이미지</div></td>
                                    <td class='align-middle'>김치만두</td>
                                    <td class='align-middle'>중식</td>
                                    <td class='align-middle'>5000원</td>
                                    <td class='align-middle'>2022-10-22</td>
                                    <td class='align-middle'>
                                        <a class='btn btn-secondary btn-sm' href='03.html'>수정</a>
                                        <a class='btn btn-secondary btn-sm'>삭제</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class='align-middle'><div class='border w-auto' style='height: 75px;'>부대찌개이미지</div></td>
                                    <td class='align-middle'>부대찌개</td>
                                    <td class='align-middle'>한식</td>
                                    <td class='align-middle'>16000원</td>
                                    <td class='align-middle'>2022-10-23</td>
                                    <td class='align-middle'>
                                        <a class='btn btn-secondary btn-sm' href='03.html'>수정</a>
                                        <a class='btn btn-secondary btn-sm'>삭제</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    <hr style='margin-top: -1rem;'>
                    </div>
                </div>
                </div>
                <hr style='position: relative; bottom: 13%;'>
                <div id='bottomBtn'>
                    <button type='button' class='btn btn-secondary'
                        onclick='location.href="02.html"'>등록</button>
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
<div class='modal fade' id='delModal' tabindex='-1'>
    <div class='modal-dialog'>
        <div class='modal-content'>
            <div class='modal-header py-2'>
                <p class='modal-title float-left' id='delModalLabel'>상품삭제</p>
                <button bype='button' class='close' data-dismiss='modal'>
                    <span>&times;</span>
                </button>
            </div>
            <div class='modal-body text-center'>
                <p>상품을 삭제하시겠습니까?</p>
            </div>
            <div class='modal-footer py-1'>
                <button type='button' class='btn btn-primary col-3' data-dismiss='modal'>아니오</button>
                <a class='btn btn-danger col-3' href="01.html" role="button">예</a>
            </div>
        </div>
    </div>
</div>