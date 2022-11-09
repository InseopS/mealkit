<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<html>
<head>
	<meta charset="utf-8">
	<title>EAZEN MEALKIT</title>
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
    
    <script>
   	function listOrders() {
   		$('#orders').empty()
   		
   		$.ajax({
   			method: 'post',
   			url: "<%=request.getContextPath()%>/order/listOrder"
   		}).done(orders => {
   			if(orders.length) {
   				const orderArr = []
   				
   				$.each(orders, (i, order) => {
   					orderArr.unshift(
   							`<div class='row' id='orderNum'>
						        <div class='col ml-3 mt-2 mb-1'>
						            <b>주문번호</b>&ensp;\${order.orderNum}
						        </div>
						    </div>
						    <hr class='mt-0 ml-3 mr-3 mb-2'>
						    <div class='row'>
						        <div class='col-4'>
						            <div class='ml-3 mt-2 mr-0 rounded border'
						                style='width: 6rem; height: 6rem; background-color: white; justify-content: center; align-items: center; text-align: center;'>
						                <br>
						                <span><small>\${mealkit.mealkitName}</small></span>
						                <p><small>이미지</small></p>
						            </div>
						            <div class='col mt-2 ml-4 mr-3'>
						                <small><b>\${orderStatus}</b></small>
						            </div>
						        </div>
						        <div class='col-4 mt-5'>
						            <span><small>\${mealkit.mealkitName}</small></span>
						            <p><small>\${order.mealkitCount}개 / \(${order.mealkitCount} * ${mealkit.Price})원</small></p>
						        </div>
						    </div>`
   					);
   				})
   				
   				$('#orders').append(orderArr.join(''))
   			} else {
   				$('#orders').append('<div class=text-center>주문내역이 없습니다.</div>')
   			}
   		})
   		
   	}
   	
   	$(listOrders)
   	
   	function init() {
   		$(listOrders)
   		
   			$('#orderCancelBtn').click(() => {
	            $('#orderCancelModal').modal()
	            $('#modalMsg').empty();
				$('#modalMsg').text('주문을 취소하시겠습니까?');
				$('#modalBtn').show();
				$('#modal').modal();

   			$('#exchangeApplyBtn')
   			
   			$('#ruturnApplyBtn')
   			
   			})
   			
   			
   	}
   	
   	$(init);
    </script>
    <style>
        #paging_div {
            background-color: white;
            justify-content: center;
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
        	font-size: 13px;
        }
    </style>
</head>

<%@ include file ='../include/headerTop.jsp'%>
<div id='subOuter' class='row d-block d-sm-none d-flex mx-0'>
   <a class='material-icons hBack m-2' onClick='history.back()'>arrow_back_ios</a>
   <div id='menuName'>
       <h3>주문내역</h3>
   </div>            
</div>
<%@ include file ='../include/headerBottom.jsp'%>

<body>
    <div id='mainContainerAddSub' class='container'>
        <div class='row'>
            <div class='col'>
                <nav class='d-flex mt-3 justify-content-center'>
                    <button type='button'class='btn flex-fill ml-0.5 mr-4 bg-dark text-white'
                        onclick='location.href="listOrder"'>주문내역</button>
                    <button type='button' id='listExchangeBtn' class='btn flex-fill btn-outline-dark mr-4'
                        onclick='location.href="../exchange/listExchange"'>교환내역</button>
                    <button type='button' id='listReturnBtn' class='btn flex-fill btn-outline-dark'
                        onclick='location.href="../returnMealkit/listReturn"'>반품내역</button>
                </nav>
                <hr style='border: solid 1px'>
            </div>
        </div>
        <div class='row'>
        <div class='col'>
               <b>주문번호</b>&ensp;000005
              </div>
           <div class='col'>
            <a href='detailOrder' class='link flex-fill text-dark' id='detailOrderBtn' role='button'
                style='text-decoration: underline; float: right; float: bottom;'><small>주문상세</small></a>
          </div>
       </div>
       <hr class='mt-2 mb-2'>
       <div class='row'>
             <div class='col'>
                 <table class='table table-sm table-borderless ml-0' id='table'>
                     <tbody>
                         <tr>
                           <td>밀키트명</td>
                           <td>감바스</td>
                           <td><a href='listOrder' class='link flex-fill text-dark' id='orderCancelBtn'
				            	style='text-decoration: underline; float: right;' role='button' data-toggle='modal'
				                data-target='#orderCancelModal'><b>주문취소</b></a></td>
                         </tr>
                        <tr>
                            <td>수량</td>
                            <td>3개</td>
                            <td><a href='../exchange/applyExchange' class='link flex-fill text-dark' id='exchangeApplyBtn'
            					style='text-decoration: underline; float: right;' role='button'><b>교환신청</b></a></td>
                         </tr>
                         <tr>
                            <td>가격</td>
                            <td>29000원</td>
                            <td><a href='../returnMealkit/applyReturn' class='link flex-fill text-dark' id='ruturnApplyBtn'
            					style='text-decoration: underline; float: right;' role='button'><b>반품신청</b></a></td>
                         </tr>
                         <tr>
                            <td>주문상태</td>
                            <td>주문완료</td>
                            <td><a href='../review/addReview' class='link flex-fill text-dark' id='addReviewBtn'
            					style='text-decoration: underline; float: right;' role='button'><b>리뷰작성</b></a></td>
                         </tr>                
                     </tbody>
                 </table><hr class='mt-3 mb-2'>
           </div>
        </div>
    </div>
    
    

        
    </div>
   
    <div class='row d-flex mx-auto fixed-bottom mb-5' id='paging_div'>
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="#">&lt;</a></li>
                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">&gt;</a></li>
            </ul>
        </nav>
    </div>
    <div class='modal fade' id='orderCancelModal' tabindex='-1'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class='modal-header py-2'>
                    <p class='modal-title float-left' id='myModalLabel'>주문취소</p>
                    <button type='button' class='close' data-dismiss='modal'>
                        <span>&times;</span>
                    </button>
                </div>
                <div class='modal-body text-center'>
                    <p id='modalMsg' style='text-align: center'></p>
                </div>
                <div class='modal-footer py-1' id='modalBtn'>
                    <button type='button' class='btn btn-danger col-3' data-dismiss='modal' id='orderCancelNoBtn'>아니오</button>&emsp;
                    <button type='button' class='btn btn-primary col-3' data-dismiss='modal'
                    	id='orderCancelOkBtn' data-toggle='modal' data-target='#orderCancelModal'>예</button>
                </div>
            </div>
        </div>
    </div>
</body>

<%@ include file ='../include/footer.jsp'%>

</html>