<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>
<head>
    <title>EAZEN MEALKIT</title>
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
    <link rel='stylesheet' type='text/css' href='../../res/admin.css'>
    <style>
        table {
            text-align: center;
        }
    </style>
    
</head>

<body>
	<%@ include file ='../../include/adminTop1.jsp'%>
                    <h2 style='display: inline'>리뷰</h2>
                    <h6 style='display: inline'>리뷰목록</h6>
	<%@ include file ='../../include/adminTop2.jsp'%>
	
            <div class='col' style='border: 1px solid;'>
                <div class='border w-auto my-3' id='content'>
                    <div id='pageGroup'>
                        <nav id='page'>
                            <ul class="pagination mb-0">
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="previous">
                                        <span aria-hidden="true">&lt;</span>
                                    </a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="next">
                                        <span aria-hidden="true">&gt;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class='container mw-100 mt-5' style='width: 98%;'>
                        <div class='row mt-3'>
                            <label class='col-2 col-form-label' style='text-align: right; font-weight: 600;'>검색:
                            </label>
                            <div class='col px-0'>
                                <input type='text' class='form-control' id='serchBox' placeholder='상품명을 입력해주세요.'>
                            </div>
                            <div class='col-2 d-flex'>
                                <button type='button' id='serchBtn' class='btn btn-secondary'>검색</button>
                            </div>
                        </div>
                        <div class='row mt-5'>
                            <div class='col'>
                                <table class='table table-hover my-0'>
                                    <colgroup>
                                        <col width='5%'>
                                        <col width='10%'>
                                        <col width='20%'>
                                        <col width='35%'>
                                        <col width='15%'>
                                        <col width='15%'>
                                    </colgroup>
                                    <thead class='table-info'>
                                        <tr>
                                            <th scope='col'></th>
                                            <th scope='col'>번호</th>
                                            <th scope='col'>상품명</th>
                                            <th scope='col'>제목</th>
                                            <th scope='col'>작성자</th>
                                            <th scope='col'>작성일</th>
                                        </tr>
                                    </thead>
                                    <tbody id='reviews'>
                                        <tr>
                                            <th><input type='checkbox'></th>
                                            <td>0002</td>
                                            <td>2인 바싹 불고기 세트</td>
                                            <td onclick='location.href="<%=request.getContextPath()%>/review/detailReview"'>맛있습니다..</td>
                                            <td>asdf232</td>
                                            <td>2022.10.13</td>
                                        </tr>
                                        <tr>
                                            <th><input type='checkbox'></th>
                                            <td>0001</td>
                                            <td>제육볶음</td>
                                            <td>최고에요!</td>
                                            <td>zxc321</td>
                                            <td>2022.10.13</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <hr class='mt-0'>
                            </div>
                        </div>
                    </div>
                </div>
                <hr style='position: relative; bottom: 13%;'>
                <div id='bottomBtn'>
                    <button type='button' class='btn btn-secondary' data-toggle='modal' data-target='#deleteModal'>삭제</button>
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
                    <p>선택한 리뷰를 삭제하시겠습니까?</p>
                </div>
                <div class='modal-footer py-1'>
                    <button type='button' class='btn btn-danger col-3' data-dismiss='modal'>아니오</button>&nbsp;&nbsp;
                    <button type='submit' class='btn btn-primary col-3' data-dismiss='modal'
                        onclick='location.href="<%=request.getContextPath()%>listReview"'>예</button>
                </div>
            </div>
        </div>
    </div>
</body>
<%@ include file ='../../include/adminFooter.jsp'%>