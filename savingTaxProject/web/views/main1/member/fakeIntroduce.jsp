<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.view.vo.Member"%>
    
<% Member m = (Member)session.getAttribute("loginUser"); %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My page form</title>
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


</style>

</head>
<body>
	<%-- <form action="/jsmi/sdetail?userid=<%=m.getUserId()%>"> --%>
	<form action="">
	<header>
	<div class="container-fluid" id="bar"></div>
	<div class="row">
		<div class="col-xs-0 col-md-2"></div>
		<div class="col-xs-6 col-md-4" style="background: white;">
			<img src="/jsmi/images/logo4.png" class="img-responsive">
		</div>
		<div>
			<button type="button" class="btn btn-warning" onclick="location.href='/jsmi/views/main1/main1.html'">로그아웃</button>
  			<!-- <input class="btn btn-success" type="submit" value="마이페이지"> -->
  			<a href="/jsmi/sdetail?userid=<%=m.getUserId() %>">마이페이지</a>
		</div>
		<div class="col-xs-0 col-md-2"></div>
	</div>
	</header>
	
	<div class="container-fluid" id="bar"></div>
	<div class="row">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid navbar-header">
				<div class="col-xs-0 col-md-2"></div>
				<div class="col-xs-12 col-md-8">
					<ul class="nav navbar-nav nav-tabs nav-justified hidden-xs">
						<li><a href="#">
						<img src="/jsmi/images/menubar/mb1.png" class="img-responsive" style="width:100%;height:30%;"></a></li>
						<li><a href="#"><img src="/jsmi/images/menubar/mb2.png" class="img-responsive" style="width:100%;height:100%;"></a></li>
						<li><a href="#"><img src="/jsmi/images/menubar/mb3.png" class="img-responsive" style="width:100%;height:30%;"></a></li>
						<li><a href="#"><img src="/jsmi/images/menubar/mb4.png" class="img-responsive" style="width:100%;height:30%;"></a></li>
						<li><a href="/jsmi/customerService"><img src="/jsmi/images/menubar/mb5.png" class="img-responsive" style="width:100%;height:30%;"></a></li>
					</ul>
					<ul class="nav navbar-nav nav-tabs nav-justified hidden-md visible-xs">
						<li><a href="#">
						<img src="/jsmi/images/menubar/mb1.png" class="img-responsive" style="width:100%;height:30%;"></a></li>
						<li><a href="#"><img src="/jsmi/images/menubar/mb2.png" class="img-responsive" style="width:100%;height:100%;"></a></li>
						<li><a href="#"><img src="/jsmi/images/menubar/mb3.png" class="img-responsive" style="width:100%;height:30%;"></a></li>
						<li><a href="#"><img src="/jsmi/images/menubar/mb4.png" class="img-responsive" style="width:100%;height:30%;"></a></li>
						<li><a href="#"><img src="/jsmi/images/menubar/mb5.png" class="img-responsive" style="width:100%;height:30%;"></a></li>
					</ul>
				</div>
				<div class="col-xs-0 col-md-2"></div>
			</div>
		</nav>
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
	<br>
	<br>
	<br>
	
	
	
	
	<footer style="background: white; padding: 10px;">

		<div class="row">
			<div class="col-xs-0 col-md-2"></div>
			<div class="col-xs-12 col-md-8">
				<p>R&D사 서울시 구로구 구로3동 코오롱디지털타워빌란트2차 1405-1호 | 대표자 : 이종태 TEL. 02
					6925 0202 | FAX. 0303 0123 6389 통신판매등록번호 : 제2013-서울구로-0669호 |
					사업자등록번호 : 211-87-17024 COPYRIGHTS (c) (주)성공닷컴 ALL RIGHTS RESERVED.</p>
			</div>
			<div class="col-xs-0 col-md-2"></div>
		</div>
		</form>

	</footer>
</body>
</html>