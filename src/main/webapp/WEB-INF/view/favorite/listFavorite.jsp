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
<style>
tr, td {
   border: 1px solid lightgray;
}

table.favoriteList {
	width: 100%;
	text-align: center;
}
</style>
</head>

<%@ include file ='../include/headerTop.jsp'%>
<div id='subOuter' class='row d-block d-sm-none d-flex mx-0'>
	<a class='material-icons hBack m-2' onClick='history.back()'>arrow_back_ios</a>
	<div id='menuName'>
	    <h3>찜한 상품</h3>
	</div>            
</div>
<%@ include file ='../include/headerBottom.jsp'%>

<body>
	<div class='container' id='mainContainerAddSub'>
		<div class='row mt-5'>
			<div class='col'>
				<table class='favoriteList'>
					<tbody>
						<tr>
							<th width='13%'><input type='checkbox'></th>
							<td class='mealkitImage'>
								<a href='<%=request.getContextPath()%>/mealkit/detailMealkit'>
									<img style='width:150px; height:150px;' src='<c:url value='/attach/${미정}'/>'/>
								</a>
							</td>
							<td>이젠밀키트<br>미나리 감자탕<br><br>32,000원</td>
						</tr>
						<tr>
							<th width='13%'><input type='checkbox'></th>
							<td class='mealkitImage'>
								<a href='<%=request.getContextPath()%>/mealkit/detailMealkit'>
									<img style='width:150px; height:150px;' src='<c:url value='/attach/${미정}'/>'/>
								</a>
							</td>
							<td>이젠밀키트<br>새우 감바스<br><br>10,000원</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class='row justify-content-end mt-3 mr-2'>
			<button type='button' id='deleteBtn' class='btn btn-secondary mr-2'
					data-toggle='modal' data-target='#deleteModal'>삭제</button>
		</div>
	</div>
    <div class='modal fade' id='deleteModal' tabindex='-1'>
        <div class='modal-dialog'>
            <div class='modal-content'>
                <div class='modal-header'>
                    <p class='modal-title float-left' id='myModalLabel'>찜한 상품</p>
                    <button bype='button' class='close' data-dismiss='modal'>
                        <span>&times;</span>
                    </button>
                </div>
                <div class='modal-body text-center'>
                    <p>상품을 삭제하시겠습니까?</p>
                </div>
                <div class='modal-footer py-1'>
                    <button type='button' class='btn btn-danger col-3' data-dismiss='modal'>아니오</button>&emsp;
                    <button type='button' class='btn btn-primary col-3' data-dismiss='modal' data-toggle='modal' data-target='#deleteOkModal'>예</button>
                </div>
            </div>
        </div>
    </div>
</body>
<%@ include file ='../include/footer.jsp'%>
</html>


