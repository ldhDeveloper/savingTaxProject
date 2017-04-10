<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/jsmi/css/common/font.css" type="text/css">
<link rel="stylesheet" href="/jsmi/css/common/grid.css" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">

</script>

<style type="text/css">
.font-family-xs-1 {
	font-family: mobius !important;
}

.font-family-xs-2 {
	font-family: Binggrae !important;
}

.font-family-xs-3 {
	font-family: tenbyten !important;
}

.font-family-md-1 {
	font-family: mobius !important;
}

.font-family-md-2 {
	font-family: Binggrae !important;
}

.font-family-md-3 {
	font-family: tenbyten !important;
}

/* *** 모바일 style *** */
.container-fluid, #th {
	text-align: center;
}

#xstable {
	table-layout: fixed;
	font-size: 7pt;
}

#stext {
	width: 70%;
	height: 25px;
	font-size: 10pt;
}

/* *** 컴퓨터 style *** */
.postTitle {
	font-family: mobius !important;
	font-size: 38px;
	text-align: center;
	color: #2a82a3;
}

.tableStart {
	border : 1px solid #2a82a3;
	background-color : #2a82a3;
	width : 100%;
	height : 350px;
	
}

.table {
	/* table-layout: fixed; */
}

.tablediv{
	margin-top: 2%;
	width: 96%;
	height: 310px;
	background-color: #fff;
	border : 1px solid #fff;
	align: center;
	text-align: left;
}
.tabletable {
	margin-top: 12px;
	background-color: #fff;
	width : 77%;
	border : 1px solid #fff;
	height: 250px;
}

.tabletr {
	font-family: computer !important;
	border-bottom : 2px solid #ddd;
	padding-left: 7%;
	text-align: center;
	width: 50px;
	font-size: 14pt;
}



.tabletd1 {
	padding-top: 7%;
	font-family: computer !important;	
	text-align: center;
	width: 10px;
	font-size: 14pt;
}

.tabletd2 {
	padding-top: 5%;	
	font-family: NotoSansCJKkr-Ligth !important;
	text-align: center;
	width: 10px;
}

.payBtn {
	border: none;
	background-color: red;
	font-size: 13pt;
	color: white;
	width : 22%;
	height : 30px;
	border-radius: 3px;
	align : center !important;
	font-family: Binggrae;	
}

.pway {
	font-family: NotoSansCJKkr-Ligth !important;
	color: black;
	font-size: 10pt;
}

.pways{
	border-right: 1px solid #2a82a3;
}
</style>

</head>

<body>
	<!-- /jsmi/views/main1/costGuide/payView.jsp -->

	<%@ include file="/views/common/main1/menubar.jsp"%>

	<br>
	<br>
	<br>

	<!-- 컴퓨터용 -->



	<div class="middle hidden-xs">


		<div class="middle font-family-md-1">
			<h3 align="center" class="postTitle">무통장 입금을 신청하셨습니다.</h3>
			<h4 style="color: orangered" align="center">입금을 완료하셔야 이용하실 수 있습니다.</h4>
		</div>

		<br>

		<h3></h3>

			<div class="tableStart" align="center">
				<div class="tablediv">
				<table class="tabletable" align="center">
					<tbody class="tablebody">
						<tr class="tabletr">
							<td class="tabletd1">신청 기간</td>
							<td class="tabletd2"> <%= request.getParameter("month") %>개월 </td>
						</tr>
						
						<tr class="tabletr">
							<td class="tabletd1">결제 금액</td>
							<td class="tabletd2"> <%= request.getParameter("hap") %> </td>
						</tr>
						
						<tr class="tabletr">
							<td class="tabletd1">계좌번호</td>
							<td class="tabletd2">(주)미인들 123-456-789</td>
						</tr>
					</tbody>
				</table>
				</div>
			</div>

			<br><br>

			<div align="center">
				<input type="button" class="payBtn" value="확인" id="check">
				<script type="text/javascript">
					$(function(){
						$("#check").click(function(){
							$(location).attr("href", "/jsmi/views/main1/introduce/introduce.jsp");
						});
					});
				</script>
			</div>
	</div>



	<!-- 모바일용 -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<div class="container-fluid hidden-sm hidden-md hidden-lg">
		<div class="small">
			<h2 align="center" class="font-family-xs-1">세무 Tips</h2>
		</div>

		<br>

		<form action=""></form>

		<div class="row">
			<div class="col-xs-2"></div>

			<div class="col-xs-8">
				<input type="text" id="stext" name="search"
					placeholder="검색할 제목을 입력하세요.">
				<!-- <input type="submit" class="btn btn-primary" id="searchBt" value="검색"> -->
				<!-- <input class="btn btn-primary input-xs" value="검색"> -->
				<button class="btn btn-primary btn-xs">검색</button>
			</div>

			<div class="col-xs-2"></div>
		</div>

		<br> <br>


		<div class="container">
			<div class="row">
				<div class="col-xs-0 col-md-2"></div>

				<div class="col-xs-12 col-md-8">
					<div class="table-responsive">
						<table class="table table-bordered">

							<tbody>
								<tr class="success">
									<td>제 목</td>
									<td></td>
								</tr>

								<tr class="danger">
									<td>작 성 자</td>
									<td></td>
								</tr>

								<tr class="info">
									<td colspan="2"><textarea class="form-control" rows="10"
											id="comment"></textarea></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

				<div class="col-xs-0 col-md-2"></div>
			</div>
		</div>

		<br> <br> <br> <br> <br> <br> <br>
	</div>
	<%@ include file="/views/common/main1/footer.jsp"%>
</body>
</html>