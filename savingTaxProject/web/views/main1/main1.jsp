
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
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
	border-radius: 5px;
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

#viewOn {
	width: 50px;
	height: 50px;
	position: absolute;
	left: 85%;
	top: 50%;
	z-index: 1;
}

#viewOn2 {
	width: 30px;
	height: 30px;
	position: absolute;
	left: 80%;
	top: 50%;
	z-index: 1;
	position: absolute;
}

.mainMenu {
	width: 350;
	height: 600;
}

image {
	padding: 0px;
}

#myCarousel {
	width: 100%;
	height: 70%;
	padding-right: 0px;
	padding-left: 0px;
	padding-right: 0px;
}

.carousel-indicators {
	position: absolute;
	bottom: -10px;
	left: 50%;
	z-index: 15;
	width: 60%;
	padding-left: 0;
	margin-left: -30%;
	text-align: center;
	list-style: none;
}

.container-fluid {
	padding-right: 0px;
	padding-left: 0px;
	margin-right: auto;
	margin-left: auto;
	margin-right: auto;
}

#slidesize, #slidesize2, #slidesize3, #slidesize4 {
	padding-right: 0px;
	padding-left: 0px;
	padding-top: 10px;
	padding-bottom: 10px;
}

hr {
	margin-top: 0px;
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
	<div class="container-fluid hidden-sm hidden-md hidden-lg">
		<!-- //1-xs -->
		<div class="row">
			<div class="col-xs-0"></div>
			<div class="col-xs-6" style="background: white;">
				<img src="/jsmi/images/main1/logoxs.png"
					class="img-responsive logosize">
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
				<div class="col-xs-4" id="border1"
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
				<div class="col-xs-4" style="background: #10aaff;" id="border7" 
				onclick="location.href='/jsmi/listview?page=1&board_no=1'">
				<img src="/jsmi/images/helpdesk1.png" class="img-responsive">
				</div>
				<div class="col-xs-4" style="background: #105080;" id="border8">
					<img src="/jsmi/images/1.png" class="img-responsive">
				</div>
				<div class="col-xs-2"></div>
			</div>
		</div>
		<br class="hidden-sm hidden-md hidden-lg">



    <!-- 2.sm -->
		<div class="container-fluid hidden-lg hidden-md hidden-xs">
			<div class="row">
				<div class="col-sm-2"></div>
				<div class="col-sm-4" style="background: white;">
					<img src="/jsmi/images/logo2.png"
						class="img-responsive visible-xs visible-sm hidden-md hidden-lg">
				</div>

				<div class="col-sm-4">
					<button class="btn btn-warning btn-sm"
						onclick="location.href='/jsmi/views/main1/loginForm.html'">로그인</button>
					<button class="btn btn-primary btn-sm"
						onclick="location.href='/jsmi/views/main1/agreeForm.html'">회원가입</button>
				</div>
				<div class="col-sm-2"></div>
			</div>
		</div>


		<div class="container-fluid hidden-lg hidden-md hidden-xs"
		style="background: #0e113b">
			<div class="row">
				<div class="col-sm-2"></div>
				<div class="col-sm-8" id="slidesize2">


					<!-- <div class="container-fluid hidden-lg hidden-md hidden-xs"> -->
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
								<img src="/jsmi/images/slide1.jpg" width="800" height="400">
							</div>

							<div class="item">
								<img src="/jsmi/images/slide4.png" width="800" height="600">
							</div>

							<div class="item">
								<img src="/jsmi/images/slide2.png" width="800" height="600">
							</div>

							<div class="item">
								<img src="/jsmi/images/slide3.png" width="800" height="600">
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
			<div class="col-sm-2"></div>
		</div>
		<hr class="hidden-xs hidden-md hidden-lg">

		<!-- 뷰온버튼 -->
		<!-- <div id="viewOn2" class="hidden-xs hidden-md hidden-lg gotoM2">
		<img src="/jsmi/images/main1/gotomain4.png">
	</div> -->


		<div class="container-fluid hidden-lg hidden-md hidden-xs">
			<div class="row">
				<div class="col-sm-2 "></div>
				<div class="col-sm-2" id="border1"
					onclick="location.href='/jsmi/views/main1/introduce.jsp'">
					<img src="/jsmi/images/info.png" class="img-responsive">
				</div>
				<div class="col-sm-2" style="background: #105080;" id="border2">
					<img src="/jsmi/images/1.png" class="img-responsive">
				</div>
				<div class="col-sm-2" style="background: #10aaff;" id="border3">
					<img src="/jsmi/images/function.png" class="img-responsive">
				</div>
				<div class="col-sm-2" style="background: #10aaff;" id="border4">
					<img src="/jsmi/images/event.png" class="img-responsive">
				</div>
				<div class="col-sm-2"></div>
			</div>

			<div class="row">
				<div class="col-sm-2"></div>
				<div class="col-sm-2" style="background: #105080;" id="border5">
					<img src="/jsmi/images/1.png" class="img-responsive">
				</div>
				<div class="col-sm-2" style="background: #10aaff;" id="border6">
					<img src="/jsmi/images/cost.png" class="img-responsive">
				</div>
				<div class="col-sm-2" style="background: #10aaff;" id="border7"
				onclick="location.href='/jsmi/listview?page=1&board_no=1'">
					<img src="/jsmi/images/helpdesk1.png" class="img-responsive">
				</div>
				<div class="col-sm-2" style="background: #105080;" id="border8">
					<img src="/jsmi/images/1.png" class="img-responsive">
				</div>
				<div class="col-sm-2"></div>
			</div>
		</div>





<!-- //3-md -->
		<div class="container-fluid hidden-lg hidden-sm hidden-xs">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-4" style="background: white;">
					<img src="/jsmi/images/logo4.png"
						class="img-responsive visible-lg visible-md  hidden-sm hidden-xs">
				</div>

				<div class="col-md-4">
					<button class="btn btn-warning btn-sm"
						onclick="location.href='/jsmi/views/main1/loginForm.html'">로그인</button>
					<button class="btn btn-primary btn-sm"
						onclick="location.href='/jsmi/views/main1/agreeForm.html'">회원가입</button>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>


		<div class="container-fluid hidden-lg hidden-sm hidden-xs"
		style="background: #0e113b">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8" id="slidesize3">

					<!-- <div class="container-fluid hidden-lg hidden-sm hidden-xs"> -->
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
								<img src="/jsmi/images/slide1.jpg" width="800" height="400">
							</div>

							<div class="item">
								<img src="/jsmi/images/slide4.png" width="800" height="600">
							</div>

							<div class="item">
								<img src="/jsmi/images/slide2.png" width="800" height="600">
							</div>

							<div class="item">
								<img src="/jsmi/images/slide3.png" width="800" height="600">
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
					<hr>
				</div>

			</div>
			<div class="col-md-2"></div>
		</div>
		<hr class="hidden-xs hidden-sm hidden-lg">

		<!-- 뷰온버튼 -->
		<div id="viewOn" class="hidden-xs hidden-sm hidden-lg gotoM1">
			<img src="/jsmi/images/main1/gotomain2.png">
		</div>


		<div class="container-fluid hidden-lg hidden-sm hidden-xs">
			<div class="row">
				<div class="col-md-2 "></div>
				<div class="col-md-2" id="border1"
					onclick="location.href='/jsmi/views/main1/introduce.jsp'">
					<img src="/jsmi/images/info.png" class="img-responsive">
				</div>
				<div class="col-md-2" style="background: #105080;" id="border2">
					<img src="/jsmi/images/1.png" class="img-responsive">
				</div>
				<div class="col-md-2" style="background: #10aaff;" id="border3">
					<img src="/jsmi/images/function.png" class="img-responsive">
				</div>
				<div class="col-md-2" style="background: #10aaff;" id="border4">
					<img src="/jsmi/images/event.png" class="img-responsive">
				</div>
				<div class="col-md-2"></div>
			</div>

			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-2" style="background: #105080;" id="border5">
					<img src="/jsmi/images/1.png" class="img-responsive">
				</div>
				<div class="col-md-2" style="background: #10aaff;" id="border6">
					<img src="/jsmi/images/cost.png" class="img-responsive">
				</div>
				<div class="col-md-2" style="background: #10aaff;" id="border7"
				onclick="location.href='/jsmi/listview?page=1&board_no=1'">
					<img src="/jsmi/images/helpdesk1.png" class="img-responsive">
				</div>
				<div class="col-md-2" style="background: #105080;" id="border8">
					<img src="/jsmi/images/1.png" class="img-responsive">
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>



<!-- //4-lg -->
		<div class="container-fluid hidden-xs hidden-sm hidden-md">
			<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-4" style="background: white;">
					<img src="/jsmi/images/logo4.png"
						class="img-responsive hidden-md  hidden-sm hidden-xs">
				</div>

				<div class="col-lg-4">
					<button class="btn btn-warning btn-sm"
						onclick="location.href='/jsmi/views/main1/loginForm.html'">로그인</button>
					<button class="btn btn-primary btn-sm"
						onclick="location.href='/jsmi/views/main1/agreeForm.html'">회원가입</button>
				</div>
				<div class="col-lg-2"></div>
			</div>
		</div>


		<div class="container-fluid hidden-xs hidden-sm hidden-md"
			style="background: #0e113b">
			<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-8" id="slidesize4">

					<!-- <div class="container-fluid hidden-xs hidden-sm hidden-md"> -->
					<br>
					<div id="myCarousel4" class="carousel slide" data-ride="carousel">
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
								<img src="/jsmi/images/slide1.jpg" width="800" height="400">
							</div>

							<div class="item ">
								<img src="/jsmi/images/slide4.png" width="800" height="600">
							</div>

							<div class="item">
								<img src="/jsmi/images/slide2.png" width="800" height="600">
							</div>

							<div class="item">
								<img src="/jsmi/images/slide3.png" width="800" height="600">
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
			<div class="col-lg-2"></div>
		</div>
		<hr class="hidden-xs hidden-sm hidden-md">

		<!-- 뷰온버튼 -->
		<div id="viewOn" class="hidden-xs hidden-sm hidden-md gotoM1">
			<img src="/jsmi/images/main1/gotomain2.png">
		</div>


		<div class="container-fluid hidden-xs hidden-sm hidden-md">
			<div class="row">
				<div class="col-lg-2 "></div>
				<div class="col-lg-2" id="border1"
					onclick="location.href='/jsmi/views/main1/introduce.jsp'">
					<img src="/jsmi/images/info.png" class="img-responsive">
				</div>
				<div class="col-lg-2" style="background: #105080;" id="border2">
					<img src="/jsmi/images/1.png" class="img-responsive">
				</div>
				<div class="col-lg-2" style="background: #10aaff;" id="border3">
					<img src="/jsmi/images/function.png" class="img-responsive">
				</div>
				<div class="col-lg-2" style="background: #10aaff;" id="border4">
					<img src="/jsmi/images/event.png" class="img-responsive">
				</div>
				<div class="col-lg-2"></div>
			</div>

			<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-2" style="background: #105080;" id="border5">
					<img src="/jsmi/images/1.png" class="img-responsive">
				</div>
				<div class="col-lg-2" style="background: #10aaff;" id="border6">
					<img src="/jsmi/images/cost.png" class="img-responsive">
				</div>
				<div class="col-lg-2" style="background: #10aaff;" id="border7"
				onclick="location.href='/jsmi/listview?page=1&board_no=1'">
					<img src="/jsmi/images/helpdesk1.png" class="img-responsive">
				</div>
				<div class="col-lg-2" style="background: #105080;" id="border8">
					<img src="/jsmi/images/1.png" class="img-responsive">
				</div>
				<div class="col-lg-2"></div>				
			</div>
		</div>
		
   	<hr class="hidden-xs">
    <%@ include file="/views/common/footer.jsp"  %>
</body>
</html>