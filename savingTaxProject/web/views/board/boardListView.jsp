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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	background: white;
}

#border1, #border2, #border3, #border4, #border5, #border6, #border7,
	#border8 {
	border: 1px solid white;
}

#border1, #border3, #border4, #border6, #border7 {
	background: #10aaff;
}

p {
	font-family: google;
	font-size: 0.8em;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	margin: auto;
}

table {
	position: relative;
	z-index: 1000;
	top: 10%;
	left: 80%;
}

button {
	float: right;
	margin: 2px;
}

#bar {
	padding: 0px;
	margin-top: 3px;
}

#viewOn {
	width: 50px;
	height: 50px;
	position: absolute;
	left: 85%;
	top: 50%;
	z-index: 1;
}

.table {
	position: absolute;
	left: 10px;
}
</style>

</head>

<body>
	<%@ include file="../common/menubar.jsp" %>
	
	<form action=""></form>

	<div class="container">
		<div class="row">
			<div class="col-xs-0 col-md-5"></div>
			<div class="col-xs-0 col-md-3">
				<h1>게 시 판</h1>
			</div>
			<div class="col-xs-0 col-md-4"></div>
		</div>
	</div>
	
	<br><br>

	<div class="container">
		<div class="row">
			<div class="col-xs-0 col-md-2"></div>

			<div class="col-xs-12 col-md-8">
				<div class="table-responsive">
					<table class="table table-bordered">
						<thead>
							<tr class="warning">
								<th>번     호</th>
								<th>제     목</th>
								<th>작 성 자</th>
								<th>작 성 일</th>
								<th>조 회 수</th>
								<th>파일여부</th>
							</tr>
						</thead>
						<tbody>
							<tr class="success">
								<td>여기에 값 넣기</td>
								<td>여기에 값 넣기</td>
								<td>여기에 값 넣기</td>
								<td>여기에 값 넣기</td>
								<td>여기에 값 넣기</td>
								<td>여기에 값 넣기</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="col-xs-0 col-md-2"></div>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<div class="row">
		<div class="col-xs-0 col-md-7"></div>

		<div class="col-xs-12 col-md-2">
			<input type="text" name="search" placeholder="검색할 제목을 입력하세요.">
		</div>
		<div class="col-xs-0 col-md-3">
			<input type="submit" class="btn btn-primary" value="검색">		
		</div>
	</div>
	
		<br>
	
		<div class="row">
		<div class="col-xs-0 col-md-6"></div>

		<div class="col-xs-12 col-md-3">
			
		</div>

		<div class="col-xs-0 col-md-3">
			<input type="submit" class="btn btn-primary" value="글쓰기">		
		</div>

	</div>


	<%@ include file="../common/footer.html" %>
</body>
</html>