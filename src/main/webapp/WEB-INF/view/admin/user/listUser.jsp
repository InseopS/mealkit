<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<head>
    <title>EAZEN MEALKIT</title>
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
                <h3 id='logo'><a href='../main.html'>EZEN MEALKIT</a></h3>
            </div>
            <div class='col' id='title'>
                <div style='float: left'>
                    <h2 style='display: inline'>회원조회</h2>&ensp;
                </div>
                <div style='float: right'><a href='../../main.html'>로그아웃</a></div>
            </div>
        </div>
        <div class='row'>
            <div class='col-2' id='menu'>
                <ul class='mt-3 p-1'>
                    <li><a href='../mealkit/01.html'><span class='material-icons mr-2'>shopping_bag</span>상품</a></li>
                    <li><a href='../notice/01.html'><span class='material-icons mr-2'>sell</span>공지사항</a></li>
                    <li><a href='../review/01.html'><span class='material-icons mr-2'>computer</span>리뷰</a></li>
                    <li><a href='../order/01.html'><span class='material-icons mr-2'>article</span>주문</a></li>
                    <li><a href='../declaration/01.html'><span class='material-icons mr-2'>report</span>신고</a></li>
                    <li><a href='../question/01.html'><span class='material-icons mr-2'>forum</span>문의</a></li>
                    <li><a href='../faq/01.html'><span class='material-icons mr-2'>chat_bubble_outline</span>FAQ</a>
                    </li>
                    <li><a href='01.html'><span class='material-icons mr-2'>people</span>회원조회</a></li>
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
                        <div class='row mt-3'>
                            <label class='col-2 col-form-label' style='text-align: right; font-weight: 600;'>검색:
                            </label>
                            <div class='col px-0'>
                                <input type='text' class='form-control' id='userId' placeholder='회원아이디 또는 회원이름을 입력해주세요.'>
                            </div>
                            <div class='col-2 d-flex'>
                                <button type='button' id='serchUser' class='btn btn-secondary'>검색</button>
                            </div>
                        </div>

                        <div class='row mt-5'>
                            <div class='col'>
                                <table class='table table-hover my-0'>
                                    <colgroup>
                                        <col width='5%'>
                                        <col width='13%'>
                                        <col width='13%'>
                                        <col width='13%'>
                                        <col width='18%'>
                                        <col width='38%'>
                                    </colgroup>
                                    <thead class='table-info'>
                                        <tr>
                                            <th scope='col'></th>
                                            <th scope='col'>회원번호</th>
                                            <th scope='col'>아이디</th>
                                            <th scope='col'>이름</th>
                                            <th scope='col'>연락처</th>
                                            <th scope='col'>주소</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th><input type='checkbox' class='mt-3'></th>
                                            <td class='align-middle'>0010</td>
                                            <td class='align-middle'>projectmk</td>
                                            <td class='align-middle'>김민석</td>
                                            <td class='align-middle'>010-5555-0000</td>
                                            <td>서울특별시 관악구 신림로 340(신림동)<br>르네상스쇼핑몰 601호 (08754)</td>
                                        </tr>
                                        <tr>
                                            <th><input type='checkbox' class='mt-3'></th>
                                            <td class='align-middle'>0009</td>
                                            <td class='align-middle'>seop2</td>
                                            <td class='align-middle'>송인섭</td>
                                            <td class='align-middle'>010-9876-5678</td>
                                            <td>서울특별시 관악구 신림로 340(신림동)<br>르네상스쇼핑몰 602호 (08754)</td>
                                        </tr>
                                        <tr>
                                            <th><input type='checkbox' class='mt-3'></th>
                                            <td class='align-middle'>0008</td>
                                            <td class='align-middle'>rightarm</td>
                                            <td class='align-middle'>양승일</td>
                                            <td class='align-middle'>010-1111-2222</td>
                                            <td>서울특별시 관악구 신림로 340(신림동)<br>르네상스쇼핑몰 102호 (08754)</td>
                                        </tr>
                                        <tr>
                                            <th><input type='checkbox' class='mt-3'></th>
                                            <td class='align-middle'>0007</td>
                                            <td class='align-middle'>writerHan</td>
                                            <td class='align-middle'>한석봉</td>
                                            <td class='align-middle'>010-1592-1592</td>
                                            <td>서울특별시 관악구 신림로 340(신림동)<br>르네상스쇼핑몰 202호 (08754)</td>
                                        </tr>
                                        <tr>
                                            <th><input type='checkbox' class='mt-3'></th>
                                            <td class='align-middle'>0006</td>
                                            <td class='align-middle'>ezen01</td>
                                            <td class='align-middle'>한아름</td>
                                            <td class='align-middle'>010-1234-5678</td>
                                            <td>서울특별시 관악구 신림로 340(신림동)<br>르네상스쇼핑몰 601호 (08754)</td>
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
                    <button type='button' id='delUser' class='btn btn-secondary' data-toggle='modal'
                        data-target='#userDelModal'>삭제</button>
                </div>
            </div>
        </div>
    </div>

    <div class='modal fade' id='userDelModal' tabindex='-1'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class='modal-header py-2'>
                    <p class='modal-title float-left' id='ModalLabel'>삭제</p>
                    <button bype='button' class='close' data-dismiss='modal'>
                        <span>&times;</span>
                    </button>
                </div>
                <div class='modal-body text-center'>
                    <p>선택한 회원을 삭제하시겠습니까?</p>
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