<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        ::placeholder {
            font-size: 0.8em;
            font-weight: 400;
        }

        input[type='date']::before {
            content: attr(data-placeholder);
            width: 100%;
            font-size: 0.7rem;
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
        <h3>회원가입</h3>
    </div>
</div>
<%@ include file ='../include/headerBottom.jsp'%>

<body>
    <form action='02.html'>
        <div id='mainContainerAddSub' class='container'>
            <div style='width: 1px; height: 1px;'></div>
            <div class='row inputBox mt-1'>
                <label class='col-3 col-form-label'>아이디</label>
                <div class='col px-1'>
                    <input type='text' class='form-control' id='userId' pattern='.{2,10}' required title='2글자 이상 10글자 이하만 됩니다.'>
                </div>
                <div class='col-4 pl-0'>
                    <button type='button' id='idDoubleCheck' class='btn btn-primary float-right' data-toggle='modal' data-target='#idDoubleCheckModal'>중복확인</button>
                </div>
            </div>
            <div class='row inputBox'>
                <label class='col-3 col-form-label' style='font-size: 93%'>비밀번호</label>
                <div class='col pl-1'>
                    <input type='password' class='form-control' id='userPw' placeholder='비밀번호는 6자리 이상의 영문/숫자'>
                </div>
            </div>
            <div class='row inputBox'>
                <label for='input' class='col-3 col-form-label'>이름</label>
                <div class='col pl-1'>
                    <input type='text' class='form-control' id='userName'>
                </div>
            </div>
            <div class='row inputBox'>
                <label for='input' class='col-3 col-form-label' style='font-size: 93%'>생년월일</label>
                <div class='col pl-1'>
                    <input type='date' class='form-control' id='birthDay' data-placeholder='YYYY-MM-DD 형식으로 입력해주세요.' required aria-required='true'>
                </div>
            </div>
            <div class='row inputBox'>
                <label for='input' class='col-3 col-form-label'>이메일</label>
                <div class='col pl-1'>
                    <input type='email' class='form-control' id='email'>
                </div>
            </div>
            <div class='row inputBox'>
                <label for='input' class='col-3 col-form-label' style='font-size: 93%'>인증번호</label>
                <div class='col pl-1'>
                    <input type='number' class='form-control' id='certNum' min='100000' max='999999' required title='인증번호 6자리를 입력하세요.'>
                </div>
            </div>
            <div class='row inputBox'>
                <label class='col-3 col-form-label' style='margin-right: 4px;'></label>
                <div class='col d-flex mx-auto pl-0'>
                    <button type='button' id='emailDoubleCheck' class='btn btn-primary flex-fill' data-toggle='modal' data-target='#emailDoubleCheckModal'>중복확인</button>
                </div>
                <div class='col d-flex mx-auto pl-0'>
                    <button type='button' id='emailCertConf' class='btn btn-primary flex-fill' data-toggle='modal' data-target='#emailCertConfModal'>인증확인</button>
                </div>
            </div>
            <div class='row inputBox'>
                <label for='input' class='col-3 col-form-label'>연락처</label>
                <div class='col pl-1'>
                    <input type='text' class='form-control' id='phoneNum'>
                </div>
            </div>
            <div class='row inputBox'>
                <label class='col-3 col-form-label' style='font-size: 93%'>우편주소</label>
                <div class='col px-1'>
                    <input type='text' class='form-control' id='zipCode'>
                </div>
                <div class='col-4 pl-0'>
                    <input class='btn btn-primary float-right' type='button' value='주소검색'>
                </div>
            </div>
            <div class='row inputBox'>
                <label for='input' class='col-3 col-form-label'>주소</label>
                <div class='col pl-1'>
                    <input type='text' class='form-control' id='address'>
                </div>
            </div>
            <div class='row inputBox'>
                <label for='input' class='col-3 col-form-label' style='font-size: 93%'>상세주소</label>
                <div class='col pl-1'>
                    <input type='text' class='form-control' id='betterAddress'>
                </div>
            </div>
            <a href='02.html'>
            <div class='row d-flex mx-auto'>
                <button type='submit' class='btn btn-primary flex-fill'>회원가입</button>
            </div>
        </a>
        </div>
    </form>

<div class='modal fade' id='idDoubleCheckModal' tabindex='-1'>
    <div class='modal-dialog'>
        <div class='modal-content'>
            <div class='modal-header py-2'>
                <p class='modal-title float-left' id='idModalLabel'>아이디 중복확인</p>
                <button bype='button' class='close' data-dismiss='modal'>
                    <span>&times;</span>
                </button>
            </div>
            <div class='modal-body text-center'>
                <p>사용 가능한 아이디입니다.</p>
            </div>
            <div class='modal-footer py-1'>
                <button type='button' class='btn btn-primary col-3' data-dismiss='modal'>확인</button>
            </div>
        </div>
    </div>
</div>

<div class='modal fade' id='emailDoubleCheckModal' tabindex='-1'>
    <div class='modal-dialog'>
        <div class='modal-content'>
            <div class='modal-header py-2'>
                <p class='modal-title float-left' id='emailModalLabel'>이메일 중복확인</p>
                <button bype='button' class='close' data-dismiss='modal'>
                    <span>&times;</span>
                </button>
            </div>
            <div class='modal-body text-center'>
                <p>사용 가능한 이메일입니다.</p>
            </div>
            <div class='modal-footer py-1'>
                <button type='button' id='emailCert' class='btn btn-primary col-3' data-dismiss='modal' data-toggle='modal' data-target='#emailCertModal'>확인</button>
            </div>
        </div>
    </div>
</div>

<div class='modal fade' id='emailCertModal' tabindex='-1'>
    <div class='modal-dialog'>
        <div class='modal-content'>
            <div class='modal-header py-2'>
                <p class='modal-title float-left' id='emailCertModalLabel'>이메일 인증발송</p>
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

<div class='modal fade' id='emailCertConfModal' tabindex='-1'>
    <div class='modal-dialog'>
        <div class='modal-content'>
            <div class='modal-header py-2'>
                <p class='modal-title float-left' id='emailCertConfModalLabel'>이메일 인증확인</p>
                <button bype='button' class='close' data-dismiss='modal'>
                    <span>&times;</span>
                </button>
            </div>
            <div class='modal-body text-center'>
                <p>인증이 완료됐습니다.</p>
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