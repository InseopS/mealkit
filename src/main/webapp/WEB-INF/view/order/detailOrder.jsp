<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<title>EZEN MEALKIT</title>
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
    <style>
        .orderInfoTitle1 {
            font-size: 12pt;
            text-align: left;
        }

        .orderInfoTitle2 {
            font-size: 9pt;
            text-align: left;

        }

        .orderInfoContent {
            font-size: 9pt;
            text-align: right;
        }
    </style>
</head>

<%@ include file ='../include/headerTop.jsp'%>
<div id='subOuter' class='row d-block d-sm-none d-flex mx-0'>
   <a class='material-icons hBack m-2' onClick='history.back()'>arrow_back_ios</a>
   <div id='menuName'>
       <h3>주문상세</h3>
   </div>            
</div>
<%@ include file ='../include/headerBottom.jsp'%>

<body>
	<div id='mainContainerAddSub' class='container'>
	    <div class='row'>
	        <div class='col mt-3 mb-1'>
	            <b>주문번호</b>&ensp;000005
	        </div>
	    </div>
	    <hr class='mt-0 mb-2'>
        <div class='row'>
            <div class='col-4'>
                <div class='mt-2 mr-0 rounded border' style='width: 6rem; height: 6rem; background-color: white; justify-content: center; align-items: center; text-align: center;'>
                    <br>
                    <span><small>감바스</span><p>이미지</p></small>
                </div>
                <div class='col mt-2 ml-2 mr-3'>
                    <small><b>주문완료</b></small>
                </div>
            </div>
            <div class='col-4 mt-5'>
                <span><small>감바스</span><p>3개 / 29000원</p></small>
            </div>
        </div>
	    <hr class='mt-2 mr-2 mb-2'>
		<div class='row'>
		    <div class='col'>
		        <table class='table table-sm table-borderless ml-0'>
		            <tr><th class='orderInfoTitle1'>주문상세</th><th></th></tr>
		            <tbody>
		                <tr>
		                    <td class='orderInfoTitle2'>주문일자</td>
		                    <td class='orderInfoContent'>2022-10-13</td>
		                </tr>
		                <tr>
		                    <td class='orderInfoTitle2'>주문자</td>
		                    <td class='orderInfoContent'>김연이</td>
		                </tr>
		            </tbody>
		        </table><hr class='mt-3 mb-2'>
		
		        <table class='table table-sm table-borderless ml-0'>
		            <tr><th class='orderInfoTitle1'>결제상세</th><th></th></tr>
		            <tbody>
		                <tr>
		                    <td class='orderInfoTitle2'>결제수단</td>
		                    <td class='orderInfoContent'>카드결제</td>
		                </tr>
		                <tr>
		                    <td class='orderInfoTitle2'>주문금액</td>
		                    <td class='orderInfoContent'>29000원</td>
		                </tr>
		                <tr>
		                    <td class='orderInfoTitle2'>배송비</td>
		                    <td class='orderInfoContent'>무료</td>
		                </tr>
		                <tr>
		                    <td class='orderInfoTitle2'><b>총 결제금액</b></td>
		                    <td class='orderInfoContent'><b>29000원</b></td>
		                </tr>
		            </tbody>
		        </table><hr class='mt-3 mb-2'>
		
		        <table class='table table-sm table-borderless ml-0'>
		            <tr><th class='orderInfoTitle1'>배송지</th><th></th></tr>
		            <tbody>
		                <tr>
		                    <td class='orderInfoTitle2'>수령인</td>
		                    <td class='orderInfoContent'>김연이</td>
		                </tr>
		                <tr>
		                    <td class='orderInfoTitle2'>연락처</td>
		                    <td class='orderInfoContent'>010-1234-1212</td>
		                </tr>
		                <tr>
		                    <td class='orderInfoTitle2'>우편번호</td>
		                    <td class='orderInfoContent'>08754</td>
		                </tr>
		                <tr>
		                    <td class='orderInfoTitle2'>주소</td>
		                    <td class='orderInfoContent'>
		                    서울특별시 관악구 신림로340(신림동)<br>
		                    <p class='orderInfoContent'>르네상스쇼핑몰 603호</p></td>
		                </tr>
		                <tr>
		                    <td class='orderInfoTitle2'>요청사항</td>
		                    <td class='orderInfoContent'>없음</td>
		                </tr>
		            </tbody>
		        </table><hr class='mt-5 mb-2'>
		    </div>
		</div>
        <div class='row d-flex mx-auto mt-5'>
            <a href='order/list' class='btn flex-fill bg-dark text-white mt-5 mb-4' role='button'>주문내역</a>
        </div>
    </div>
</body>

<%@ include file ='../include/footer.jsp'%>

</html>