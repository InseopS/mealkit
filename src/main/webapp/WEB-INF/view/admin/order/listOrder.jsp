<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<title>EAZEN MEALKIT</title>
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
    <%@ include file ='../../include/adminTop1.jsp'%>
                    <h2 style='display: inline'>주문</h2>
                    <h6><a href='01.html' class='font-weight-bold' role='button'>주문완료리스트</a></h6>
                    <h6><a href='02.html' role='button'>취소리스트</a></h6>
                    <h6><a href='../exchange/01.html' role='button'>교환리스트</a></h6>
                    <h6><a href='../return/01.html' role='button'>반품리스트</a></h6>
	<%@ include file ='../../include/adminTop2.jsp'%>
            <div class='col' style='border: 1px solid'>
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
                                        <col width='20%'>
                                        <col width='16%'>
                                        <col width='20%'>
                                        <col width='20%'>
                                        <col width='12%'>
                                        <col width='12%'>
                                    </colgroup>
                                    <thead class='table-info'>
                                        <tr>
                                            <th>주문번호</th>
                                            <th>아이디</th>
                                            <th>주문상품</th>
                                            <th>수량 / 금액</th>
                                            <th>결제방법</th>
                                            <th>주문상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
	                                     <tr><td>000005</td><td>yeon2</td><td>감바스</td><td>3개 / 29000원</td><td>카드</td><td>주문완료</td></tr>
	                                     <tr><td>000004</td><td>ina1</td><td>미나리 감자탕</td><td>1개 / 10000원</td><td>카드</td><td>주문완료</td></tr>
                                    </tbody>
                                </table>
                                <hr class='my-0'>
                            </div>
                        </div>
                    </div>
                </div>
                <hr style='position: relative; bottom: 13%;'>
        	</div>
        </div>
    </div>
</body>

<%@ include file ='../../include/adminFooter.jsp'%>

</html>