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
h5 {
	color: #0f56ba
}
</style>
</head>

<%@ include file ='../include/headerTop.jsp'%>
<%@ include file ='../include/headerBottom.jsp'%>

<body><br>
<div class='container' id='mainContainer'>
    <div class='row mt-5 text-center' >
        <div class='col'>
            <h5><b>가입을 환영합니다!</b></h5><hr class='mb-5'>
            <div class='row justify-content-center'>
                <p>ezen01님, 가입을 축하합니다.<br><br>이제 이젠밀키트의<br>신선하고 맛있는 상품을 만나보세요.</p>
            </div>
            <a href='03.html'>
                <div class='row  d-flex mx-auto mt-5'>
                    <button type='button' class='btn btn-primary flex-fill'>로그인</button>
                </div>
            </a>
        </div>
    </div>
</div>
</body>

<%@ include file ='../include/footer.jsp'%>

</html>