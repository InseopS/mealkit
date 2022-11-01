<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

</style>
</head>
<body>
	<%@ include file ='../../include/adminTop1.jsp'%>
                    <h2 style='display: inline'>신고</h2>&ensp;
                    <h6>신고목록</h6>
    <%@ include file ='../../include/adminTop2.jsp'%>

            <div class='col' style='border: 1px solid'>
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
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="next">
                                        <span aria-hidden="true">&gt;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class='container mw-100 mt-5' style='width: 98%;'>
                        <form>
                            <div class='row'>
                                <div class='col-2'>
                                    <select class='form-control' name='category'>
                                        <option value='none' selected hidden>정렬기준</option>
                                        <option value='1'>번호</option>
                                        <option value='2'>제목</option>
                                        <option value='3'>처리상태</option>
                                    </select>
                                </div>
                                <div class='col px-0'>
                                    <input type='text' class='form-control' id='searchIn' placeholder='내용을 입력해주세요.'>
                                </div>
                                <div class='col-2 d-flex'>
                                    <button type='button' id='serchUser' class='btn btn-secondary flex-fill'>검색</button>
                                </div>
                            </div>
                        </form>
                        <div class='row mt-5'>
                            <div class='col'>
                                <table class='table table-hover my-0'>
                                    <colgroup>
                                        <col width='15%'>
                                        <col width='51%'>
                                        <col width='17%'>
                                        <col width='17%'>
                                    </colgroup>
                                    <thead class='table-info'>
                                        <tr>
                                            <th scope='col'>번호</th>
                                            <th scope='col'>제목</th>
                                            <th scope='col'>작성일</th>
                                            <th scope='col'>상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>0009</td>
                                            <td onclick='location.href="02.html"'>대출광고 신고합니다.</td>
                                            <td>2022.10.18</td>
                                            <td>처리중</td>
                                        </tr>
                                        <tr>
                                            <td>0008</td>
                                            <td>애먼 물건 사진인데요.</td>
                                            <td>2022.10.17</td>
                                            <td>처리중</td>
                                        </tr>
                                        <tr>
                                            <td>0007</td>
                                            <td>신고 처리 안해요?</td>
                                            <td>2022.10.17</td>
                                            <td>처리중</td>
                                        </tr>
                                        <tr>
                                            <td>0006</td>
                                            <td>악성 리뷰 신고</td>
                                            <td>2022.10.16</td>
                                            <td>처리중</td>
                                        </tr>
                                        <tr>
                                            <td>0005</td>
                                            <td>욕설 신고 함</td>
                                            <td>2022.10.16</td>
                                            <td>처리중</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <hr class='mt-0'>
                            </div>
                        </div>
                    </div>
                </div>
                <hr style='position: relative; bottom: 13%;'>
            </div>
        </div>
    </div>
</body>
<%@ include file ='../../include/adminFooter.jsp'%>