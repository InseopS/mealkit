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

<%@ include file ='../include/headerTop.jsp'%>
<div id='subOuter' class='row d-block d-sm-none d-flex mx-0'>
    <a class='material-icons hBack m-2' onClick='history.back()'>arrow_back_ios</a>
    <div id="menuName">
        <h3>1:1문의수정</h3>
    </div>
</div>
<%@ include file ='../include/headerBottom.jsp'%>

<body>
    <div id='mainContainerAddSub' class='container'>
        <div class='form-row'>
            <div class='col-2 mt-3 ml-2' > 
                제목 :
            </div>
            <div class='col ml-0 mt-3 mr-0'> 
                <form>
                    <textarea maxlength='50' style='resize: none;' cols='30' rows='1' id='title'>마라키트 많이 맵나요?</textarea>
                </form>
            </div>
        </div>
        <br>
        <div class='form-row'>
            <div class='col-2 mt-0 ml-2'> 
                내용 : 
            </div>
            <div class='col mt-0'> 
                <form>
                    <textarea maxlength='1300' style='resize: none;' cols='30' rows='5' id='content'>애기들도 먹을 수 있나요?????</textarea>
                </form>
            </div>
        </div>
        <br>
        <div class='row justify-content-end mr-3'>
            <div class='col d-flex justify-content-end'>
                <button type='button' class='btn btn-secondary' onclick='location.href="listQuestion"'>취소</button>
                &nbsp;
                <button type='button' class='btn btn-secondary' onclick='location.href="listQuestion"'>수정</button>
            </div>
        </div>
    </div>
</body>

<%@ include file ='../include/footer.jsp'%>

</html>