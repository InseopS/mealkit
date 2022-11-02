<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>8"%>
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
    hr {
        height: 1px;
        background-color: lightgray;
    }
    #contentLogo {
        height: 3.5rem;
        width: 115px;
        margin:0 auto;
        justify-content: center;
        border: solid 1px lightgrey;
        align-items: center;
    }
</style>
</head>
<body>
	<%@ include file ='../../include/adminTop1.jsp'%>
                    <h2 style='display: inline'>공지</h2>&ensp;
                    <h6>공지상세</h6>
    <%@ include file ='../../include/adminTop2.jsp'%>
            <div class='col' style='border: 1px solid'>
                <div class='border w-auto my-3' id='content'>
                    <div class='container mw-100 mt-5' style='width: 98%;'>
                        <div class='row mt-3'>
                            <label for='input' class='col-2 pr-2 col-form-label'>제목:</label>
                            <div class='col pl-1'>
                                <input type='text' class='form-control bg-light' id='noticeTitle' placeholder='제목을 입력해주세요.' value='[공지] 10월 13일(목) EZEN MEALKIT 페이지 구현 일정 안내' disabled>
                            </div>
                        </div>
                        <div class='row mt-3'>
                            <label for='input' class='col-2 pr-2 col-form-label'>내용:</label>
                            <div class='col pl-1'>
                                <div class='form-control bg-light' id='noticeContent' style='overflow-y:scroll; height: 29rem;'>
                                    <div class='row my-5' id='contentLogo'>
                                        <div class='col'>
                                            <p id='noticeImg' class='pt-2'>로고이미지</p>
                                        </div>
                                    </div>
                                    안녕하세요!
                                    <br>
                                    &lt;EZEN MEALKIT&gt; 관리자 입니다.
                                    <br>
                                    10월 13일부터 10월 18일까지 페이지 구현이
                                    <br>
                                    진행될 예정입니다.
                                    <br>
                                    감사합니다.
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class='row mt-4 d-flex justify-content-end'>
                            <button type='button' class='btn btn-secondary mr-1' onClick="location.href='<%=request.getContextPath()%>/admin/notice/listNotice'">목록</button>
                            <button type='button' class='btn btn-secondary mr-1' onClick="location.href='<%=request.getContextPath()%>/admin/notice/fixNotice'">수정</button>
                            <button type='button' class='btn btn-secondary mr-3' data-toggle='modal' data-target='#deleteModal'>삭제</button>
                        </div>
                    </div>
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
    <div class='modal fade' id='deleteModal' tabindex='-1'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class='modal-header py-2'>
                    <p class='modal-title float-left' id='myModalLabel'></p>
                    <button bype='button' class='close' data-dismiss='modal'>
                        <span>&times;</span>
                    </button>
                </div>
                <div class='modal-body text-center'>
                    <p>해당 공지를 삭제하시겠습니까?</p>
                </div>
                <div class='modal-footer py-1'>
                    <button type='button' class='btn btn-danger col-3' data-dismiss='modal'>아니오</button>
                    <button type='button' class='btn btn-primary col-3' onClick="location.href='<%=request.getContextPath()%>/admin/notice/listNotice'">예</button>
                </div>
            </div>
        </div>
    </div>

</footer>