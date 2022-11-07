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
        <%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
        <style>
            #img {
                height: 9rem;
                line-height: 160px; 
                text-align: center;
            }
        </style>
        <script>

        </script>
    </head>
     <%@ include file ='../include/headerTop.jsp'%>
    
            <div id='subOuter' class='row d-block d-sm-none d-flex mx-0'>
                <a class='material-icons hBack m-2' onClick='history.back()'>arrow_back_ios</a>
                <div id="menuName">
                    <h3>리뷰상세</h3>
                </div>
            </div>
    <%@ include file ='../include/headerBottom.jsp'%>
<body>
	<div id='mainContainerAddSub' class="container">
        <div class='container mr-1 ml-1'>
            <div class='row d-flex justify-content-between'>
                    <div>
                    	<c:forEach var='review' items='${reviewList}'>
                        ${review.rate}
                        </c:forEach>
                    </div>
                    <div>
                        <c:forEach var='review' items='${reviewList}'>
                        ${review.reviewRegDate}
                        </c:forEach>
                    </div>
            </div>
            <div class='row'>
                <c:forEach var='review' items='${reviewList}'>
                ${review.rate}
                </c:forEach>
            </div>
            <div class='row'>
                <div class='col'>
                    <c:forEach var='review' items='${reviewList}'>
                        ${review.reviewTitle}
                        </c:forEach>
                </div>
            </div>
        </div>
        <hr>
        <div class='container'>
            <div class='col-14'>
                    <c:forEach var='review' items='${reviewList}'>
                        <img style="height:220px; width: 100%;" src='<c:url value="/attach/${review.reviewImgfileName}"/>'/>
                    </c:forEach>
            </div>
            <br>
            <div class='row ml-1'>
            <c:forEach var='review' items='${reviewList}'>
                        ${review.reviewContent}
                        </c:forEach>
            </div>
            <br>
            <div class='row ml-1'>
                <c:forEach var='review' items='${reviewList}'>
                        ${review.rate}
                        </c:forEach>
            </div>
            <br>
        </div>
    </div>
    <div class='row justify-content-end mr-1'>
        <div class='col d-flex justify-content-end'>
            <button type='button' class='btn btn-secondary' data-toggle='modal' data-target='#declarationModal'>신고</button>
        &nbsp;
        <button type='button' class='btn btn-secondary' data-toggle='modal' data-target='#editModal'>수정</button>
        &nbsp;
        <button type='button' class='btn btn-secondary' data-toggle='modal' data-target='#deleteModal' id='delBtn'>삭제</button>
        </div>
    </div>
    <div class='modal fade' id='declarationModal' tabindex='-1'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class='modal-header py-2'>
                    <p class="modal-title float-left" id='myModalLabel'>리뷰신고</p>
                    <button type='button' class='close' data-dismiss='modal'><span>&times;</span></button>					
                </div>
                <div class='modal-body text-center'>
                    <p>해당 리뷰를 신고하시겠습니까?</p>
                </div>
                <div class='modal-footer py-1'>
                    <button type='button' class='btn btn-danger col-3' data-dismiss='modal'>아니오</button>&nbsp;&nbsp;       	
                    <button type='submit' class='btn btn-primary col-3' data-dismiss='modal'
                      onclick='location.href="<%=request.getContextPath()%>/declaration/declareReview"'>예</button>         
                </div>
            </div>
        </div>
    </div>
    <div class='modal fade' id='deleteModal' tabindex='-1'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class='modal-header py-2'>
                    <p class="modal-title float-left" id='myModalLabel'>리뷰삭제</p>
                    <button type='button' class='close' data-dismiss='modal'><span>&times;</span></button>					
                </div>
                <div class='modal-body text-center'>
                    <p id='modalMsg' style='text-align: center'></p>
                </div>
                <div class='modal-footer py-1'>
                    <button type='button' class='btn btn-danger col-3' data-dismiss='modal'>아니오</button>&nbsp;&nbsp;       	
                    <button type='submit' class='btn btn-primary col-3' data-dismiss='modal'
                      onclick='location.href="<%=request.getContextPath()%>/review/listReview"' id='yesBtn'>예</button>         
                </div>
            </div>
        </div>
    </div>
    <div class='modal fade' id='editModal' tabindex='-1'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class='modal-header py-2'>
                    <p class="modal-title float-left" id='myModalLabel'>리뷰수정</p>
                    <button type='button' class='close' data-dismiss='modal'><span>&times;</span></button>					
                </div>
                <div class='modal-body text-center'>
                    <p>리뷰를 수정하시겠습니까?</p>
                </div>
                <div class='modal-footer py-1'>
                    <button type='button' class='btn btn-danger col-3' data-dismiss='modal'>아니오</button>&nbsp;&nbsp;       	
                    <button type='submit' class='btn btn-primary col-3' data-dismiss='modal'
                      onclick='location.href="<%=request.getContextPath()%>/review/fixReview"'>예</button>         
                </div>
            </div>
        </div>
    </div>
</body>
<%@ include file ='../include/footer.jsp'%>
</html>