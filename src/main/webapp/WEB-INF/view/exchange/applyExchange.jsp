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
function applyExchange() {
	$('#addBtn').click(() => {
		let mealkitName = $('#mealkitName');
		let exchangeReasonName = $('#exchangeReasonName').val();
		let exchangeContent = $('#exchangeContent');
		let exchangeImgFileName = $('#exchangeImgFileName').val();
		
		$.ajax({
			type:'post',
			url: '${pageContext.request.contextPath}/exchange/applyExchange',
			data: {
				mealkitName: mealkitName,
				exchangeReasonName: exchangeReasonName,
				exchangeContent: exchangeContent,
				exchangeImgFileName: exchangeImgFileName
			}
		})		
	}
}

$(applyExchange)
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
        <form class='exchange-request mt-5 ml-2 mb-2'>
            <div class='row'>
                <div class='col-5 mt-3 ml-3'>
                    <br>교환상품<span style='font-size:12px'></span>
                </div>
                <div class='col mt-3' id='mealkitName'>
                    <br>${exchange.mealkitName}<span style='font-size:12px'></span>
                </div>
            </div>
            <div class='row'>
                <div class='col-5 mt-1 ml-3'>
                    <br>교환사유<span style='font-size:12px'>(필수)</span>
                </div>
                <div class='col mt-3' name='exchangeReasonName'  id='exchangeReasonName' required title='교환사유를 선택하세요.'>
                    <select style='width:8rem; height:3rem'>
                        <option value='none' selected hidden>선택</option>                
                        <option value='1'>품질이상</option>
                        <option value='2'>오배송</option>
                        <option value='3'>기타</option>
                    </select>
                </div>
            </div>
            <div class='row'>
                <div class='col ml-3'>
                    <br>상세사유<span style='font-size:12px'>(선택)</span><br>
                    <textarea maxlength='2000' style='resize: none;' cols='34' rows='5' placeholder='내용을 입력해주세요.'
                        name='exchangeContent' id='exchangeContent'></textarea>
                </div>
            </div>
            <div class='row'>
                <div class='col mt-2 ml-3 mb-3'>
                    이미지등록<span style='font-size:12px'>(필수)&emsp;&ensp;</span>
                    <input type='file' class='form-control' id='exchangeImgFileName' name='exchangeImgFileName' required>
                    <div class="select_img"><img src="" /></div>
                    <script>
       	     			$("#noticeImgFile").change(function(){
                        	if(this.files && this.files[0]) {
								var reader = new FileReader;
                     	  		reader.onload = function(data) {
                    	    		$(".select_img img").attr("src", data.target.result).width(500);        
                    	    	}
                    	    	reader.readAsDataURL(this.files[0]);
                    	   }
       	        		});
                    </script>
                </div>
            </div>
            <div class='row justify-content-end mr-1'>
                <div class='col-5 mt-4 '>
                    <button type='button' class='btn btn-secondary btn-sm'
                        onclick='location.href="../order/listOrder"' id='cancelBtn'>취소</button>
                    <button type='submit' class='btn btn-secondary btn-sm' data-toggle='modal'
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
                    <button type='submit' class='btn btn-primary col-3' data-dismiss='modal' data-toggle='modal'
                        data-target='#requestOkModal' onclick='location.href="listExchange"'>예</button>
                </div>
            </div>
        </div>
    </div>
</body>

<%@ include file ='../include/footer.jsp'%>

</html>