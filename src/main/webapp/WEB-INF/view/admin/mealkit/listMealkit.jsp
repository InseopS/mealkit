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
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<script>
function listMealkits() {
	$('#mealkits').empty()
	
	$.ajax({
		method: 'post',
		url: "<%=request.getContextPath()%>/admin/mealkit/listMealkits"
	}).done(mealkits => {
		if(mealkits.length) {
			const mealkitArr = []
			
			$.each(mealkits, (i, mealkit) => {
				mealkitArr.unshift(
                	`<tr>
                		<td class='align-middle'> 
							<input type='checkbox' value='\${mealkit.mealkitNum}' name='mealkitNum' id='mealkitNum' onclick='NoMultiChk(this)'/>
						</td>
                        <td class='align-middle'><img src='/attach/\${mealkit.mealkitImgfileName}'/></div></td>
                        <td class='align-middle'>\${mealkit.mealkitName}</td>
                        <td class='align-middle'>\${mealkit.description}</td>
                        <td class='align-middle'>\${mealkit.price}원</td>
                        <td class='align-middle'>\${mealkit.mealkitRegDate}</td>
                        <td class='align-middle'>\${mealkit.foodTypeCode}</td>
                    </tr>`		
				);
			})
			
			$('#mealkits').append(mealkitArr.join(''))
		} else {
			$('#mealkits').append('<tr><td colspan=6 class=text-center>등록한 밀키트가 없습니다.</td></tr>')
		}
	})
}
function NoMultiChk(chk){
  	var obj = document.getElementsByName('mealkitNum');
   	for(var i=0; i<obj.length; i++){
     	if(obj[i] != chk){
       	obj[i].checked = false;
     	}
   	}
}

function init() {
	$(listMealkits)
	$('#delBtn').click(() => {
		if($('#mealkitNum:checked').val()) {
			$('#modalMsg').empty();
			$('#modalMsg').text('밀키트를 삭제하시겠습니까?');
			$('#confirmModal').modal();
			$('#okBtn').hide();
			$('#noBtn').show();
			$('#yesBtn').show();
		} else {
			$('#modalMsg').empty();
			$('#modalMsg').text('밀키트를 선택해주세요.');
			$('#confirmModal').modal();
			$('#noBtn').hide();
			$('#yesBtn').hide();
			$('#okBtn').show();
		}
	})
	
	$('#yesBtn').click(() => {
		$('#confirmModal').modal('hide')
		$.ajax({
			url: 'del/' + $('#mealkitNum:checked').val(),
			method: 'delete'
		}).done(listMealkits)
	})
	
	$('#fixBtn').click(() => {
		if($('#mealkitNum:checked').val()) {
			location.href='fixMealkit?mealkitNum='+ $('#mealkitNum:checked').val()
		} else {
			$('#modalTitle').text('밀키트 수정');
			$('#modalMsg').text('수정하실 밀키트를 선택해주세요.');
			$('#confirmModal').modal();
			$('#noBtn').hide();
			$('#yesBtn').hide();
			$('#okBtn').show();
		}
	})
	
	$('#serchBtn').click(() => {
		if($('#searchIn').val() == '') {
			$('#modalTitle').text('밀키트 검색');
			$('#modalMsg').text('검색하실 밀키트를 입력하세요.');
			$('#confirmModal').modal();
			$('#noBtn').hide();
			$('#yesBtn').hide();
			$('#okBtn').show();
		} else {
			
		}
	})
}

$(init)
</script>
<style>
	img {
		width: 140px;
		height: 90px;
	}
