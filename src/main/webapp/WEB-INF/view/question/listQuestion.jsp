<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
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
        <h3>1:1문의내역</h3>
    </div>
</div>
<%@ include file ='../include/headerBottom.jsp'%>

<body>
    <div id='mainContainerAddSub' class='container'>
        <div class='row'>
            <div class='col'>
                <table class='table table-sm table-hover text-center mt-3'>
                    <thead class='thead-light'>
                        <tr><th>제목</th><th>작성일</th></tr>
                    </thead>
                    <tbody>
                        <tr><td onclick='location.href="detail"'>마라키트 많이 맵나요?</td><td>2022.10.14</td></tr>
                        <tr><td>배송문의ㅠㅜ</td><td>2022.10.13</td></tr>
                        <tr><td>ㄴ 답변: 배송문의ㅠㅜ</td><td>2022.10.13</td></tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class='row justify-content-end'>
            <div class='col d-flex justify-content-end'>
                <button type='button' class='btn btn-secondary' onclick='location.href="add"'>작성</button>
        </div>
    </div>
    <div class='row d-flex mx-auto fixed-bottom mb-5' id='paging_div'>
        <nav aria-label='Page navigation example'>
            <ul class='pagination'>
                <li class='page-item'><a class='page-link' href='#'>&lt;</a></li>
                <li class='page-item active'><a class='page-link' href='#'>1</a></li>
                <li class='page-item'><a class='page-link' href='#'>&gt;</a></li>
            </ul>
        </nav>
    </div>
</body>

<%@ include file ='../include/footer.jsp'%>
</html>