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
	position: relative;
	z-index: 100;
}

form {
	/* background-color: aliceblue; */
	/* background-color: mistyrose; */
	background-color: ghoastwhite;
	/* background-color: lightcyan; */
	/* background-color: azure; */
	/* background-color: mintcream; */
}

h1 {
	font-family: "/font/ssangmunDong.ttf", ssangmundong, serif;
}

#th, td {
	text-align: -webkit-center;
}

#search {
	width: 103%;
}
</style>

</head>

<body>
	<!-- /jsmi/views/main1/CSBoard/taxNews/taxNews.jsp -->
	<%@ include file="../../../common/menubar.jsp"%>
	
	<div class="container-fluid hidden-sm hidden-md hidden-lg"></div>
	
	<form action="">
		<br> <br> <br>

		<div class="container">
			<div class="row">
				<div class="col-xs-4 col-md-2"></div>
				<div class="col-xs-4 col-md-8">
					<h1>세무 소식</h1>
				</div>
				<div class="col-xs-4 col-md-2"></div>
			</div>
		</div>

		<br> <br> <br>


		<div class="row">
			<div class="col-xs-4 col-md-3"></div>

			<div class="col-xs-4 col-md-6">
				<input type="text" id="search" name="search"
					placeholder="검색할 제목을 입력하세요.">
			</div>
			<div class="col-xs-4 col-md-3">
				<input type="submit" class="btn btn-primary" value="검색">
			</div>
		</div>

		<br> <br> <br>


		<div class="container">
			<div class="row">
				<div class="col-xs-4 col-md-2"></div>

				<div class="col-xs-4 col-md-9">
					<div class="table-responsive">
						<table class="table table-bordered">
							<tr class="info">
								<th id="th">번 호</th>
								<th id="th">제 목</th>
								<th id="th">작 성 일</th>
							</tr>

							<tr class="active">
								<td>여기에 값 입력</td>
								<td>여기에 값 입력</td>
								<td>여기에 값 입력</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="col-xs-4 col-md-1"></div>
			</div>
		</div>

		<div class="row">
			<div class="col-xs-4 col-md-3"></div>

			<div class="col-xs-4 col-md-6">
			
			</div>
			<div class="col-xs-4 col-md-3">
				<input type="submit" class="btn btn-primary" value="검색">
			</div>
		</div>

		<br> <br> <br> <br> <br> <br> <br>
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br> <br> <br>
	</form>
	<%@ include file="../../../common/footer.jsp"%>
</body>
</html>