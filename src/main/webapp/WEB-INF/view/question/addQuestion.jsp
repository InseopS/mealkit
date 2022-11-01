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
        <h3>1:1문의작성</h3>
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
                    <textarea style='resize: none;' cols='30' rows='1' placeholder='내용을 입력해주세요.' id='title' 
                        ></textarea>
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
                    <textarea maxlength='1300' style='resize: none;' cols='30' rows='5' placeholder='내용을 입력해주세요.' id='content'></textarea>
                </form>
            </div>
        </div>
        <br>
        <div class='row justify-content-end mr-3'>
            <div class='col d-flex justify-content-end'>
                <button type='button' class='btn btn-secondary' onclick='location.href="list"'>취소</button>
                &nbsp;
                <button type='button' class='btn btn-secondary' onclick='location.href="list"'>작성</button>
            </div>
        </div>
    </div>
</body>

<%@ include file ='../include/footer.jsp'%>

</html>