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
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/jsmi/css/common/font.css" type="text/css">
<link rel="stylesheet" href="/css/common/grid.css" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
.table {
	table-layout: fixed;
}

.tablemd {
	width: 100%;
	align: center;
	text-align: left;
}

#h3title{
	color: #2a82a3;
}

#clist{
	background: -webkit-linear-gradient(#ffffff, #b0e0e6);
	background: -o-linear-gradient(#ffffff, #b0e0e6);
	background: -moz-linear-gradient(#ffffff, #b0e0e6);
	background: linear-gradient(#ffffff, #b0e0e6);
	border: solid 1px #2a82a3;
	height: 40px;
	border-radius: 4px;
	padding-top : 0.5%;
	font-size: 14pt;
	box-shadow : 3px 3px 5px silver;
}

#ctitle {
	font-family: computer !important;
	color : #2a82a3;
	font-size: 15px;
}

#ctitlec {
	font-family: NotoSansCJKkr-Ligth !important;
	color : #2a82a3;
	font-size: 13px;
}

#cdate {
	font-family: computer !important;
	color : #2a82a3;
	font-size: 15px;
}

#cdatec {
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 13px;
}

.tdmd{
	padding-top: 2%;
	padding-left: 2%;
	padding-bottom: 0.7%;
	border-bottom: 1px solid #ddd;
	width: 100%;
	color: dimgray;
}

#ccontents {
	text-align: center;
	align: center;
}

.tdmini1 {
	border-top : 1px solid #2a82a3;
	border-bottom : 1px solid #ddd;
	padding-top : 1.5%;
	padding-left : 2%;
}

.tablemini{
	width: 100%;
	font-family: computer !important;
}

.tdmini2 {
	border-bottom : 1px solid #2a82a3;
	padding-top : 1.5%;
	padding-left : 2%;
	
	
}

#wwrite{
	color : #2a82a3;
}

#tw {
	font-family: NotoSansCJKkr-Ligth !important;
	font-size : 9pt;
}



</style>

</head>

<body>
	<!-- /jsmi/views/main1/CSBoard/taxNews/taxNews.jsp -->

	<%@ include file="/views/common/main1/menubar.jsp"%>

	<br>
	<br>
	<br>

	<!-- 컴퓨터용 -->
	<div class="middle hidden-xs">


		<div class="middle font-family-md-1">
			<h3 align="center">
				<img src="/jsmi/images/news.png"><br><br>
				절세미인과 관련된 <label id="h3title">빠르고 정확한 소식을 전해드립니다.</label>
			</h3>
			<h4 style="color: #a9a9a9" align="center">새로운 소식을 보다 빠르고 정확하게
				확인하실 수 있습니다.
			</h4>
		</div>

		<br> <br> <br>

		<div id="clist">
			<label id="ctitle">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				제목
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|
			</label> 
			<label id=ctitlec>&nbsp;&nbsp;
				[절세미인] 여기엔 제목값이 입력되는 곳 입니다.</label>
		</div>

		<div class="tableStart">
			<table class="tablemd">
				<tbody class="tbodymd font-family-md-3">
					<tr>
						<td class="tdmd">
							<label id=cdate>작성일
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</label>
							<label id=cdatec>&nbsp;&nbsp;작성일이 들어갈 곳입니다.
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</label>
						</td> 
					</tr>
					
					<!-- DB연동시 삭제 할 부분! 보여주려고 여기에 해 놓은 것임! 오해금지! 내용이 들어갈 곳 -->
					<tr>
						<td class="tdmd" id="ccontents">
							<h3></h3>
							내용값이 들어가는 부분입니다. 삭제 후 사용!<br> <br>
							<img src="/jsmi/images/수현찡.jpg">
							<img src="/jsmi/images/taxNewsEX.png">
							<h3></h3>
						</td>
					</tr>
					<!-- DB연동시 삭제 할 부분 보여주려고 여기에 씀 -->
				</tbody>
			</table>
		</div>
		
				<br><br><br>

		<div class="tableStart2">
			<table class="tablemini">
				<tr>
					<td class="tdmini1"><label id="wwrite">이전글
							&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</label> <label id="tw">
							<!-- 이전글 제목을 입력하는 공간입니다. -->이전글 제목을 입력하는 공간입니다.
					</label>
					<td>
				</tr>

				<tr>
					<td class="tdmini2"><label id="wwrite">다음글
							&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</label> <label id="tw">
							<!-- 다음글 제목을 입력하는 공간입니다. -->다음글 제목을 입력하는 공간입니다.
					</label>
					<td>
				</tr>
			</table>
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
			<h2 align="center" class="font-family-xs-1">세무 소식</h2>
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
								<td>제      목</td>
								<td></td>
							</tr>
							
							<tr class="danger">
								<td>첨부파일</td>
								<td></td>
							</tr>
							
							<tr class="info">
								<td colspan="2">
									<textarea class="form-control" rows="10" id="comment"></textarea>
								</td>
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