</style>
</head>
<body>
	<%@ include file ='../../include/adminTop1.jsp'%>
                    <h2 style='display: inline'>상품목록</h2>&ensp;
    <%@ include file ='../../include/adminTop2.jsp'%>

            <div class='col' style='border: 1px solid'>
                <div class='border w-auto mt-3 my-3' id='content'>
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
                                <select class='form-control' name='searchCategory'>
                                    <option value='0' selected hidden>카테고리</option>
                                    <option value='1'>한식</option>
                                    <option value='2'>중식</option>
                                    <option value='3'>일식</option>
                                    <option value='4'>양식</option>
                                    <option value='5'>기타</option>
                                </select>
                            </div>
                            <div class='col px-0'>
                                <input type='text' class='form-control' id='searchIn' placeholder='상품명을 입력해주세요.'>
                            </div>
                            <div class='col-2 d-flex'>
                                <button type='button' id='serchBtn' class='btn btn-secondary flex-fill'>검색</button>
                            </div>

                        </div>
                    </form>
                    <div class='row mb-2' style='float: right'>
	               		<button type='button' class='btn btn-secondary mr-1'
	                        onclick='location.href="addMealkit"'>등록</button>
	                    <a class='btn btn-secondary btn mr-1' id='fixBtn'>수정</a>
	                    <a class='btn btn-secondary btn mr-3' id='delBtn'>삭제</a>                  
	                </div>
                    <div class='mt-5'>
                        <table class='table table-sm'>
                            <colgroup>
                                <col width='5%'>
                                <col width='15%'>
                                <col width='15%'>
                                <col width='15%'>
                                <col width='15%'>
                                <col width='15%'>
								<col width='15%'>
                            </colgroup>
                            <thead class='table-info'>
                                <tr>
                                	<th></th>
                                    <th scope='col'>상품</th>
                                    <th scope='col'>이름</th>
                                    <th scope='col'>설명</th>
                                    <th scope='col'>판매가</th>
                                    <th scope='col'>등록일</th>
                                    <th scope='col'>카테고리</th>
                                </tr>
                            </thead>
                            <tbody id='mealkits'>
                            </tbody>
                        </table>
                    <hr style='margin-top: -1rem;'>
                    </div>
                </div>
                </div>       		
                <hr style='position: relative; bottom: 13%;'>
            </div>
        </div>
    </div>
</body>
<footer>
    <div id='footer_text' class='bg-dark text-light'>
            <span><a href="#">이용약관 |&nbsp;</a></span>
            <span><a href="#"><strong> 개인정보처리방침 |&nbsp;</strong></a></span>
            <span><a href="#"> 법적고지 |&nbsp;</a></span>
            <span><a href="#"> 고객행복센터</a></span>
        <br>
        <div class="comp_info">
            <p class="company my-0">이젠밀키트(주)</p>
            <div class="line_wrap">
                <dl>
                    <dt>대표이사</dt>
                    <dd>&nbsp;최한석, 한아름</dd>
                </dl>
            </div>
            <div class="line_wrap">
                <dl>
                    <dd>
                        <address class="my-0">서울시 관악구 신림로 340 이젠밀키트 (우) 08754 (ezan@gmail.com)</address>
                    </dd>
                </dl>
            </div>
            <div class="line_wrap">
                <dl>
                    <dt>사업자등록번호</dt>
                    <dd><span class="ff_avr">&nbsp;123-45-67890</span></dd>
                </dl>
            </div>
            <div class="line_wrap">
                <dl>
                    <dt>통신판매업신고</dt>
                    <dd>&nbsp;중구 제 07767호&nbsp;
                        <a href="#"><strong>사업자정보확인</strong></a>
                    </dd>
                </dl>
            </div>
            <div class="line_wrap">
                <dl>
                    <dt>개인정보보호책임자</dt>
                    <dd>&nbsp;양승일</dd>
                </dl>
                <dl>
                    <dt>호스팅제공자</dt>
                    <dd>&nbsp;이젠밀키트㈜ </dd>
                </dl>
            </div>
        </div>
    </div>
</footer>
<div class='modal fade' id='confirmModal' tabindex='-1'>
    <div class='modal-dialog'>
        <div class='modal-content'>
            <div class='modal-header py-2'>
                <p class='modal-title float-left' id='delModalLabel'>밀키트삭제</p>
                <button bype='button' class='close' data-dismiss='modal'>
                    <span>&times;</span>
                </button>
            </div>
            <div class='modal-body'>
				<p id='modalMsg' style='text-align: center'></p>
			</div>
            <div class='modal-footer py-1'>
                <button type='button' id='noBtn' class='btn btn-primary col-3' data-dismiss='modal'>아니오</button>
                <a class='btn btn-danger col-3' id='yesBtn' role='button'>예</a>
                <button type='button' class='btn btn-primary col-3' data-dismiss='modal' id='okBtn'>확인</button>
            </div>
        </div>
    </div>
</div>