<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<html>

<head>
    <title>mealkit.01</title>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <script src='https://code.jquery.com/jquery-3.6.0.min.js'></script>
    <script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js'></script>
    <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js'></script>
    <link rel='stylesheet' href='http://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css' />
    <link href='https://fonts.googleapis.com/icon?family=Material+Icons' rel='stylesheet'>
    <link rel='stylesheet' type='text/css' href='../res/lib.css'>
    <link rel='preconnect' href='https://fonts.googleapis.com'>
    <link rel='preconnect' href='https://fonts.gstatic.com' crossorigin>
    <link href='https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap' rel='stylesheet'>
    <%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<style>
</style>
<script>
function init() {
	$('#addBtn').click(() => {
		if(isVal($('#exchangeReasonCode')) && isVal($('#exchangeImgFileName'))) {
			let orderNum = $('#orderNum');
			let exchangeReasonCode = $('#exchangeReasonCode');
			let exchangeContent = $('#exchangeContent');
			let exchangeImgFileName = $('#exchangeImgFileName');
			
			$.ajax({
				type:'post',
				url: '${pageContext.request.contextPath}/exchange/applyExchange',
				data: {
					orderNum: orderNum,
					exchangeReasonCode: exchangeReasonCode,
					exchangeContent: exchangeContent,
					exchangeImgFileName: exchangeImgFileName
				}
			})
		})
	})
}
</script>
</head>

<%@ include file ='../include/headerTop.jsp'%>
<div id='subOuter' class='row d-block d-sm-none d-flex mx-0'>
	<a class='material-icons hBack m-2' onClick='history.back()'>arrow_back_ios</a>
	<div id='menuName'>
	    <h3>교환신청</h3>
	</div>            
</div>
<%@ include file ='../include/headerBottom.jsp'%>

<body>
    <div id='mainContainerAddSub' class="container">
        <form class='refund-request mt-5 ml-2 mb-2'>
            <div class='row'>
                <div class='col-3 p-2 mt-2 ml-4'>
                    <br>교환상품<span style='font-size:12px'></span>
                </div>
                <div class='col-3' id='orderNum'>
                    <div class='mt-2 rounded border'
                        style='width: 6rem; height: 5rem; background-color: white; justify-content: center; align-items: center; text-align: center;'>
                        <p></p>
                        ${order.mealkitImg}
                    </div>
                </div>
                <div class='col-4 mt-4 ml-4' id='orderNum'>
                   		<small>${order.mealkitName}<br>${order.ordermealkitCount} / ${order.price}</small>
                </div>
            </div>
            <div class='row'>
                <div class='col-5 mt-1 ml-3' id='exchangeReason'>
                    <br>교환사유<span style='font-size:12px'>(필수)</span>
                </div>
                <div class='col mt-3' required title='교환사유를 선택하세요.'>
                    <select name='exchangeReasonCode' style='width:8rem; height:3rem'>
                        <option value='none' selected hidden>선택</option>
                        <option value='poor'>품질 이상</option>
                        <option value='misdelivery'>오배송</option>
                        <option value='etc'>기타</option>
                    </select>
                </div>
            </div>
            <div class='row'>
                <div class='col ml-3' id='exchangeDetailReason'>
                    <br>상세사유<span style='font-size:12px'>(선택)</span><br>
                    <textarea maxlength='2000' style='resize: none;' cols='34' rows='5' placeholder='내용을 입력해주세요.'
                        id='content'></textarea>
                </div>
            </div>
            <div class='row'>
                <div class='col mt-2 ml-3 mb-3' id='exchangeImgFile'>
                    이미지등록<span style='font-size:12px'>(필수)&emsp;&ensp;<input type='file' accept='image/*'
                            style='font-size:11px' required title='이미지를 등록하세요.'></span>                    
                </div>
            </div>
            <div class='row justify-content-end mr-1'>
                <div class='col-5 mt-4 '>
                    <button type='button' class='btn btn-secondary btn-sm'
                        onclick='location.href="../order/listOrder"' id='cancelBtn'>취소</button>
                    <button type='button' class='btn btn-secondary btn-sm' data-toggle='modal'
                        data-target='#exchangeModal' id='addBtn'>신청</button>
                </div>
            </div>
        </form>
    </div>
    <div class='modal fade' id='exchangeModal' tabindex='-1'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class='modal-header'>
                    <p class='modal-title float-left' id='myModalLabel'>교환신청</p>
                    <button bype='button' class='close' data-dismiss='modal'>
                        <span>&times;</span>
                    </button>
                </div>
                <div class='modal-body text-center'>
                    <p>교환을 신청 하시겠습니까?</p>
                    <button type='button' class='btn btn-danger col-3' data-dismiss='modal'>아니오</button>&emsp;
                    <button type='button' class='btn btn-primary col-3' data-dismiss='modal' data-toggle='modal'
                        data-target='#requestOkModal' onclick='location.href="listExchange"'>예</button>
                </div>
            </div>
        </div>
    </div>
</body>

<%@ include file ='../include/footer.jsp'%>

</html>