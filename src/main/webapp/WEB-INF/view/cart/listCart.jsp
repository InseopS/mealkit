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
</script>

<style>
tr, td {
   border: 1px solid lightgray;
}

.cartList {
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
                    <table>
                        <tbody class='cartList'>
                        	<c:forEach var="cart" items="${cartList}">
                            <tr>
                                <td width='13%' id='cartNum'>
                                	<input type='checkbox' value='${cart.userId}, ${cart.mealkitNum}' name='cartNum' id='cartNum'>
                                	<input type='hidden' value='${cart.mealkitNum}' name='mealkitNum' id='mealkitNum'>
                                </td>
                                <td class='mealkitImage' id='image'>
                                	<input type='hidden' value='${cart.userId}, ${cart.mealkitNum}' name='cartNum' id='cartNum'>
                                    <a href='/mealkit/detailMealkit?mealkitNum=${cart.mealkitNum}'>
                                    	<img style='width:150px; height:150px;' src='<c:url value='/attach/${cart.mealkitImgfileName}'/>'/>
                                    </a>
                                </td>
                                <td>
                                	<b>${cart.mealkitName}</b><br>수량 : ${cart.mealkitCount}<br>가격 : ${cart.price * cart.mealkitCount}원
                                </td>
                            </tr>

                            </c:forEach>
							
							<c:if test="${empty cartList}">
								<div class='text-center'>
									<h6 style='text-align:center'><b>장바구니가 비었습니다.<br>상품을 추가해주세요.</b></h6>
								</div>
							</c:if>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class='row justify-content-end mt-3 mr-2'>
                <button type='button' id='deleteBtn' class='btn btn-secondary mr-2'
                        data-toggle='modal' data-target='#confirmModal'>삭제</button>
                <input type='submit' id='orderBtn' value='구매' class='btn btn-secondary'>
            </div>
        </form>
	</div>
    <div class='modal fade' id='confirmModal' tabindex='-1'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class='modal-header'>
                    <p class='modal-title float-left' id='myModalLabel'>장바구니</p>
                    <button type='button' class='close' data-dismiss='modal'>
                        <span>&times;</span>
                    </button>
                </div>
                <div class='modal-body text-center'>
                    <p id='modalMsg'>상품을 삭제하시겠습니까?</p>
                </div>
                <div class='modal-footer py-1'>
                    <button type='button' class='btn btn-danger col-3' data-dismiss='modal'>아니오</button>&emsp;
                    <button type='button' class='btn btn-primary col-3' id='yesBtn' 
                    		onclick="location.href='<%=request.getContextPath() %>/cart/listCart'">예</button>
                    <input type='hidden' class='btn btn-outline-secondary' data-dismiss='modal' id='okBtn'>
                </div>
            </div>
        </div>
    </div>
</body>
<%@ include file ='../include/footer.jsp'%>
</html>



