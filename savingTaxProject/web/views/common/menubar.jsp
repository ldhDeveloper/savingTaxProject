<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/common.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style type="text/css">


.btn {
	margin-top: 40px;
}

.container-fluid {
	align: center;
}
.collapse navbar-collapse navbar-right{
	position:absolute;
}
.container-fluid hidden-sm hidden-md hidden-lg{
	position:absolute;
	top:100px;
	z-index:10;
}
#xs-logout {
	position:fixed;
	left:85%;
	margin-top:80px;
	z-index:1;
}
</style>
</head>

<body>
	<!-- 데스트탑(lg) 최적화 -->

	<!--  로고 + 로그인버튼 -->
	<div class="container-fluid hidden-xs hidden-sm hidden-md" id="bar">
		<div class="row">
			<div class="col-lg-1"></div>
			<div class="col-lg-5" style="background: white;">
				<img src="/jsmi/images/logo4.png" class="" id="logo">
			</div>
			<div class="col-lg-4"></div>
			<div class="col-lg-1">
				<button id="logout" class="btn btn-warning btn-sm"
					onclick="location.href='/jsmi/index.jsp'">로그아웃</button>
			</div>
			<div class="col-lg-1"></div>
		</div>
	</div>
	
	<!-- 데스크탑 메뉴바  -->
	<div class="container-fluid" id="bar">
		<div class="row">
			<nav class="navbar navbar-inverse hidden-xs hidden-sm hidden-md">
				<div class="container-fluid navbar-header">
					<div class="col-lg-1"></div>
					<div class="col-lg-10">
						<ul class="nav navbar-nav nav-tabs nav-justified">
							<li><a href="#"> <img src="/jsmi/images/menubar/mb1.png"
									class="" style="width: 170px; height: 20px;"></a></li>
							<li><a href="#"><img src="/jsmi/images/menubar/mb2.png"
									class="" style="width: 170px; height: 20px;"></a></li>
							<li><a href="#"><img src="/jsmi/images/menubar/mb3.png"
									class="" style="width: 170px; height: 20px;"></a></li>
							<li><a href="#"><img src="/jsmi/images/menubar/mb4.png"
									class="" style="width: 170px; height: 20px;"></a></li>
							<li><a href="/jsmi/listview"><img
									src="/jsmi/images/menubar/mb5.png" class=""
									style="width: 170px; height: 20px;"></a></li>
						</ul>
					</div>
					<div class="col-lg-1"></div>
				</div>
			</nav>
		</div>
	</div>

	<!-- 노트북(md) 최적화 -->

	<!--  로고 + 로그인버튼 -->
	<div class="container-fluid hidden-xs hidden-sm hidden-lg" id="bar">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-4" style="background: white;">
				<img src="/jsmi/images/logo4.png" class="" id="logo">
			</div>
			<div class="col-md-3"></div>
			<div class="col-md-1">
				<button id="logout" class="btn btn-warning btn-sm"
					onclick="location.href='/jsmi/index.jsp'">로그아웃</button>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>


	<!-- 노트북 메뉴바  -->
	<div class="container-fluid" id="bar">
		<div class="row">
			<nav class="navbar navbar-inverse hidden-xs hidden-sm hidden-lg">
				<div class="container-fluid navbar-header">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<ul class="nav navbar-nav nav-tabs nav-justified">
							<li><a href="#"> <img src="/jsmi/images/menubar/mb1.png"
									class="" style="width: 120px; height: 25px;"></a></li>
							<li><a href="#"><img src="/jsmi/images/menubar/mb2.png"
									class="" style="width: 120px; height: 25px;"></a></li>
							<li><a href="#"><img src="/jsmi/images/menubar/mb3.png"
									class="" style="width: 120px; height: 25px;"></a></li>
							<li><a href="#"><img src="/jsmi/images/menubar/mb4.png"
									class="" style="width: 120px; height: 25px;"></a></li>
							<li><a href="/jsmi/listview"><img
									src="/jsmi/images/menubar/mb5.png" class=""
									style="width: 120px; height: 25px;"></a></li>
						</ul>
					</div>
					<div class="col-md-2"></div>
				</div>
			</nav>
		</div>
	</div>

	<!-- 태블릿(sm) 최적화 -->

	<!--  로고 + 로그인버튼 -->
	<div class="container-fluid hidden-xs hidden-md hidden-lg" id="bar">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-4" style="background: white;">
				<img src="/jsmi/images/logo4.png" class="" id="logo">
			</div>
			<div class="col-sm-3"></div>
			<div class="col-sm-1">
				<button id="logout" class="btn btn-warning btn-xs"
					onclick="location.href='/jsmi/index.jsp'">로그아웃</button>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
	
	<!-- 태블릿 메뉴바  -->
	<div class="container-fluid" id="bar">
		<div class="row">
			<nav class="navbar navbar-inverse hidden-xs hidden-md hidden-lg">
				<div class="container-fluid navbar-header">
					<div class="col-sm-2"></div>
					<div class="col-sm-8">
						<ul class="nav navbar-nav nav-tabs nav-justified">
							<li><a href="#"> <img src="/jsmi/images/menubar/mb1.png"
									class="" style="width: 100px; height: 20px;"></a></li>
							<li><a href="#"><img src="/jsmi/images/menubar/mb2.png"
									class="" style="width: 100px; height: 20px;"></a></li>
							<li><a href="#"><img src="/jsmi/images/menubar/mb3.png"
									class="" style="width: 100px; height: 20px;"></a></li>
							<li><a href="#"><img src="/jsmi/images/menubar/mb4.png"
									class="" style="width: 100px; height: 20px;"></a></li>
							<li><a href="/jsmi/listview"><img
									src="/jsmi/images/menubar/mb5.png" class=""
									style="width: 100px; height: 20px;"></a></li>
						</ul>
					</div>
					<div class="col-md-2"></div>
				</div>
			</nav>
		</div>
	</div>
	
	
	

	<!-- 모바일(xs) 최적화 -->
	
	<!--  모바일 상단메뉴 -->
	<div class="container-fluid navbar-fixed-top" id="bar">
		<div class="row">
			<nav
				class="navbar navbar-inverse hidden-md hidden-sm hidden-lg">
				<div class="container-fluid navbar-header">
					<div class="col-xs-12 col-md-8">

						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#myNavbar">
							<span class="icon-bar"></span><span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>


						<br><br><br>
						<div class="collapse navbar-collapse navbar-right" id="myNavbar">
							<ul class="nav navbar-nav navbar-static-top">

								<li><a href="#"> <img
										src="/jsmi/images/menubar/mb1.png" class="img-responsive"
										style="width: 30%; height: 30%;"></a></li>
								<li><a href="#"><img src="/jsmi/images/menubar/mb2.png"
										class="img-responsive" style="width: 30%; height: 30%;"></a></li>
								<li><a href="#"><img src="/jsmi/images/menubar/mb3.png"
										class="img-responsive" style="width: 30%; height: 30%;"></a></li>
								<li><a href="#"><img src="/jsmi/images/menubar/mb4.png"
										class="img-responsive" style="width: 30%; height: 30%;"></a></li>
								<li><a href="#"><img src="/jsmi/images/menubar/mb5.png"
										class="img-responsive" style="width: 30%; height: 30%;"></a></li>
							</ul>

						</div>
					</div>

				</div>
			</nav>
		</div>
	</div>

	<!--  로고 + 로그인버튼 -->
	<div class="container-fluid hidden-sm hidden-md hidden-lg" id="bar">
		<div class="row">
			<div class="col-xs-0"></div>
			<div class="col-xs-8" style="background: white;">
				<img src="/jsmi/images/logo4.png" class="img-responsive navbar-fixed-top" id="logo" width="50%" >

			</div>
			<div class="col-xs-2"></div>
			<div class="col-xs-1">
				<button class="btn btn-warning btn-xs navbar-fixed-top" id="xs-logout"
					onclick="location.href='/jsmi/index.jsp'">로그아웃</button>
			</div>
			<div class="col-xs-1"></div>
		</div>
	</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>