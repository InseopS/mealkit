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

</style>
</head>
<body>
<%@ include file ='../../include/adminTop1.jsp'%>
                    <h2 style='display: inline'>주문</h2>
                    <h6><a href='../order/listOrder' role='button'>주문완료리스트</a></h6>
                    <h6><a href='../order/listOrderCancel' role='button'>취소리스트</a></h6>
                    <h6><a href='listExchange' class='font-weight-bold' role='button'>교환리스트</a></h6>
                    <h6><a href='../return/listReturn' role='button'>반품리스트</a></h6>
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
                        <div class='row mb-3'>
                            <div class='col text-right align-self-end'>
                                <label for='orderStatus'>선택한 주문:</label>
                            </div>
                            <div class='col-2'>
                                <select class='form-control' name='orderStatus'>
                                    <option value='none' selected hidden>선택</option>
                                    <option value='exchangeIng'>교환처리중</option>
                                    <option value='exchangeDone'>교환완료</option>
                                    <option value='exchangeCancel'>교환취소</option>
                                </select>
                            </div>
                        </div>
                        <div class='row'>
                            <div class='col'>
                                <table class='table table-hover my-0'>
                                    <colgroup>
                                        <col width='5%'>
                                        <col width='10%'>
                                        <col width='17%'>
                                        <col width='14%'>
                                        <col width='17%'>
                                        <col width='17%'>
                                        <col width='10%'>
                                        <col width='10%'>
                                    </colgroup>
                                    <thead class='table-info'>
                                        <tr>
                                            <th></th>
                                            <th>번호</th>
                                            <th>주문번호</th>
                                            <th>아이디</th>
                                            <th>주문상품</th>
                                            <th>수량 / 금액</th>
                                            <th>사유</th>
                                            <th>주문상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><input type='checkbox'/></td>
                                            <td>1</td><td>000002</td><td>rightarm</td><td>마라샹궈</td><td>3개 / 50000원</td><td>오배송</td><td>교환완료</td>
                                        </tr>
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