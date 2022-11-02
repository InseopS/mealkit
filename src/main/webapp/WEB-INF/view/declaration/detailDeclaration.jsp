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
    <style>

    </style>
</head>
<header>

<%@ include file ='../include/headerTop.jsp'%>
<div id='subOuter' class='row d-block d-sm-none d-flex mx-0'>
    <a class='material-icons hBack m-2' onClick='history.back()'>arrow_back_ios</a>
    <div id="menuName">
        <h3>상품평 신고 내역</h3>
    </div>
</div>
<%@ include file ='../include/headerBottom.jsp'%>

<body>
    <div id='mainContainerAddSub' class='container'>
        <div style='width: 1px; height: 1px;'></div>
        <div class='row inputBox mt-3'>
            <p class='col-2 pr-2'>대상:</p>
            <div class='col pl-1'>
                <p>[대출] 최대 5000만원까지 대출해드립니다.</p>
            </div>
        </div>
        <hr class='mt-0'>
        <div class='row inputBox'>
            <p class='col-2 pr-2'>제목:</p>
            <div class='col pl-1'>
                <p>대출광고 신고합니다.</p>
            </div>
        </div>
        <hr class='mt-0'>
        <div class='row inputBox'>
            <p class='col-2 pr-2'>내용:</p>
            <div class='col pl-1'>
                <p>대출광고라 신고합니다.</p>
            </div>
        </div>
        <hr class='mt-5'>
        <div class='row mt-4 d-flex justify-content-end'>
            <a class='btn btn-secondary mr-3 col-2' href='#' data-toggle='modal' data-target='#declarationDelModal' role='button'>삭제</a>
        </div>
    </div>

    <div class='modal fade' id='declarationDelModal' tabindex='-1'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class='modal-header py-2'>
                    <p class='modal-title float-left' id='declarationDelModalLabel'>상품평 신고</p>
                    <button bype='button' class='close' data-dismiss='modal'>
                        <span>&times;</span>
                    </button>
                </div>
                <div class='modal-body text-center'>
                    <p>삭제하시겠습니까?</p>
                </div>
                <div class='modal-footer py-1'>
                    <button type='button' class='btn btn-primary col-3' data-dismiss='modal'>아니오</button>
                    <a class='btn btn-danger col-3' href='02.html' role='button'>예</a>
                </div>
            </div>
        </div>
    </div>
</body>

<%@ include file ='../include/footer.jsp'%>

</html>