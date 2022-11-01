<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>
<title>EZEN Mealkit</title>
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
<style>

</style>
</head>

<%@ include file ='../include/headerTop.jsp'%>
<div id='subOuter' class='row d-block d-sm-none d-flex mx-0'>
    <a class='material-icons hBack m-2' onClick='history.back()'>arrow_back_ios</a>
    <div id="menuName">
        <h3>반품내역</h3>
    </div>
</div>
<%@ include file ='../include/headerBottom.jsp'%>

<body>
    <div id='mainContainerAddSub' class="container">
        <div class='row'>
            <div class='col'>
                <nav class='d-flex mt-3 justify-content-center'>
                    <button type='button' class='btn flex-fill btn-outline-dark mr-4'
                        onclick='location.href="../order/list"'>주문내역</button>
                    <button type='button' class='btn flex-fill btn-outline-dark mr-4'
                        onclick='location.href="../exchange/list"'>교환내역</button>
                    <button type='button' class='btn flex-fill ml-0.5 bg-dark text-white'
                        onclick='location.href="list"'>반품내역</button>
                </nav>
                <hr style='border:solid 1px'>
            </div>
        </div>
    </div>
    <div class='row'>
        <div class='col ml-3 mt-2 mb-1'>
            <b>주문번호</b>&ensp;000001
        </div>
    </div>
    <hr class='mt-0 ml-3 mr-3 mb-2'>
    <div class='row'>
        <div class='col-4'>
            <div class='ml-3 mt-2 mr-0 rounded border'
                style='width: 6rem; height: 6rem; background-color: white; justify-content: center; align-items: center; text-align: center;'>
                <br>
                <small>바질파스타<br>이미지</small>
            </div>
            <div class='col mt-2 ml-2 mr-2 p-2'>
                <small><b>반품처리상태</b></small>
            </div>
        </div>
        <div class='col-4 mt-5'>
            <small>바질파스타<br>1개 / 19900원</small>
        </div>
        <div class='col-3 mt-5 ml-4'>
            <a href='02.html' class='link flex-fill text-dark mt-5' role='button' data-toggle='modal'
                data-target='#returnCancelModal'><small><u>반품취소</u></a></small>
        </div>
    </div>
    <hr class='mt-2 ml-3 mr-3 mb-2'>
    <div class="row d-flex mx-auto fixed-bottom mb-5" id='pagingDiv'>
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="#">&lt;</a></li>
                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">&gt;</a></li>
            </ul>
        </nav>
    </div>
    <div class='modal fade' id='returnCancelModal' tabindex='-1'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class='modal-header py-2'>
                    <p class='modal-title float-left' id='myModalLabel'>반품취소</p>
                    <button type='button' class='close' data-dismiss='modal'>
                        <span>&times;</span>
                    </button>
                </div>
                <div class='modal-body text-center'>
                    <p>반품을 취소 하시겠습니까?</p>
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