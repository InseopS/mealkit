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
function init() {
	$('#exchanges').empty();
	
	$.ajax({
		type: 'post',
		url: "<%=request.getContextPath() %>/admin/exchange/getExchanges"
	}).done(exchanges => {
		if(exchanges.length) {
			const exchangeArr = []
			$.each(exchanges, (i, exchange) => {
				exchangeArr.unshift(
						`<tr>
							<td class='align-middle'>\${exchange.exchangeNum}</td>
							<td class='align-middle'>\${exchange.orderNum}</td>
							<td class='align-middle'>\${exchange.userId}</td>
							<td class='align-middle'>\${exchange.mealkitName}</td>
							<td class='align-middle'>\${exchange.exchangeReasonName}</td>
							<td class='align-middle'>\${exchange.exchangeStatusName}</td>
						<tr>`
				);
			})
			$('#exchanges').append(exchangeArr.join(''))
		} else {
			$('#exchanges').append('<tr><td colspan=6 class=text-center>교환리스트가 비었습니다.</td></tr>')
		}
	})
}

$(init)
</script>
</head>
<body>
<%@ include file ='../../include/adminTop1.jsp'%>
                    <h2 style='display: inline'>주문</h2>
                    <h6><a href='../order/listOrder' role='button'>주문완료리스트</a></h6>
                    <h6><a href='../order/listOrderCancel' role='button'>취소리스트</a></h6>
                    <h6><a href='listExchange' class='font-weight-bold' role='button'>교환리스트</a></h6>
                    <h6><a href='../refund/listRefund' role='button'>환불리스트</a></h6>
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
                                        <col width='10%'>
                                        <col width='20%'>
                                        <col width='14%'>
                                        <col width='27%'>
                                        <col width='15%'>
                                        <col width='14%'>
                                    </colgroup>
                                    <thead class='table-info'>
                                        <tr>
                                            <th>번호</th>
                                            <th>주문번호</th>
                                            <th>아이디</th>
                                            <th>주문상품</th>
                                            <th>사유</th>
                                            <th>주문상태</th>
                                        </tr>
                                    </thead>
                                    <tbody id='exchanges'>
                                        <tr>
                                            <td>${exchanges.exchangeNum}</td><td>${orderNum}</td><td>${userId}</td><td>${mealkitName}</td>
                                            <td>${exchangeReasonName}</td><td>${exchangeStatusName}</td>
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