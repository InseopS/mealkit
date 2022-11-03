<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<html>
<head>
<title>mealkit</title>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://code.jquery.com/jquery-3.6.0.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js'></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js'></script>
<link rel='stylesheet' href='http://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css' />
<link href='https://fonts.googleapis.com/icon?family=Material+Icons' rel='stylesheet'>
<link rel='preconnect' href='https://fonts.googleapis.com'>
<link rel='preconnect' href='https://fonts.gstatic.com' crossorigin>
<link href='https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap' rel='stylesheet'>
<link rel='stylesheet' type='text/css' href='../res/lib.css'>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<style>
</style>
<script>
 $(function () {
    $('.favorite').click(function () {
        let check = $('.favorite').find('#favoriteIcon');
        if (check.hasClass('on')) {
            check.css('color', 'black');
        } else {
            check.css('color', 'red');
            $('#favoriteModal').modal()
        }
        check.toggleClass('on', 'off');
    });
});
</script>
</head>
<%@ include file ='../include/headerTop.jsp'%>
	<div id='subOuter' class='row d-block d-sm-none d-flex mx-0'>
	    <a class='material-icons hBack m-2' onClick='history.back()'>arrow_back_ios</a>
	    <div id="menuName">
	        <h3>감바스</h3>
	    </div>
	</div>
<%@ include file ='../include/headerBottom.jsp'%>
<body>
    <div id='mainContainerAddSub' class="container">
        <div class='row mt'>
            <div class='col'>
                <div class='border w-auto' style='height: 200px; display: flex; justify-content: center; align-items: center; text-align: center;'>
                    <p>감바스이미지</p>
                </div>
            </div>
        </div>
        <div class='row'>
            <div class='col'>
                <div class='border-bottom w-auto'>
                    <h6 class='mt-1 mb-1'>맛있는 감바스</h6>
                </div>
                <div class='border-bottom w-auto'>
                    <h5 class='mt-1 mb-1'>양식</h5>
                </div>
                <div class='border-bottom w-auto'>
                    <span class='mt-1 mb-1'>수량 : </span>
                    <span class='mt-1 mb-1'>1개</span>
                    <input class='btn btn-sm btn-secondary' type='button' value='+' style='width: 2rem;'/>
                    <input class='btn btn-sm btn-secondary' type='button' value='-' style='width: 2rem;'/>
                    <span class='float-right'>7900원</span>
                </div>
                <div class='border w-auto mt-2 mb-1'>
<pre>
OO레스토랑 쉐프의 레시피를
이용한 고급 감바스를
집에서 손쉽게 만들수있습니다.
</pre>
                </div>
                <div>
                    <div class='favorite' style='display: inline'>
                        <span id='favoriteIcon' class="material-icons" style='font-size: 3rem;'>favorite</span>
                    </div>                  
                    <div style='display: inline;'>                            
                        <a type='button' class='btn btn-secondary ml-5 mb-4' id='cartBtn' data-toggle='modal' data-target='#cartModal'>담기</a>
                        <a type='button' class='btn btn-secondary ml-2 mb-4' id='buyBtn' href='../order/01.html'>구매</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<footer>
    <nav class='navbar fixed-bottom navbar-light bg-light'>
        <div class='container-fluid'>
            <a class='navbar-brand' href='../main.html'><span class='material-icons'>home</span></a>
            <a class='navbar-brand' href='02.html'><span class='material-icons'>restaurant_menu</span></a>
            <a class='navbar-brand' href='../review/02.html'><span class='material-icons'>rate_review</span></a>
            <a class='navbar-brand' href='../user/mypage.html'><span class='material-icons'>person</span></a>
            <a class='navbar-brand' href='../latest/01.html'><span class='material-icons'>history</span></a>
        </div>
    </nav>
</footer>
<div class='modal fade' id='favoriteModal' tabindex='-1'>
    <div class='modal-dialog'>
        <div class='modal-content'>
            <div class='modal-header py-2'>
                <p class='modal-title float-left' id='myModalLabel'>찜하기</p>
                <button bype='button' class='close' data-dismiss='modal'>
                    <span>&times;</span>
                </button>
            </div>
            <div class='modal-body text-center'>
                <p>찜하기 되었습니다.</p>
            </div>
            <div class='modal-footer py-1'>
                <a data-dismiss='modal' class='btn btn-primary col-3'>확인</a>
            </div>
        </div>
    </div>
</div>
<div class='modal fade' id='cartModal' tabindex='-1'>
    <div class='modal-dialog'>
        <div class='modal-content'>
            <div class='modal-header py-2'>
                <p class='modal-title float-left' id='myModalLabel'>장바구니</p>
                <button bype='button' class='close' data-dismiss='modal'>
                    <span>&times;</span>
                </button>
            </div>
            <div class='modal-body text-center'>
                <p>장바구니에 담았습니다.</p>
            </div>
            <div class='modal-footer py-1'>
                <a href='02.html' class='btn btn-primary col-3'>확인</a>
            </div>
        </div>
    </div>
</div>
<%@ include file ='../include/footer.jsp'%>
</html>