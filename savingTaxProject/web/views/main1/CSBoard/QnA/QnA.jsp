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

.searchLable {
	font-family: redmailbox !important;
}

#tlist {
	font-family: noscocks !important;
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
.middle {
	font-family: mobius !important;
}

.table {
	table-layout: fixed;
}

.tablemd {
	width: 100%;
	align: center;
	text-align: center;
}

.theadmd {
	border: solid 1px #2a82a3;
	border-radius: 3px;
}

.thmd {
	background: -webkit-linear-gradient(aliceblue, white);
	background: -o-linear-gradient(aliceblue, white);
	background: -moz-linear-gradient(aliceblue, white);
	background: linear-gradient(aliceblue, white);
	border: solid 1px #2a82a3;
	border-radius: 5px;
	text-align: center;
	color: #2a82a3;
	height: 45px;
}

.tdmd {
	padding: 8px;
	text-align: center;
	border-bottom: 1px solid #ddd;
	color: dimgray;
}

.tno {
	width: 6%;
}

.ttitle {
	width: 55%;
}

.twriter {
	width: 23%;
}

#searchdiv {
	background: -webkit-linear-gradient(left, #ffffff, #b0e0e6);
	background: -o-linear-gradient(left, #ffffff, #b0e0e6);
	background: -moz-linear-gradient(left, #ffffff, #b0e0e6);
	background: linear-gradient(left, #ffffff, #b0e0e6);
	border: solid 1px #dcdcdc;
	height: 40px;
	border-radius: 4px;
	padding-top: 0.4%;
	box-shadow: 3px 3px 6px #2a82a3;
}

#searchmd {
	border: 2px solid gray;
}

#searchLable {
	font-family: kamizom;
	font-size: 15pt;
	font-align: center;
}

#searchTitle {
	width: 50%;
	height: 23px;
}

#submitBtn {
	border: none;
	border-radius: 3px;
	background-color: #2a82a3;
	color: white;
	font-family: Binggrae !important;
}

label {
	color: #2a82a3;
}

.thmdl {
	border-top-left-radius: 5px;
}

#tlist {
	background: -webkit-linear-gradient(left, #ffffff, #b0e0e6);
	background: -o-linear-gradient(left, #ffffff, #b0e0e6);
	background: -moz-linear-gradient(left, #ffffff, #b0e0e6);
	background: linear-gradient(left, #ffffff, #b0e0e6);
	border: solid 1px #dcdcdc;
	height: 40px;
	border-radius: 4px;
	padding-top: 0.8%;
	font-size: 12pt;
	box-shadow: 2px 2px 6px #2a82a3;
}

#tno {
	width: 30%;
}

#ttitle {
	width: 37%;
}

#twriter {
	width: 15%;
}

#submitBtn2 {
	border: none;
	border-radius: 3px;
	border-color: #d58512;
	color: white;
	width: 8%;
    height: 25px;
	font-family: Binggrae !important;
	background-color : #ec971f;
}


</style>

</head>

<body>
	<!-- /jsmi/views/main1/CSBoard/taxNews/taxNews.jsp -->

	<%@ include file="../../../common/menubar.jsp"%>

	<br>
	<br>
	<br>

	<!-- 컴퓨터용 -->
	<div class="middle hidden-xs">


		<div class="middle font-family-md-1">
			<h3 align="center">
				<img src="/jsmi/images/QnA.png"><br>
				<br> 절세미인 회원님들이 <label>질문을 하는 곳입니다.</label>
			</h3>
			<h4 style="color: #a9a9a9" align="center">빠르고 정확하게 알려드릴게요.</h4>
		</div>

		<br> <br> <br>

		<div id="searchdiv" align="center">
			<label id="searchLable">SEARCH</label>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text"
				id="searchTitle" placeholder="검색할 제목을 입력하세요."> &nbsp;&nbsp;
			<input type="submit" id="submitBtn" value="검색">
		</div>

		<br> <br> <br> <br>

		<div id="tlist">
			<label id="tno">
				&nbsp;&nbsp;&nbsp;번호&nbsp;&nbsp;&nbsp;|</label> 
				
			<label id="ttitle">
				&nbsp;&nbsp;제목&nbsp;&nbsp;
			</label> 
			
			<label id="twriter">
				|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;
				작성자
				&nbsp;&nbsp;&nbsp;&nbsp;
			</label>
			 
			<label id="tdate">
				|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				작성일&nbsp;&nbsp;
			</label>
		</div>

		<div class="tableStart">
			<table class="tablemd">
				<!-- <thead class="theadmd font-family-md-2">
					<tr>
						<th class="tno thmd thmdl">번호</th>
						<th class="ttitle thmd thmdm">제목</th>
						<th class="tdate thmd thmdr">작성일</th>
					</tr>
				</thead> -->

				<tbody class="tbodymd font-family-md-3">
					<tr>
						<td class="tno tdmd">5</td>
						<td class="ttitle tdmd"><a href="QnAContents.jsp">질문이 있어요~</a></td>
						<td class="twriter tdmd">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;
							김진호
						</td>
						<td class="tdate tdmd">2017-03-25</td>
					</tr>

					<!-- DB연동시 삭제 할 부분! 보여주려고 여기에 해 놓은 것임! 오해금지! -->
					<tr>
						<td class="tno tdmd">4</td>
						<td class="ttitle tdmd">질문이 있어요~</td>
						<td class="twriter tdmd">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;
							김진항</td>
						<td class="tdate tdmd">2017-03-25</td>
					</tr>

					<tr>
						<td class="tno tdmd">3</td>
						<td class="ttitle tdmd">질문이 있어요~</td>
						<td class="twriter tdmd">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;김홍주</td>
						<td class="tdate tdmd">2017-03-25</td>
					</tr>

					<tr>
						<td class="tno tdmd">2</td>
						<td class="ttitle tdmd">질문이 있어요~</td>
						<td class="twriter tdmd">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;이동훈</td>
						<td class="tdate tdmd">2017-03-25</td>
					</tr>

					<tr>
						<td class="tno tdmd">1</td>
						<td class="ttitle tdmd">질문이 있어요~</td>
						<td class="twriter tdmd">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;임성혁</td>
						<td class="tdate tdmd">2017-03-25</td>
					</tr>
					<!-- DB연동시 삭제 할 부분 보여주려고 여기에 씀 -->
				</tbody>
			</table>
		</div>
		
		<br>
		<form action="/jsmi/views/main1/CSBoard/QnA/QnAWrite.jsp">
			<div align="right">
				<input type="submit" id="submitBtn2" value="글쓰기">&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
		</form>
				
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
				<!-- <div class="col-xs-0"></div> -->

				<div class="col-xs-12">
					<div class="table-responsive">
						<table class="table table-bordered" id="xstable">
							<tr class="info font-family-xs-2">
								<th id="th">번 호</th>
								<th id="th">제 목</th>
								<th id="th">작 성 일</th>
							</tr>

							<tr class="active font-family-xs-3">
								<td>여기에 값 입력</td>
								<td>여기에 값 입력</td>
								<td>여기에 값 입력</td>
							</tr>
						</table>
					</div>
				</div>
				<!-- <div class="col-xs-0"></div> -->
			</div>
		</div>

		<br> <br> <br> <br> <br> <br> <br>
	</div>
	<%@ include file="../../../common/footer.jsp"%>
</body>
</html>