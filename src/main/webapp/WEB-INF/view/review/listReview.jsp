<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<!DOCTYPE html>
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
            #paging_div {
                background-color: white;
                justify-content : center;
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
                <div id="menuName">
                    <h3>리뷰</h3>
                </div>
            </div>
	<%@ include file ='../include/headerBottom.jsp'%>
<body>
    <div id='mainContainerAddSub' class="container">
        <div class='container mr-1 ml-1'  onClick="location.href='03.html'">
            <div class='row d-flex justify-content-between'>
                    <div id='star'>
                        ★★★★★ 아주좋아요
                    </div>
                    <div id='date'>
                        2022.10.13
                    </div>
            </div>
            <div class='row' id='item'>
                [구매제품] 2인 바싹 불고기 세트
            </div>
            <div class='row'>
                <div class='col' id='title'>
                    맛있습니다.
                </div>
            </div>
        </div>
        <hr>
        <div class='container mr-1 ml-1'>
            <div class='row d-flex justify-content-between'>
                <div id='star'>
                    ★★★★★ 아주좋아요
                </div>
                <div id='date'>
                    2022.10.13
                </div>
            </div>
            <div class='row' id='item'>
                [구매제품] 제육볶음
            </div>
            <div class='row'>
                <div class='col' id='title'>
                    최고에요!
                </div>
            </div>
        </div>
        <hr>
	</div>
    <div class="row d-flex mx-auto fixed-bottom mb-5" id='paging_div'>
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="#">&lt;</a></li>
                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">&gt;</a></li>
            </ul>
        </nav>
    </div>
</body>
<%@ include file ='../include/footer.jsp'%>
</html>