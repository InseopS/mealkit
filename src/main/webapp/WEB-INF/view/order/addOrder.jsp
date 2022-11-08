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
<link href='https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap' rel='stylesheet'>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<style>
table {
    width: 100%;
    border-collapse: collapse;
    text-align: center;
    border: 1px solid lightgray;
}

th {
    border: 1px solid lightgray;
    padding: 20px;
}

td {
    border: 1px solid lightgray;
    padding: 10px;
}

table.total th {
  padding: 25px;
  width: 150px;
}

table.way {
	width: 50%;
    text-align: left;
}

table.way th {
    width: 10%;
    border: 1px solid #444444;
}

h5 {
	color: #0f56ba;
}

</style>
</head>

<%@ include file ='../include/headerTop.jsp'%>
<div id='subOuter' class='row d-block d-sm-none d-flex mx-0'>
	<a class='material-icons hBack m-2' onClick='history.back()'>arrow_back_ios</a>
	<div id='menuName'>
	    <h3>상품 결제</h3>
	</div>            
</div>
<%@ include file ='../include/headerBottom.jsp'%>

<body>
    <div class='container' id='mainContainerAddSub'>
        <div class='row d-flex justify-content-center mt-5'>
            <div class='col'>
                <h5><b>주문 상품</b></h5>
                <table class='list'>
   	                <thead>
       	                <tr>
           	                <th>상품</th><th>수량</th><th>금액</th>
               	        </tr>
                   	</thead>
                   	<tbody>
                       	<tr>
                           	<td>미나리 감자탕</td>
                           	<td>1개</td>
                           	<td>32,000원</td>
                       	</tr>
                       	<tr>
                           	<td>새우 감바스</td>
                           	<td>1개</td>
                           	<td>10,000원</td>
                       	</tr>
                   	</tbody>
               	</table>
       		</div>
       		<form action='<%=request.getContextPath() %>/order/completeOrder'>
            <h5 class='mt-5'><b>배송지</b></h5>
            <div class="container">
                <div class="row inputBox">
                    <label for="input" class="col-3 col-form-label">수령인</label>
                    <div class="col pl-1">
                        <input type='text' class='form-control' id='userName' pattern='.{2,30}' value='${session.getAttribute("userId")}' required title='2글자 이상 30글자 이하를 입력해주세요.'>
                    </div>
                </div>
                <div class="row inputBox">
                    <label for="input" class="col-3 col-form-label">연락처</label>
                    <div class="col pl-1">
                        <input type='text' class='form-control' id='phoneNum' pattern='.{11,13}' value='${user.phoneNum}' required title='-를 포함한 연락처를 입력해주세요.'>
                    </div>
                </div>
                <div class="row inputBox">
                    <label class="col-3 col-form-label" style='font-size: 80%'>우편주소</label>
                    <div class="col pl-1">
                        <input type='number' class='form-control' id='zipCode' value='${user.zipCode}' min='0' max='99999' maxlength='17'>
                    </div>
                </div>
                <div class="row inputBox">
                    <label for="input" class="col-3 col-form-label">주소</label>
                    <div class="col pl-1">
                        <input type="text" class="form-control" id="basicAddress" value='${user.basicAddress}' maxlength='17'>
                    </div>
                </div>
                <div class="row inputBox">
                    <label for="input" class="col-3 col-form-label" style='font-size: 80%'>상세주소</label>
                    <div class="col pl-1">
                        <input type="text" class="form-control" id="detailAddress" value='${user.detailAddress}' maxlength='17'>
                    </div>
                </div>
                <div class="row inputBox">
                    <label for="input" class="col-3 col-form-label" style='font-size: 80%'>요청사항</label>
                    <div class="col pl-1">
                        <input type="text" class="form-control" id="request" maxlength='1300'>
                    </div>
                </div>
            </div>
            <div class='row d-flex justify-content-center mt-5'>
                <div class='col'>
                    <h5><b>결제 합계</b></h5>
                    <table class='total'>
                        <tr>
                            <th>상품 합계</th>
                            <td>${mealkit.price * mealkit.count}원</td>
                        </tr>
                        <tr>
                            <th>배송비</th>
                            <td>무료</td>
                        </tr>
                        <tr>
                            <th>결제 금액</th>
                            <td>${mealkit.price * mealkit.count}원</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class='row d-flex justify-content-center mt-5'>
                <div class='col'>
                    <h5><b>결제 방법</b></h5>
                    <table class='way' name='paymentCode'>
                        <tr>
                            <th><input type='radio' name='payment' value='1'></th>
                            <td>카드 결제</td>
                        </tr>
                        <tr>
                            <th><input type='radio' name='payment' value='2'></th>
                            <td>무통장 입금</td>
                        </tr>
                        <tr>
                            <th><input type='radio' name='payment' value='3'></th>
                            <td>휴대폰 결제</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class='row d-flex justify-content-center mt-1'>
                <input type='submit' class='btn btn-outline-secondary m-5 d-flex justify-content-center' value='구매'>
            </div>
        </form>  
    </div>
</div>
</body>
<%@ include file ='../include/footer.jsp'%>
</html>