<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ page import="member.model.vo.Party"%>

<% Party loginUser = (Party) session.getAttribute("loginUser"); %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" href="/jsmi/css/common/grid.css" type="text/css">

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
	#border8,#border1-xs, #border2-xs, #border3-xs, #border4-xs, #border5-xs, 
	#border6-xs, #border7-xs, #border8-xs {
	border: 1px solid white;
	border-radius: 5px;
}

.slide-background {
	background: #234;
	height: 550px;
	padding-top: 70px;
}

.slide-box {
	padding: 0px;
}
.slide{
	margin-top:-20px;
	margin-bottom:-20px;
}
.menu-btn {
	width: 300px;
	height: 300px;
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
	position: relative;
	top: 7px;
}

#viewOn {
	width: 130px;
	height: 130px;
	position: fixed;
	left: 85%;
	top: 50%;
	z-index: 1;
	background: white;
	border-radius: 130px;
	padding-top: auto;
	padding-bottom: auto;
	padding-left: auto;
	padding-right: auto;
}

#viewOn:hover {
	background: orange;
}

#viewOn img {
	position: relative;
	top: 15px;
	left: 15px;
}

.menu-img {
	margin-right: auto;
	margin-left: auto;
}

.welcome {
	width:800px;
	margin-left:auto;
	margin-right:auto;
	position: relative;
	top:-12px;
	text-align:right;
}
.gradephoto{
	position:relative;
	top:-3px;
	left:-5px;
}
.toptop {height:50px;}
.slidepoint{
	position:relative;
	top:100px;
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
		
		$('#border1-xs').mouseover(function() {
			$(this).css("background", "orange").css("cursor", "pointer");
		}).mouseout(function() {
			$(this).css("background", "#10aaff");
		});

		$('#border3-xs').mouseover(function() {
			$(this).css("background", "orange").css("cursor", "pointer");
		}).mouseout(function() {
			$(this).css("background", "#10aaff");
		});

		$('#border4-xs').mouseover(function() {
			$(this).css("background", "orange").css("cursor", "pointer");
		}).mouseout(function() {
			$(this).css("background", "#10aaff");
		});

		$('#border6-xs').mouseover(function() {
			$(this).css("background", "orange").css("cursor", "pointer");
		}).mouseout(function() {
			$(this).css("background", "#10aaff");
		});

		$('#border7-xs').mouseover(function() {
			$(this).css("background", "orange").css("cursor", "pointer");
		}).mouseout(function() {
			$(this).css("background", "#10aaff");
		});
	});

	$(function() {
		$('.gotoM1').on("click", function() {
			location.href = "/jsmi/views/main2/menu/main2.html";
		}).mouseover(function() {
			$(this).css("cursor", "pointer");
		});
	});
