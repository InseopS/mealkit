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
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<script>
function listFaqs(){
	$('#faqs').empty();
	
	$.ajax({
		type:'get',
		url:"<%=request.getContextPath() %>/admin/faq/list"
	}).done(faqs => {
		if(faqs.length) {
			const faqArr = []
			
			$.each(faqs, (i, faq) => {
				faqArr.unshift(
                    `<tr>
                        <th name='faqNum' id='faqNum'><input type='checkbox' value='\${faq.faqNum}'></th>
                        <td id='faqNum'>\${faq.faqNum}</td>
                        <td id='faqTitle'>//<a href='detailFaq?faqNum=\${faq.faqNum}'>
                        	\${faq.faqTitle}</td>
                    </tr>`
				);
			})
			$('#faqs').append(faqArr.join(''))
		} else {
			$('#faqs').append('<tr><td colspan=5 class=text-center>Q&A가 없습니다.</td></tr>')
		}
	}) 
}
$(listFaqs)

</script>
<style>
    table {
        text-align: center;
    }
</style>
</head>
<body>
	<%@ include file ='../../include/adminTop1.jsp'%>
                    <h2 style='display: inline'>FAQ</h2>&ensp;
                    <h6>Q&A목록</h6>
    <%@ include file ='../../include/adminTop2.jsp'%>
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
                        <div class='row mt-5'>
                            <div class='col'>
                                <table class='table table-hover my-0'>
                                    <colgroup>
                                        <col width='5%'>
                                        <col width='15%'>
                                        <col width='80%'>
                                    </colgroup>
                                    <thead class='table-info'>
                                        <tr>
                                            <th scope='col'></th>
                                            <th scope='col'>번호</th>
                                            <th scope='col'>제목</th>
                                        </tr>
                                    </thead>
                                    <tbody id='faqs'>
                                        <tr>
                                            <th><input type='checkbox'></th>
                                            <td id='faqNum'>0003</td>
                                            <td id='faqTitle' onclick='location.href="<%=request.getContextPath()%>/admin/faq/detailFaq"'>취소/교환/반품] 주문한 상품을 교환받고 싶어요</td>
                                        </tr>
                                        <tr>
                                            <th><input type='checkbox'></th>
                                            <td>0002</td>
                                            <td>회원] 비밀번호를 찾으려면 어떻게 하나요 ?</td>
                                        </tr>
                                        <tr>
                                            <th><input type='checkbox'></th>
                                            <td>0001</td>
                                            <td>배송] 송장이 조회되지 않아요</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <hr class='mt-0'>
                            </div>
                        </div>
                    </div>
                </div>
                <hr style='position: relative; bottom: 13%;'>
                <div id='bottomBtnGroup'>
                    <button type='button' class='btn btn-secondary mr-2' onclick='location.href="<%=request.getContextPath()%>/admin/faq/addFaq"'>작성</button>
                    <button type='button' class='btn btn-secondary' data-toggle='modal' data-target='#deleteModal'>삭제</button>
                </div>
            </div>
        </div>
    </div>

    <div class='modal fade' id='deleteModal' tabindex='-1'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class='modal-header py-2'>
                    <button type='button' class='close' data-dismiss='modal'><span>&times;</span></button>
                </div>
                <div class='modal-body text-center'>
                    <p>선택한 Q&A를 삭제하시겠습니까?</p>
                </div>
                <div class='modal-footer py-1'>
                    <button type='button' class='btn btn-danger col-3' data-dismiss='modal'>아니오</button>&nbsp;&nbsp;
                    <button type='button' class='btn btn-primary col-3' data-dismiss='modal'
                      onclick='location.href="<%=request.getContextPath()%>/admin/faq/listFaq"'>예</button>
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