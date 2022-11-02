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
<link rel='stylesheet' type='text/css' href='../res/admin.css'>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<style>
table {
    text-align: center;
    font-size: smaller;
}
</style>
</head>
<body>
	<%@ include file ='../include/adminTop1.jsp'%>
                    <h2 style='display: inline'>MAIN</h2>&ensp;
    <%@ include file ='../include/adminTop2.jsp'%>           
            <div class='col' style='border: 1px solid'>
                <div class='border w-auto mt-3' id='content'>
                    <div class='mx-4 my-2' style='height: 16.5rem; border: 0.1rem; border-style: solid; position: relative;'>
                        <p style='position: absolute; top: 50%; left: 45%'>로고이미지</p>
                    </div>

                    <form action='main.html' class='d-flex justify-content-end'>
                        <div class='row'>
                            <label for='input' class='col-2 px-0 mr-2 col-form-label' style='font-size: 70%;'>로고이미지:</label>
                            <div class='col-7 px-0 input-group input-group-sm'>
                                <input type='file' class='form-control' id='logoImg' style='font-size: 70%;'>
                            </div>
                            <div class='col pl-1 mr-3'>
                                <button type='submit' class='btn btn-sm btn-secondary' style='font-size: 70%;'>변경</button>
                            </div>
                        </div>
                    </form>

                    <p class='ml-4'>[최근 문의]</p>
                    <div class='row mx-4'>
                        <table class='table table-sm'>
                            <colgroup>
                                <col width='15%'>
                                <col width='51%'>
                                <col width='17%'>
                                <col width='17%'>
                            </colgroup>
                            <thead>
                                <tr class='table-active'>
                                    <th scope='col'>글번호</th>
                                    <th scope='col'>제목</th>
                                    <th scope='col'>아이디</th>
                                    <th scope='col'>상태</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>3</td>
                                    <td><a href='question/03.html'>마라키트 많이 맵나요?</a></td>
                                    <td>seop2</td>
                                    <td>답변대기</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>배송문의 ㅠㅜ</td>
                                    <td>seop2</td>
                                    <td>답변완료</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>재입고 문의드려용~</td>
                                    <td>rightarm</td>
                                    <td>답변완료</td>
                                </tr>
                                <tr><td></td><td></td><td></td><td></td></tr>
                            </tbody>
                        </table>
                    </div>

                    <p class='ml-4'>[최근 신고]</p>
                    <div class='row mx-4'>
                        <table class='table table-sm'>
                            <colgroup>
                                <col width='15%'>
                                <col width='51%'>
                                <col width='17%'>
                                <col width='17%'>
                            </colgroup>
                            <thead>
                                <tr class='table-active'>
                                    <th scope='col'>글번호</th>
                                    <th scope='col'>제목</th>
                                    <th scope='col'>아이디</th>
                                    <th scope='col'>상태</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>4</td>
                                    <td><a href='declaration/02.html'>대출광고 신고합니다.</a></td>
                                    <td>ezen01</td>
                                    <td>처리중</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>욕설 신고합니다.</td>
                                    <td>ezen01</td>
                                    <td>삭제</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>비방 신고합니다.</td>
                                    <td>ezen01</td>
                                    <td>기각</td>
                                </tr>
                                <tr><td></td><td></td><td></td><td></td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<%@ include file ='../include/adminFooter.jsp'%>