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
                    <button type='button' class='btn flex-fill ml-0.5 mr-4 bg-dark text-white'
                        onclick='location.href="listOrder"'>주문내역</button>
                    <button type='button' class='btn flex-fill btn-outline-dark mr-4'
                        onclick='location.href="../exchange/listExchange"'>교환내역</button>
                    <button type='button' class='btn flex-fill btn-outline-dark'
                        onclick='location.href="../return/listReturn"'>반품내역</button>
                </nav>
                <hr style='border: solid 1px'>
            </div>
        </div>
    </div>
    <div class='row'>
        <div class='col ml-3 mt-2 mb-1'>
            <b>주문번호</b>&ensp;000005
        </div>
    </div>
    <hr class='mt-0 ml-3 mr-3 mb-2'>
    <div class='row'>
        <div class='col-4'>
            <div class='ml-3 mt-2 mr-0 rounded border'
                style='width: 6rem; height: 6rem; background-color: white; justify-content: center; align-items: center; text-align: center;'>
                <br>
                <span><small>감바스</small></span>
                <p><small>이미지</small></p>
            </div>
            <div class='col mt-2 ml-4 mr-3'>
                <small><b>주문완료</b></small>
            </div>
        </div>
        <div class='col-4 mt-5'>
            <span><small>감바스</small></span>
            <p><small>3개 / 29000원</small></p>
        </div>
        <div class='col-3 mt-2 ml-4'>
        	<p style='margin-top: 0px; margin-bottom: -20px;'>
            	<a href='detailOrder' class='link flex-fill text-dark' style='text-decoration: underline;' role='button'><small>주문상세</small></a>
            </p>
            	<br>
            <p style='margin-top: 0px; margin-bottom: -20px;'>
	            <a href='listOrder' class='link flex-fill text-dark' style='text-decoration: underline;' role='button' data-toggle='modal'
	                data-target='#orderCancelModal'><small>주문취소</small>
	            </a></p>
	      		<br>
            <p style='margin-top: 0px; margin-bottom: -20px;'>
            	<a href='../exchange/applyExchange' class='link flex-fill text-dark' style='text-decoration: underline;' role='button'><small>교환신청</small></a>
            </p>
            	<br>
            <p style='margin-top: 0px; margin-bottom: -20px;'>
            	<a href='../return/applyReturn' class='link flex-fill text-dark' style='text-decoration: underline;' role='button'><small>반품신청</small></a>
            </p>
            	<br>
            <p style='margin-top: 0px; margin-bottom: -20px;'>
            	<a href='../review/addReview' class='link flex-fill text-dark' style='text-decoration: underline;' role='button'><small>리뷰작성</small></a>
            </p>
         	
        </div>
    </div>
    <hr class='mt-2 ml-3 mr-3 mb-2'>
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
                    <p>주문을 취소 하시겠습니까?</p>
                </div>
                <div class='modal-footer py-1'>
                    <button type='button' class='btn btn-danger col-3' data-dismiss='modal'>아니오</button>&emsp;
                    <button type='button' class='btn btn-primary col-3' data-dismiss='modal' data-toggle='modal'
                        data-target='#deleteOkModal'>예</button>
                </div>
            </div>
        </div>
    </div>
</body>

<%@ include file ='../include/footer.jsp'%>

</html>