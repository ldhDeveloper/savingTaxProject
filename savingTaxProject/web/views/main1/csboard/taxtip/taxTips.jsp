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
	padding: 50px;
	text-align: center;
	border-bottom: 1px solid #ddd;
	color: dimgray;
}

.tno {
	width: 7%;
}

.ttitle {
	width: 78%;
}

#searchdiv {
	background: -webkit-linear-gradient(#ffffff, #b0e0e6);
	background: -o-linear-gradient(#ffffff, #b0e0e6);
	background: -moz-linear-gradient(#ffffff, #b0e0e6);
	background: linear-gradient(#ffffff, #b0e0e6);
	border: solid 1px #dcdcdc;
	height: 40px;
	border-radius: 4px;
	padding-top: 0.4%;
	box-shadow: 3px 3px 5px silver;
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
	background: -webkit-linear-gradient(#ffffff, #b0e0e6);
	background: -o-linear-gradient(#ffffff, #b0e0e6);
	background: -moz-linear-gradient(#ffffff, #b0e0e6);
	background: linear-gradient(#ffffff, #b0e0e6);
	border: solid 1px #2a82a3;
	height: 40px;
	border-radius: 4px;
	padding-top: 0.8%;
	font-size: 12pt;
	box-shadow: 3px 3px 5px silver;
}

#tno {
	width: 42%;
}

#ttitle {
	width: 43%;
}

.theadmd {
	 border-bottom: 2px solid #2a82a3;;
}
</style>

</head>

<body>
	<!-- http://127.0.0.1:7660/jsmi/views/main1/CSBoard/taxTip/taxTips.jsp -->

	<%@ include file="../../../common/menubar.jsp"%>

	<br>
	<br>
	<br>

	<!-- 컴퓨터용 -->
	<div class="middle hidden-xs">


		<div class="middle font-family-md-1">
			<h3 align="center">
				<img src="/jsmi/images/tip.png"><br><br>
				세무와 관련된 <label>유용한 정보를 알려드립니다.</label>
			</h3>
			<h4 style="color: #a9a9a9" align="center">쉽고 자세하게 설명 드릴게요.</h4>
		</div>

		<br> <br> <br>


		<div class="tableStart">
			<table class="tablemd">
				<thead class="theadmd font-family-md-2">
					<tr>
						<th colspan="3"></th>

					</tr>
				</thead>

				<tbody class="tbodymd font-family-md-3">
					<tr>
						<td class="tno tdmd">5</td>
						<td class="ttitle tdmd">
							<a href="taxTipsContents.jsp">종합소득세 신고하는 방법</a>
						</td>
						<td class="tdate tdmd">2017-03-25</td>
					</tr>

					<!-- DB연동시 삭제 할 부분! 보여주려고 여기에 해 놓은 것임! 오해금지! -->
					<tr>
						<td class="tno tdmd">4</td>
						<td class="ttitle tdmd">부가세신고하는 방법</td>
						<td class="tdate tdmd">2017-03-25</td>
					</tr>

					<tr>
						<td class="tno tdmd">3</td>
						<td class="ttitle tdmd">급여/4대보험</td>
						<td class="tdate tdmd">2017-03-25</td>
					</tr>

					<tr>
						<td class="tno tdmd">2</td>
						<td class="ttitle tdmd">전자세금계산서</td>
						<td class="tdate tdmd">2017-03-25</td>
					</tr>

					<tr>
						<td class="tno tdmd">1</td>
						<td class="ttitle tdmd">시작하기/장부쓰기</td>
						<td class="tdate tdmd">2017-03-25</td>
					</tr>
					<!-- DB연동시 삭제 할 부분 보여주려고 여기에 씀 -->
				</tbody>
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