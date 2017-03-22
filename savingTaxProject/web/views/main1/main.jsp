<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" href="/jsmi/css/grid.css" type="text/css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
.btn {
	float: right;
	margin: 5px;
	margin-top: 20px;
}

#border1, #border2, #border3, #border4, #border5, #border6, #border7,
	#border8 {
	border: 1px solid white;
	border-radius: 5px;
}

.slide-background {
	background: #002;
	height: 550px;
	padding-top: 70px;
}

.slide-box {
	padding: 0px;
}

.menu-btn {
	width: 300px;
	height:300px;
	padding-top: 95px;
	padding-bottom: 95px;
	display: inline;
}

.menu-wrap1 {
	padding-left: 70px;
	padding-top: 50px;
}
.menu-wrap2 {
	padding-left: 70px;
	padding-bottom: 80px;
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
<script type="text/javascript">
	$(function() {
		$('#border1').mouseover(function() {
			$(this).css("background", "orange").css("cursor", "pointer");
		}).mouseout(function() {
			$(this).css("background", "#10aaff");
		});

		$('#border3').mouseover(function() {
			$(this).css("background", "orange").css("cursor", "pointer");
		}).mouseout(function() {
			$(this).css("background", "#10aaff");
		});

		$('#border4').mouseover(function() {
			$(this).css("background", "orange").css("cursor", "pointer");
		}).mouseout(function() {
			$(this).css("background", "#10aaff");
		});

		$('#border6').mouseover(function() {
			$(this).css("background", "orange").css("cursor", "pointer");
		}).mouseout(function() {
			$(this).css("background", "#10aaff");
		});

		$('#border7').mouseover(function() {
			$(this).css("background", "orange").css("cursor", "pointer");
		}).mouseout(function() {
			$(this).css("background", "#10aaff");
		});
	});

	$(function() {
		$('.gotoM1').on("click", function() {
			location.href = "/jsmi/views/main2/index.html";
		}).mouseover(function() {
			$(this).css("cursor", "pointer");
		});
	});
</script>
</head>
<body>
	<!-- pc화면 -->
	<div class="middle hidden-xs">
		<table width="970px">
			<tr>
				<td><img src="/jsmi/images/menubar/logo.png" class="" id="logo"
					width="830">
				<td>
				<td width="70">
					<button class="btn btn-primary btn-sm"
						onclick="location.href='/jsmi/views/main1/agreeForm.html'">회원가입</button>
				<td>
				<td width="70">
					<button class="btn btn-warning btn-sm"
						onclick="location.href='/jsmi/views/main1/loginForm.html'">로그인</button>
				<td>
			</tr>
		</table>
	</div>

	<hr class="hidden-xs">

	<div class="slide-background hidden-xs">
		<div class="middle">
			<div class="container-fluid hidden-xs slide-box">
				<br>
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
						<li data-target="#myCarousel" data-slide-to="3"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="/jsmi/images/slide1.jpg" width="970">
						</div>

						<div class="item">
							<img src="/jsmi/images/slide4.png" width="970">
						</div>

						<div class="item">
							<img src="/jsmi/images/slide2.png" width="970">
						</div>

						<div class="item">
							<img src="/jsmi/images/slide3.png" width="970">
						</div>
					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>

				</div>
				<br>
			</div>
		</div>
	</div>

	<div class="middle menu-wrap1 hidden-xs">
		<div class="menu-btn" style="background: #10aaff;" id="border1"
			onclick="location.href='/jsmi/views/main1/introduce.jsp'">
			<img src="/jsmi/images/info.png" class="">
		</div>
		<div class="menu-btn" style="background: #105080;" id="border2">
			<img src="/jsmi/images/1.png" class="">
		</div>
		<div class="menu-btn" style="background: #10aaff;" id="border3">
			<img src="/jsmi/images/function.png" class="">
		</div>
		<div class="menu-btn" style="background: #10aaff;" id="border4">
			<img src="/jsmi/images/event.png" class="">
		</div>
	</div>
	<div class="middle menu-wrap2 hidden-xs">
		<div class="menu-btn" style="background: #105080;" id="border5">
			<img src="/jsmi/images/1.png" class="">
		</div>
		<div class="menu-btn" style="background: #10aaff;" id="border6">
			<img src="/jsmi/images/cost.png" class="">
		</div>
		<div class="menu-btn" style="background: #10aaff;" id="border7">
			<img src="/jsmi/images/helpdesk1.png" class="">
		</div>
		<div class="menu-btn" style="background: #105080;" id="border8">
			<img src="/jsmi/images/1.png" class="">
		</div>
	</div>



	<!--  모바일 화면 -->
	<div class="container-fluid hidden-sm hidden-md hidden-lg">
		<!-- //1-xs -->
		<div class="row">
			<div class="col-xs-0"></div>
			<div class="col-xs-6" style="background: white;">
				<img src="/jsmi/images/main1/logoxs.png" width="250">
			</div>

			<div class="col-xs-6">
				<button class="btn btn-warning btn-xs"
					onclick="location.href='/jsmi/views/main1/loginForm.html'">로그인</button>
				<button class="btn btn-primary btn-xs"
					onclick="location.href='/jsmi/views/main1/agreeForm.html'">회원가입</button>
			</div>
			<div class="col-xs-0"></div>
		</div>
	</div>
	<div class="container-fluid hidden-sm hidden-md hidden-lg"
		style="background: #0e113b">
		<div class="row">
			<div class="col-xs-2"></div>
			<div class="col-xs-8" id="slidesize">

				<div class="container-fluid hidden-sm hidden-md hidden-lg ">
					<br>
					<div id="myCarousel" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
							<li data-target="#myCarousel" data-slide-to="3"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img src="/jsmi/images/slide1.jpg">
							</div>

							<div class="item">
								<img src="/jsmi/images/slide4.png">
							</div>

							<div class="item">
								<img src="/jsmi/images/slide2.png">
							</div>

							<div class="item">
								<img src="/jsmi/images/slide3.png">
							</div>
						</div>

						<!-- Left and right controls -->
						<a class="left carousel-control" href="#myCarousel" role="button"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#myCarousel"
							role="button" data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>

					</div>
					<br>
				</div>

			</div>
			<div class="col-xs-2"></div>
		</div>
	</div>
	<hr class="hidden-sm hidden-md hidden-lg">

	<!-- 뷰온버튼xs -->
	<!-- <div id="viewOn2" class="hidden-md hidden-lg hidden-sm gotoM1">
		<img src="/jsmi/images/main1/gotomain.png">
	</div> -->
	<div class="container-fluid hidden-sm hidden-md hidden-lg mainMenu">
		<div class="row">
			<div class="col-xs-2"></div>
			<div class="col-xs-4" style="background: #10aaff;" id="border1"
				onclick="location.href='/jsmi/views/main1/introduce.jsp'">
				<img src="/jsmi/images/info.png" class="img-responsive">
			</div>
			<div class="col-xs-4" style="background: #105080;" id="border2">
				<img src="/jsmi/images/1.png" class="img-responsive">
			</div>
			<div class="col-xs-2"></div>
		</div>

		<div class="row">
			<div class="col-xs-2"></div>
			<div class="col-xs-4" style="background: #10aaff;" id="border3">
				<img src="/jsmi/images/function.png" class="img-responsive">
			</div>
			<div class="col-xs-4" style="background: #10aaff;" id="border4">
				<img src="/jsmi/images/event.png" class="img-responsive">
			</div>
			<div class="col-xs-2"></div>
		</div>

		<div class="row">
			<div class="col-xs-2"></div>
			<div class="col-xs-4" style="background: #105080;" id="border5">
				<img src="/jsmi/images/1.png" class="img-responsive">
			</div>
			<div class="col-xs-4" style="background: #10aaff;" id="border6">
				<img src="/jsmi/images/cost.png" class="img-responsive">
			</div>
			<div class="col-xs-2"></div>
		</div>

		<div class="row">
			<div class="col-xs-2"></div>
			<div class="col-xs-4" style="background: #10aaff;" id="border7">
				<img src="/jsmi/images/helpdesk1.png" class="img-responsive">
			</div>
			<div class="col-xs-4" style="background: #105080;" id="border8">
				<img src="/jsmi/images/1.png" class="img-responsive">
			</div>
			<div class="col-xs-2"></div>
		</div>
	</div>
	<br class="hidden-sm hidden-md hidden-lg">
	
	<!-- 뷰온버튼 -->
		<div id="viewOn" class="hidden-xs gotoM1">
			<img src="/jsmi/images/main1/gotomain2.png">
		</div>

	<%@ include file="/views/common/footer.jsp"%>
</body>
</html>