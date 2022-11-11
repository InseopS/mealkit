<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<html>

<head>
<title>EAZEN MEALKIT</title>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://code.jquery.com/jquery-3.6.0.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js'></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js'></script>
<link rel='stylesheet' href='http://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css' />
<link rel='stylesheet' type='text/css' href='../res/lib.css'>
<link href='https://fonts.googleapis.com/icon?family=Material+Icons' rel='stylesheet'>
<link rel='preconnect' href='https://fonts.googleapis.com'>
<link rel='preconnect' href='https://fonts.gstatic.com' crossorigin>
<link href='https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap' rel='stylesheet'>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<style>
        #pagingDiv {
                background-color: white;
                justify-content : center;
            }

            .pagination_section {
                position: relative;
                margin-bottom: 15px;
                width: 80%;
            }

            .pagination_section a {
                color: black;
                padding: 10px 18px;
                text-decoration: none;
            }

            .pagination_section a:hover:not(.active) {
                background-color: #031F3B;
                color: white;
            }
         	
         	#table {
         		font-size: 15px;
         	}
    </style>
<script>
let refundsTmp
let mealkitNamesTmp = []
function listRefunds() {
		$('#refunds').empty();
		
		$.ajax({
			url: "<%=request.getContextPath()%>/refund/getRefunds",
			dataType: 'json',
			success: refunds => {
				if(refunds.length) {
					refundsTmp = refunds
				} else $('#refunds').append('<tr><td colspan=2 class=text-center>환불리스트가 없습니다.</td></tr>')
			}
		}).done(refunds => {
			$.each(refunds, (i, refund) => {
				$.ajax({
					url: 'selectMealkitNames/' + refund.refundNum,
					dataType: 'json',
					async : false,
					success: mealkitNames => {
						if(mealkitNames.length > 1) {
							mealkitNamesTmp.push(mealkitNames[0].mealkitName + " 외 " + (mealkitNames.length-1) + "개")
						} else mealkitNamesTmp.push(mealkitNames[0].mealkitName)
					}
				})
			})
			listTest()
		}) 
	}

function listTest() {
	const refundArr = []
	for(i=0; i <= refundsTmp.length-1; i++) {
		
		refundArr.unshift(
			`<tr>
				<td>주문상품</td>
                <td>\${mealkitNamesTmp[i]}</td>
			</tr>
			<tr>
				<td>결제금액</td>
				<td>임시가격이다안닥ㄴ</td>
			</tr>
			<tr>
				<td>주문상태</td>
				<td>\${refundsTmp[i].refundStatusName}</td>
			</tr>`
		)
	}
	$('#refunds').append(refundArr.join(''))
}
$(listRefunds)
</script>  
</head>

<%@ include file ='../include/headerTop.jsp'%>
<div id='subOuter' class='row d-block d-sm-none d-flex mx-0'>
    <a class='material-icons hBack m-2' onClick='history.back()'>arrow_back_ios</a>
    <div id="menuName">
        <h3>환불내역</h3>
    </div>
</div>
<%@ include file ='../include/headerBottom.jsp'%>

<body>
    <div id='mainContainerAddSub' class="container">
        <div class='row'>
            <div class='col'>
                <nav class='d-flex mt-3 justify-content-center'>
                    <button type='button' class='btn flex-fill btn-outline-dark mr-4'
                        onclick='location.href="../order/listOrder"'>주문내역</button>
                    <button type='button' class='btn flex-fill btn-outline-dark mr-4'
                        onclick='location.href="../exchange/listExchange"'>교환내역</button>
                    <button type='button' class='btn flex-fill ml-0.5 bg-dark text-white'
                        onclick='location.href="listRefund"'>환불내역</button>
                </nav>
                <hr style='border:solid 1px'>
            </div>
        </div>
        <div class='row'>
        	<div class='col'>
            	<b>주문번호&ensp;<span id='orderNum'>10000</span></b>
       	 	</div>
        	<div class='col'>
	  			<div class='mr-2' style='float:right'>
		       	 	<a href='../order/detailOrder' class='link flex-fill text-dark mt-5 mr-2' role='button'
		       	 		style='text-decoration: underline;'><small>주문상세</small></a>
		            <a href='listRefund' class='link flex-fill text-dark mt-5' role='button' data-toggle='modal'
		                data-target='#refundCancelModal' style='text-decoration: underline;'><small>환불취소</small></a>
	            </div>
    		</div>
    	</div>
    	<hr class='mt-2 mb-2'>
    	<div class='row'>
          	<div class='col'>
              	<table class='table table-sm table-borderless ml-0' id='table'>
              		<colgroup>
	                    <col width='30%'>
	                    <col width='70%'>
                     </colgroup>
                  	<tbody id='refunds'>
                      	<tr>
                          <td></td>
                          <td></td>
                      	</tr>
                      	<tr>
                          	<td></td>
                          	<td class='2' id='Totalprice'></td>
                      	</tr>
                      	<tr>
                          	<td></td>
                          	<td></td>
                      	</tr>
                  	</tbody>
              	</table><hr class='mt-3 mb-2'>
        	</div>
        </div>
    </div>
    
 <%--
    <div class='row'>
        <div class='col ml-3 mt-2 mb-1'>
            <b>주문번호</b>&ensp;000001
        </div>
    </div>
    <hr class='mt-0 ml-3 mr-3 mb-2'>
    <div class='row'>
        <div class='col-4'>
            <div class='ml-2' id='mealkitName' style = 'text-align: center;'>
                <br>
                바질파스타
            </div>
            <div class='col mt-2 ml-2 mr-2 p-2' id='refundStatusName'>
                <small><b>환불처리상태</b></small>
            </div>
        </div>
        <div class='col-4 mt-5' >
        	
            <small>바질파스타<br>1개 / 19900원</small>
        </div>
        <div class='col-3 mt-5 ml-4'>
            <a href='listRefund' class='link flex-fill text-dark mt-5' role='button' data-toggle='modal'
                data-target='#refundCancelModal' style='text-decoration: underline;'><small>환불취소</small></a>
        </div>
    </div>
  	<hr class='mt-2 ml-3 mr-3 mb-2'>
 --%>
    <div class="row d-flex mx-auto fixed-bottom mb-5" id='pagingDiv'>
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="#">&lt;</a></li>
                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">&gt;</a></li>
            </ul>
        </nav>
    </div>
    <div class='modal fade' id='refundCancelModal' tabindex='-1'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class='modal-header py-2'>
                    <p class='modal-title float-left' id='myModalLabel'>환불취소</p>
                    <button type='button' class='close' data-dismiss='modal'>
                        <span>&times;</span>
                    </button>
                </div>
                <div class='modal-body text-center'>
                    <p>환불을 취소 하시겠습니까?</p>
                </div>
                <div class='modal-footer py-1'>
                    <button type='button' class='btn btn-danger col-3' data-dismiss='modal'>아니오</button>
                    <button type='button' class='btn btn-primary col-3' data-dismiss='modal' data-toggle='modal'
                        data-target='#deleteOkModal'>예</button>
                </div>
            </div>
        </div>
    </div>
</body>

<%@ include file ='../include/footer.jsp'%>

</html>