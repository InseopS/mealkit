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

        <script>
		function arrow() {
        	for(let i = 1; i <= 50; i++) {
                $(function(){
                    $('#down_arrow'+i).click(function() {
                        $('#down_arrow'+i).hide();
                        $('#up_arrow'+i).show();
                    })

                    $('#up_arrow'+i).click(function() {
                        $('#up_arrow'+i).hide();
                        $('#down_arrow'+i).show();
                    })
                })
            }
		}
    	
        function listFaqs() {
        	$('#faqs').empty();
        	$.ajax({
        		type:'post',
        		url:"<%=request.getContextPath() %>/faq/getFaqs"
        	}).done(faqs => {
        		if(faqs.length) {
        			const faqArr = []
        			
        			$.each(faqs, (i, faq) => {
        				faqArr.unshift(
        					`<div id='qna'>
		                        <div class='d-flex justify-content-between'>
								    <div><p id='faqTitle'>\${faq.faqTitle}</p></div>
		                            <div>
		                                <span id='btnSpan' class='navbar-toggler' type='button' data-toggle='collapse'
		                                    data-target='#faqNum\${faq.faqNum}'>
		                                    <span class="material-icons" id='up_arrow\${faq.faqNum}' style='display:none'>expand_less</span>
		                                    <span class="material-icons" id='down_arrow\${faq.faqNum}'>expand_more</span>
		                                </span>
		                            </div>
		                        </div>
		                        <div>
		                            <div class='collapse navbar-collapse' id='faqNum\${faq.faqNum}'>
		                                <div id='answer'>
		                                    <p><span class="material-icons">mode_comment</span> \${faq.faqContent}</p>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                    <hr>`
        				);
        			})
        			$('#faqs').append(faqArr.join(''))
        		} else {
        			$('#faqs').append('<div><p>등록된 Q&A가 없습니다.</p></div>')
        		}
        		
        		arrow()
        	}) 
        }
    	
        function init() {
        	listFaqs()
        }
        
        $(init)
        </script>
        <style>
            #faqTitle {
                font-size: small;
                font-weight: bold;
            }

            #answer {
                background-color:lightyellow;
                font-size:14px;
                padding-bottom: 1px;
            }
            
            #btnSpan {
            	padding:0 0;
            	px: 0;
            	py: 0;
            }
        </style>
    </head>
	<%@ include file ='../include/headerTop.jsp'%>
	    <div id='subOuter' class='row d-block d-sm-none d-flex mx-0'>
	        <a class='material-icons hBack m-2' onClick='history.back()'>arrow_back_ios</a>
	        <div id="menuName">
	            <h3>자주묻는질문</h3>
	        </div>
	    </div>
	<%@ include file ='../include/headerBottom.jsp'%>
<body>
    <form>
        <div id='mainContainerAddSub' class="container">
            <div class='row d-flex'>
                <div id='faqs' class="col">
					<div id='qna'>
                        <div class='d-flex justify-content-between'>
						    <div><p id='faqTitle'>취소/교환/반품] 주문한 상품을 교환받고 싶어요</p></div>
                            <div>
                                <span id='btnSpan' class='navbar-toggler' type='button' data-toggle='collapse'
                                    data-target='#faqNum1'>
                                    <span class="material-icons" id='up_arrow1' style='display:none'>expand_less</span>
                                    <span class="material-icons" id='down_arrow1'>expand_more</span>
                                </span>
                            </div>
                        </div>
                        <div>
                            <div class='collapse navbar-collapse' id='faqNum1'>
                                <div id='answer'>
                                    <p><span class="material-icons">mode_comment</span> 마이페이지 > 주문내역 > 교환/반품 신청
                                    경로로 들어가시면, 교환신청이 가능합니다 !</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
					<div id='qna'>
                        <div class='d-flex justify-content-between'>
						    <div><p id='faqTitle'>회원] 비밀번호를 찾으려면 어떻게 하나요?</p></div>
                            <div>
                                <span id='btnSpan' class='navbar-toggler' type='button' data-toggle='collapse'
                                    data-target='#qna_num2'>
                                    <span class="material-icons" id='up_arrow2' style='display:none'>expand_less</span>
                                    <span class="material-icons" id='down_arrow2'>expand_more</span>
                                </span>
                            </div>
                        </div>
                        <div>
                            <div class='collapse navbar-collapse' id='qna_num2'>
                                <div id='answer'>
                                    <p><span class="material-icons">mode_comment</span> 로그인 화면 > 아이디/비밀번호 찾기 경로로 들어가시면, 가입 시 등록 한 이메일로 비밀번호를 찾을 수 있습니다 !</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
					<div id='qna'>
                        <div class='d-flex justify-content-between'>
						    <div><p id='faqTitle'>배송] 송장이 조회가 되지 않아요</p></div>
                            <div>
                                <span id='btnSpan' class='navbar-toggler' type='button' data-toggle='collapse'
                                    data-target='#qna_num3'>
                                    <span class="material-icons" id='up_arrow3' style='display:none'>expand_less</span>
                                    <span class="material-icons" id='down_arrow3'>expand_more</span>
                                </span>
                            </div>
                        </div>
                        <div>
                            <div class='collapse navbar-collapse' id='qna_num3'>
                                <div id='answer'>
                                    <p><span class="material-icons">mode_comment</span> 1388-1388 고객센터로 문의를 주세요 !</p>
                                    <p>&emsp;빠르게 확인해드리겠습니다 !</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>

                </div>
            </div>
        </div>
    </form>
</body>
<%@ include file ='../include/footer.jsp'%>
</html>