</script>
</head>
<body>
	<!-- pc화면 -->
	
		<% if(loginUser == null) { %>
		<div class="middle hidden-xs toptop">
		<table style="width: 970px;height:50px;">
			<tr>
				<td><img src="/jsmi/images/menubar/logo.png" class="" id="logo"
					width="830"></td>

				<td width="70">
					<button class="btn btn-primary btn-sm"
						onclick="location.href='/jsmi/views/main1/member/agreeForm.html'">회원가입</button>
				</td>
				<td width="70">
					<button class="btn btn-warning btn-sm"
						onclick="location.href='/jsmi/views/main1/member/loginForm.html'">로그인</button>
				</td>
			</tr>
		</table></div>
		<% } else { %>
		<% if(loginUser.getGtype() == null) { %>
		<div class="middle hidden-xs toptop">
		<table style="width: 970px;height:50px;">
			<tr>
				<td><img src="/jsmi/images/menubar/logo.png" class="" id="logo"
					width="830"></td>
				<td width="70"></td>
				<td width="70">
					<button class="btn btn-warning btn-sm"
						onclick='location.href="/jsmi/logout"'>로그아웃</button>
				</td>
			</tr>
		</table></div>
		<div class="welcome hidden-xs" ><img src="/jsmi/images/main1/generalmember.png" width="20px;" class="gradephoto"><%= loginUser.getPname() %> 님 환영합니다.
		</div>
		<% } else {%>
		<div class="middle hidden-xs toptop">
		<table style="width: 970px;height:50px;">
			<tr>
				<td><img src="/jsmi/images/menubar/logo.png" class="" id="logo"
					width="830"></td>
				<td width="70"></td>
				<td width="70">
					<button class="btn btn-warning btn-sm"
						onclick='location.href="/jsmi/logout"'>로그아웃</button>
				</td> 
			</tr>
		</table></div>
		<div class="welcome hidden-xs"><img src="/jsmi/images/main1/vipmember.png" width="20px;" class="gradephoto"><%= loginUser.getPname() %> 님 환영합니다.
		</div>
		<% }} %>




	

	<hr class="hidden-xs">

	<div class="slide-background hidden-xs">
		<div class="middle">
			<div class="container-fluid hidden-xs slide-box">
				<br>
				<div id="myCarousel-xs" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators ">
						<li data-target="#myCarousel-xs" data-slide-to="0" class="slidepoint active"></li>
						<li data-target="#myCarousel-xs" data-slide-to="1" class="slidepoint"></li>
						<li data-target="#myCarousel-xs" data-slide-to="2"class="slidepoint"></li>
						<li data-target="#myCarousel-xs" data-slide-to="3"class="slidepoint"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="/jsmi/images/slide1.jpg" style="width:970px;">
						</div>

						<div class="item">
							<img src="/jsmi/images/slide4.png"  style="width:970px;">
						</div>

						<div class="item">
							<img src="/jsmi/images/slide2.png"  style="width:970px;">
						</div>

						<div class="item">
							<img src="/jsmi/images/slide3.png"  style="width:970px;">
						</div>
					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel-xs" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel-xs" role="button"
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
			onclick="location.href='/jsmi/views/main1/introduce/introduce.jsp'">
			<img src="/jsmi/images/info.png" class="menu-img">
		</div>
		<div class="menu-btn" style="background: #105080;" id="border2">
			<img src="/jsmi/images/1.png" class="menu-img">
		</div>
		<div class="menu-btn" style="background: #10aaff;" id="border3"
			onclick="location.href='/jsmi/views/main1/function/function.jsp'">
			<img src="/jsmi/images/function.png" class="menu-img">
		</div>
		<div class="menu-btn" style="background: #10aaff;" id="border4"
			onclick="location.href='/jsmi/listview?page=1&boardNo=6'">
			<img src="/jsmi/images/event.png" class="menu-img">
		</div>
	</div>
	<div class="middle menu-wrap2 hidden-xs">
		<div class="menu-btn" style="background: #105080;" id="border5">
			<img src="/jsmi/images/1.png" class="menu-img">
		</div>

		<% if(loginUser != null) { %>
		<div class="menu-btn" style="background: #10aaff;" id="border6"
			onclick="location.href='/jsmi/views/main1/costGuide/payView.jsp'">
			<img src="/jsmi/images/cost.png" class="menu-img">
		</div>
		<% } else { %>
		<div class="menu-btn" style="background: #10aaff;" id="border6"
			onclick="noLogin();">
			<img src="/jsmi/images/cost.png" class="menu-img">
		</div>

		<script type="text/javascript">
			$(function(){
				$("#border6").click(function(){
					alert("로그인 후 가능합니다!")
				});
			});
		</script>
		<% } %>


		<div class="menu-btn" style="background: #10aaff;" id="border7"
			onclick="location.href='/jsmi/listview?page=1&boardNo=1'">
			<img src="/jsmi/images/helpdesk1.png" class="menu-img">
		</div>
		<div class="menu-btn" style="background: #105080;" id="border8">
			<img src="/jsmi/images/1.png" class="menu-img">
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
					onclick="location.href='/jsmi/views/main1/member/loginForm.jsp'">로그인</button>
				<button class="btn btn-primary btn-xs"
					onclick="location.href='/jsmi/views/main1/member/agreeForm.html'">회원가입</button>
			</div>
			<div class="col-xs-0"></div>
		</div>
	</div>
	<hr class="hidden-sm hidden-md hidden-lg">
	<div class="container-fluid hidden-sm hidden-md hidden-lg slide-box"
		style="background:#234;padding-top:50px;padding-bottom:50px;">
		<div class="row">
			<div class="col-xs-2"></div>
			<div class="col-xs-8" id="slidesize">

				<div class="container-fluid hidden-sm hidden-md hidden-lg">
					<br>
					<div id="myCarousel" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active" style="position:relative;top:47px;"></li>
							<li data-target="#myCarousel" data-slide-to="1"style="position:relative;top:47px;"></li>
							<li data-target="#myCarousel" data-slide-to="2"style="position:relative;top:47px;"></li>
							<li data-target="#myCarousel" data-slide-to="3"style="position:relative;top:47px;"></li>
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


	<div class="container-fluid hidden-sm hidden-md hidden-lg mainMenu">
		<div class="row">
			<div class="col-xs-2"></div>
			<div class="col-xs-4" style="background: #10aaff;" id="border1-xs"
				onclick="location.href='/jsmi/views/main1/introduce/introduce.jsp'">
				<img src="/jsmi/images/info.png" class="img-responsive">
			</div>
			<div class="col-xs-4" style="background: #105080;" id="border2-xs">
				<img src="/jsmi/images/1.png" class="img-responsive">
			</div>
			<div class="col-xs-2"></div>
		</div>

		<div class="row">
			<div class="col-xs-2"></div>
			<div class="col-xs-4" style="background: #10aaff;" id="border3-xs"
				onclick="location.href='/jsmi/views/main1/function/function.jsp'">
				<img src="/jsmi/images/function.png" class="img-responsive">
			</div>
			<div class="col-xs-4" style="background: #10aaff;" id="border4-xs"
				onclick="location.href='/jsmi/views/main1/event/currentEvent/currentEventView.jsp'">
				<img src="/jsmi/images/event.png" class="img-responsive">
			</div>
			<div class="col-xs-2"></div>
		</div>

		<div class="row">
			<div class="col-xs-2"></div>
			<div class="col-xs-4" style="background: #105080;" id="border5-xs">
				<img src="/jsmi/images/1.png" class="img-responsive">
			</div>
			<div class="col-xs-4" style="background: #10aaff;" id="border6-xs">
				<img src="/jsmi/images/cost.png" class="img-responsive">
			</div>
			<div class="col-xs-2"></div>
		</div>

		<div class="row">
			<div class="col-xs-2"></div>
			<div class="col-xs-4" style="background: #10aaff;" id="border7-xs"
				onclick="location.href='/jsmi/views/main1/CSBoard/board/boardListView.jsp'">
				<img src="/jsmi/images/helpdesk1.png" class="img-responsive">
			</div>
			<div class="col-xs-4" style="background: #105080;" id="border8-xs">
				<img src="/jsmi/images/1.png" class="img-responsive">
			</div>
			<div class="col-xs-2"></div>
		</div>
	</div>
	<br class="hidden-sm hidden-md hidden-lg">
	<% if(loginUser != null){ %>
	<!-- 뷰온버튼 -->
	<div id="viewOn" class="hidden-xs gotoM1"
		onclick="location.href='/jsmi/views/main2/menu/main2.html'">
		<img src="/jsmi/images/main1/gotomain2.png">
	</div>
	<% } %>
	<br>
	<br>
	<br>
	<%@ include file="/views/common/main1/footer.jsp"%>
</body>
</html>