<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

    </style>
</head>

<header>
    <nav class='navbar fixed-top navbar-light bg-light navbar-expand-sm p-0'>
        <div class='container-fluid'>
            <a class='navbar-brand ml-2' href='../'>
                <div id='logo'>로고이미지</div>
            </a>

			<div>
				<p class='navbar-title flex-fill mr-1 my-0' style="font-family: 'Nanum Pen Script', cursive;">집밥을 특별하게</p>
				<p class='navbar-title flex-fill mr-1 my-0' style="font-family: 'Nanum Pen Script', cursive;">쉐프의 밀키트</p>
			</div>

            <a class='text-dark flex-fill text-right mr-3' href='../cart/01.html'>
                <span class='material-icons'>shopping_cart</span>
            </a>

            <button class='navbar-toggler mr-4' type='button' data-toggle='collapse' data-target='#menu'>
                <span class='navbar-toggler-icon'></span>
            </button>
        </div>
        <div id='subOuter' class='row d-block d-sm-none d-flex mx-0'>
            <a class='material-icons hBack m-2' onClick='history.back()'>arrow_back_ios</a>
            <div id='menuName'>
                <h3>로그인</h3>
            </div>
            
        </div>
        <div class='collapse navbar-collapse' id='menu'>
            <ul class='navbar-nav mr-auto'>
                <li class='nav-item active'>
                <%
                	if(session.getAttribute("userId") == null) {
                %>
                		<a class='nav-link' href='login'>로그인</a>
                <%	
                	}                
                	else {
               	%>
               			<a class='nav-link' href='logout'>로그아웃</a>
               	<%	
                	}
                %>
                </li>
                <li class='nav-item active'>
                    <a class='nav-link' href='../notice/01.html'>공지사항</a>
                </li>
                <li class='nav-item dropdown'>
                    <a class='nav-link dropdown-toggle' data-toggle='dropdown'>고객센터</a>
                    <div class='dropdown-menu'>
                        <a class='dropdown-item' href='../faq/01.html'>자주묻는질문</a>
                        <a class='dropdown-item' href='../question/02.html'>1:1문의</a>
                        <div class='dropdown-divider'></div>
                        <a class='dropdown-item' href='../declaration/02.html'>신고</a>
                    </div>
                </li>
            </ul>
            <form class='form-inline my-2 my-lg-0' action='../mealkit/03.html'>
                <input type='search' class='form-control mr-sm-2' placeholder='상품을 입력해주세요.'/>
                <button type='submit' class='btn btn-outline-dark my-2 my-sm-0'>검색</button>
            </form>
        </div>
    </nav>
</header>

<body>
    <form action='login' method='post'>
        <div id='mainContainerAddSub' class='container'>
            <div style='width: 1px; height: 1px;'></div>
            <div class='row mt-4'>
                <label for='staticEmail' class='col-3 col-form-label'>아이디</label>
                <div class='col'>
                    <input type='text' class='form-control' name='userId' id='userId'>
                </div>
            </div>
            <div class='my-3 row'>
                <label for='inputPassword' class='col-3 col-form-label' style='font-size: 93%'>비밀번호</label>
                <div class='col'>
                    <input type='password' class='form-control' name='password' id='password'>
                </div>
            </div>
            <div class='row d-flex mx-auto'>
                <button type='submit' class='btn btn-primary flex-fill'>로그인</button>
            </div>
                <%
                	if(session.getAttribute("errMsg") != null) {
                %>
                		<br> <h5 style='color: red; text-align: center;'> <%= session.getAttribute("errMsg") %> </h5>
                <%
                	}
                %>
        </div>
         </form>
        <br>
	<div class='row'>
	    <div id='loginSubNav' class='col'>
	        <a href='04.html'>아이디 찾기 |&nbsp;</a>
	        <a href='06.html'>비밀번호 찾기 |&nbsp;</a>
	        <a href='01.html'> 회원가입</a>
	    </div>
	</div>   
</body>
<footer>
    <nav class='navbar fixed-bottom navbar-light bg-light'>
        <div class='container-fluid'>
            <a class='navbar-brand' href='../'><span class='material-icons'>home</span></a>
            <a class='navbar-brand' href='../mealkit/02.html'><span class='material-icons'>restaurant_menu</span></a>
            <a class='navbar-brand' href='../review/02.html'><span class='material-icons'>rate_review</span></a>
            <a class='navbar-brand' href='mypage.html'><span class='material-icons'>person</span></a>
            <a class='navbar-brand' href='../latest/01.html'><span class='material-icons'>history</span></a>
        </div>
    </nav>
</footer>
</html>