<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>EZEN MEALKIT</title>
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
            #noticeTop {
                font-weight: 600;
                font-size: medium;
            }

            #noticeTitle {
                font-size:16.5px;
            }
            #noticeInfo {
                font-weight: lighter;
                font-size:x-small;
            }
            #contentLogo {
                height: 3.5rem;
                width: 115px;
                margin:0 auto;
                margin-top: 20px;
                justify-content: center;
                border: solid 1px lightgrey;
                align-items: center;
            }
            #noticeContent {
                margin-top: 30px;
                margin-left: 10px;
                font-size:small;
            }
            #logoImg {
                height: 6rem;
                line-height: 35px;
                text-align: center;
            }
        </style>
    </head>
    <%@ include file ='../include/headerTop.jsp'%>
        <div id='subOuter' class='row d-block d-sm-none d-flex mx-0'>
            <a class='material-icons hBack m-2' onClick='history.back()'>arrow_back_ios</a>
            <div id="menuName">
                <h3>공지상세</h3>
            </div>
        </div>
    <%@ include file ='../include/headerBottom.jsp'%>

<body>
    <form>
        <div id='mainContainerAddSub' class="container">
            <div class='row'>
                <div class='col'>
					<div id='noticeTop'>
						<p id='noticeTitle'>[공지] 10월 13일(목) EZEN MEALKIT 페이지 구현 일정 안내</p>
						<p id='noticeInfo'>관리자<br/>
						2022. 10. 13 &emsp; 조회수 3</p>
					</div>
					<hr>
                </div>
            </div>
            <div class='row' id='contentLogo'>
                <div class='col'>
                    <p id='logoImg' class='pt-2'>로고이미지</p>
                </div>
            </div>
            <div class='row' id='noticeContent'>
                <pre>
안녕하세요 !

&lt;EZEN MEALKIT&gt; 관리자 입니다.

10월 13일부터 10월 18일까지, 페이지 구현이

진행될 예정입니다.

감사합니다.
                </pre>
            </div>
            <div class='row'>
                <div class='col'>
                    <hr>
                </div>
            </div>
        </div>
    </form>
</body>
<%@ include file ='../include/footer.jsp'%>
</html>