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
        ::placeholder {
            font-size: 0.8em;
            font-weight: 400;
        }

        input[type='date']::before {
            content: attr(data-placeholder);
            width: 100%;
            font-size: 0.8rem;
            color: rgba(0, 0, 0, 0.550);
        }

        input[type='date']:focus::before,
        input[type='date']:valid::before {
            display: none;
        }
    </style>
</head>

<%@ include file ='../include/headerTop.jsp'%>
<div id='subOuter' class='row d-block d-sm-none d-flex mx-0'>
    <a class='material-icons hBack m-2' onClick='history.back()'>arrow_back_ios</a>
    <div id="menuName">
        <h3>비밀번호 찾기</h3>
    </div>
</div>
<%@ include file ='../include/headerBottom.jsp'%>

<body>
    <form action='07.html'>
        <div id='mainContainerAddSub' class='container'>
            <div style='width: 1px; height: 1px;'></div>
            <div class='row inputBox mt-4'>
                <label for='input' class='col-3 col-form-label'>아이디</label>
                <div class='col pl-1'>
                    <input type='text' class='form-control' id='userId'>
                </div>
            </div>
            <div class='row inputBox'>
                <label for='input' class='col-3 col-form-label'>이메일</label>
                <div class='col pl-1'>
                    <input type='email' class='form-control' id='email'>
                </div>
            </div>
            <div class='row inputBox'>
                <div class='col d-flex mx-auto'>
                    <button type='button' id='emailCert' class='btn btn-primary flex-fill' data-toggle='modal' data-target='#emailCertModal'>인증발송</button>
                </div>
            </div>
            <div class='row inputBox'>
                <label for='input' class='col-3 col-form-label' style='font-size: 93%'>인증번호</label>
                <div class='col pl-1'>
                    <input type='number' class='form-control' id='certNum'>
                </div>
            </div>
            <div class='row d-flex mt-5 mx-auto'>
                <button type='submit' class='btn btn-primary flex-fill'>비밀번호 변경</button>
            </div>
        </div>
    </form>

    <div class='modal fade' id='emailCertModal' tabindex='-1'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class='modal-header py-2'>
                    <p class='modal-title float-left' id='emailCertModalLabel'>비밀번호 찾기</p>
                    <button bype='button' class='close' data-dismiss='modal'>
                        <span>&times;</span>
                    </button>
                </div>
                <div class='modal-body text-center'>
                    <p>인증메일이 발송됐습니다.</p>
                </div>
                <div class='modal-footer py-1'>
                    <button type='button' class='btn btn-primary col-3' data-dismiss='modal'>확인</button>
                </div>
            </div>
        </div>
    </div>

</body>

<%@ include file ='../include/footer.jsp'%>

</html>