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
<script>
	function listCart() {
		$('.cartList').empty();
		
		$.ajax({
			method:'post',
			url:"<%=request.getContextPath() %>/cart/getCarts/"
		}).done(cartList => {
			console.log(cartList)
			if(cartList.length) {
				const cartArr = []
				
				$.each(cartList, (i, cart) => {
					console.log(cart)
					cartArr.unshift(
						`<tr>
							<td><input type='checkbox' name='cartNum' id='cartNum'
									value='\${cart.cartNum}'/></td>//체크박스
							<td class='mealkitImage'><a href='http://localhost/mealkit/detailMealkit?mealkitNum=\${cart.mealkitNum}'>
									\${cart.mealkitImgFileName}</td>//밀키트이미지 + 밀키트상세
							<td>\${cart.mealkitName}<br><br>\${cart.mealkitCount}개<br>
									\${cart.mealkitCount * cart.price}원</td>//밀키트이름 + 밀키트수량 + 밀키트수량 * 가격
						<tr>`
					);
				})
				$('.cartList').append(cartArr.join(''))
			} else {
				$('.cartList').append('<tr><td colspan=6 class=text-center>장바구니에 상품이 없습니다.</td></tr>')
			}
		})
	}
	
	function init() {
		$(listCart)
		
		$('#delBtn').click(() => {
			if($('#cartNum:checked').val()) {
            	$('#modalMsg').text('노동자를 삭제하시겠습니까?') 
            	$('#confirmBtn').hide()
 				$('#noBtn').show()
 				$('#delCartBtn').show()
            	$('#modal').modal()
        	} else {
        		$('#modalMsg').text('삭제할 밀키트를 선택해주세요.')
        		$('#confirmBtn').show()
 				$('#noBtn').hide()
 				$('#delCartBtn').hide()
            	$('#modal').modal()
        	}
    	})

    	$('#delCartBtn').click(() => {
    		$('#modal').modal('hide')
	    	$.ajax({
	        	url: 'del/' + $('#cartNum:checked').val(),
				method: 'delete',
	    	}).done(listCarts)
		}) 	
	}

	$(init)
</script>

<style>
tr, td {
   border: 1px solid lightgray;
}

#cart1 {
	width: 100%;
	text-align: center;
}
</style>
</head>

<%@ include file ='../include/headerTop.jsp'%>
<div id='subOuter' class='row d-block d-sm-none d-flex mx-0'>
	<a class='material-icons hBack m-2' onClick='history.back()'>arrow_back_ios</a>
	<div id='menuName'>
	    <h3>장바구니</h3>
	</div>            
</div>
<%@ include file ='../include/headerBottom.jsp'%>

<body>
	<div class='container' id='mainContainerAddSub'>
		<form action='<%=request.getContextPath() %>/order/addOrder'>
            <div class='row mt-5'>    
                <div class='col'>
                    <table id='cart1'>
                        <tbody class='cartList'>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class='row justify-content-end mt-3 mr-2'>
                <button type='button' id='delBtn' class='btn btn-secondary mr-2'>삭제</button>
                <input type='submit' id='orderBtn' value='구매' class='btn btn-secondary'>
            </div>
        </form>
	</div>
    <div class='modal fade' id='modal' tabindex='-1'>
	    <div class='modal-dialog'>
	        <div class='modal-content'>
	            <div class='modal-header py-2'>
	                <p class='modal-title float-left' id='modalLabel'></p>
	                <button type='button' class='close' data-dismiss='modal'>
	                    <span>&times;</span>
	                </button>
	            </div>
	            <div class='modal-body text-center'>
	                <p id='modalMsg'></p>
	            </div>
	            <div class='modal-footer py-1'>
	                <button type='button' id='confirmBtn' class='btn btn-primary col-3' data-dismiss='modal'>확인</button>
	                <button type='button' id='noBtn' class='btn btn-danger col-3' data-dismiss='modal'>아니오</button>
	                <button type='button' class='btn btn-primary col-3' id='delCartBtn' 
                    		onclick="location.href='<%=request.getContextPath() %>/cart/listCart'">예</button>
	            </div>
	        </div>
	    </div>
	</div>
</body>
<%@ include file ='../include/footer.jsp'%>
</html>



