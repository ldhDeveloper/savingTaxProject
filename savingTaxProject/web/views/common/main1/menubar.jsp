<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="member.model.vo.Party"%>

<%
	Party loginUser = (Party) session.getAttribute("loginUser");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/jsmi/css/common/font.css" type="text/css">
<link rel="stylesheet" href="/jsmi/css/common/grid.css" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Perfect Partners for Your Saving-Tax</title>
<style type="text/css">
#xs-logout {
	position: fixed;
	left: 85%;
	margin-top: 80px;
	z-index: 1;
}

.xstd {
	text-align: center;
	background: #3f3f3f;
	border: 3px solid #222;
	border-radius: 1em;
	width: 50%
}

.xstd>a {
	text-decoration: none;
	color: white;
	padding: 1.2em;
	display: block;
	height: 4em;
}

element.style {
	
}

color


:

 

#ffffff


;
text-decoration


:

 

none


;
}
.mobile {
	background: #8f8f8f;
	margin-top: 0px;
}

.xstd:hover {
	background: orange;
}

.middle {
	background: white;
	width: 970px;
	margin-left: auto;
	margin-right: auto;
}

.middle table {
	
}

background


:white


;
}
.middle table td {
	padding-top: 0px;
	padding-bottom: 0px;
}

.full-bar {
	width: 100%;
	height: 40px;
	background: #2a82a3;
}

.menu ul {
	list-style-type: none;
}

.menu ul li {
	width: 155px;
	height: 40px;
	float: left;
	position: relative;
	padding: auto;
	margin: 0px;
	font-family: Binggrae;
}

.menu ul li a {
	display: block;
	position: relative;
	z-index: 1000;
	text-decoration: none;
	text-align: center;
	color: white;
	height: 40px;
	line-height: 40px;
}

.menu ul li a:hover {
	background: orange;
}

.menu ul li ul {
	display: none;
	position: relative;
	left: -40px;
}

.menu ul li ul a {
	background: #2a82a3;
	position: relative;
}

.welcome {
	width: 800px;
	margin-left: auto;
	margin-right: auto;
	position: relative;
	top: -35px;
	text-align: right;
	margin-bottom: -35px;
}

.gradephoto {
	position: relative;
	top: -3px;
	left: -5px;
}
/*  .menu ul li:hover ul a{
   opacity:3;
}  */
</style>
<script type="text/javascript">
	$(function() {
		$('.menuList > li > a').mouseover(function() {
			$(this).siblings('.sub-menu').css("display", "block");
		})
		$('.menuList li').mouseleave(function() {
			$(this).children('.sub-menu').css("display", "none");
		})

	})
</script>
</head>

<body width="100%">

	<!-- 데스트탑(lg) 최적화 -->

	<!--  로고 + 로그인버튼 -->

	<%
		if (loginUser.getGtype() == null) {
	%>
	<div class="middle hidden-xs toptop">
		<table style="width: 970px; height: 50px;">
			<tr>
				<td><a href="/jsmi/main.jsp"><img src="/jsmi/images/menubar/logo.png" class="" id="logo"
					width="830"></a></td>
				<td width="70"></td>
				<td width="70">
					<button class="btn btn-warning btn-sm"
						onclick='location.href="/jsmi/logout"'>로그아웃</button>
				</td>
			</tr>
		</table>
	</div>
	<div class="welcome hidden-xs">
		<img src="/jsmi/images/main1/generalmember.png" width="20px;"
			class="gradephoto"><%=loginUser.getPname()%>
		님 환영합니다.
	</div>

	<%
		} else {
	%>
	<div class="middle hidden-xs toptop">
		<table style="width: 970px; height: 50px;">
			<tr>
				<td><a href="/jsmi/main.jsp"><img src="/jsmi/images/menubar/logo.png" class="" id="logo"
					width="830"></a></td>
				<td width="70"></td>
				<td width="70">
					<button class="btn btn-warning btn-sm"
						onclick='location.href="/jsmi/logout"'>로그아웃</button>
				</td>
			</tr>
		</table>
	</div>
	<div class="welcome hidden-xs">
		<img src="/jsmi/images/main1/vipmember.png" width="20px;"
			class="gradephoto"><%=loginUser.getPname()%>
		님 환영합니다.
	</div>
	<%
		}
	%>
	</tr>

	<%-- <tr><td><img src="/jsmi/images/menubar/logo.png" class="" id="logo" width="90%" height="90%"><td>
         <td><%=loginUser.getPname() %> 님 환영합니다.</td>
         <td width="70"><button id="logout" class="btn btn-warning btn-sm"
               onclick="location.href='/jsmi/main.jsp'">로그아웃</button>
         <td></tr> --%>
	</table>
	</div>

	<div class="full-bar hidden-xs">
		<div class="middle menu">

			<ul class="menuList" height="40">
				<li><a href="/jsmi/main.jsp">메인으로</a></li>
				<li><a href='/jsmi/views/main1/introduce/introduce.jsp'>절세미인소개</a>
					<ul class="sub-menu">
						<li><a href='/jsmi/views/main1/introduce/introduce.jsp'>절세미인이란?</a></li>
						<li><a href="/jsmi/views/main1/introduce/introduce2.jsp">회사
								소개</a></li>
						<li><a href="/jsmi/views/main1/introduce/introduce3.jsp">찾아오시는
								길</a></li>
					</ul></li>
				<li><a href="/jsmi/views/main1/function/function.jsp">주요기능안내</a>
					<ul class="sub-menu">
						<li><a href="/jsmi/views/main1/function/function.jsp">주요
								기능 안내</a></li>
						<li><a href="/jsmi/views/main1/function/function2.jsp">절세미인의
								장점</a></li>
					</ul></li>
				<li><a href='/jsmi/listview?boardNo=6&page=1&limit=6'>이벤트</a>
					<ul class="sub-menu">
						<li><a href='/jsmi/listview?boardNo=6&page=1&limit=6'>진행중인
								이벤트</a></li>
						<li><a
							href='/jsmi/listview?boardNo=7&page=1&limit=6''>지난
								이벤트</a></li>
					</ul></li>
				<li><a href="/jsmi/views/main1/costGuide/costGuide.jsp">결제하기</a>
				<ul class="sub-menu">
						<li><a href='/jsmi/views/main1/costGuide/costGuide.jsp'>비용안내</a></li>
					</ul>
        </li>
				<li><a href="/jsmi/listview?page=1&boardNo=1">고객센터</a>
					<ul class="sub-menu">
						<li><a href="/jsmi/listview?page=1&boardNo=1">공지사항</a></li>
						<li>
							<!-- <a href="/jsmi/views/main1/CSBoard/taxNews/taxNews.jsp">세금 소식</a> -->
							<a href="/jsmi/listview?page=1&boardNo=2">세금 소식</a>
						</li>
						<li><a href="/jsmi/listview?page=1&boardNo=3">세무팁</a></li>
						<li><a href="/jsmi/views/main1/CSBoard/FnQ/FnQ.jsp">자주 묻는
								질문</a></li>
						<li><a href="/jsmi/listview?page=1&boardNo=4">궁금한 것이 있어요</a></li>
						<li><a href="/jsmi/listview?page=1&boardNo=5">서식 자료실</a></li>
					</ul></li>
			</ul>
		</div>
	</div>



	<!-- 모바일(xs) 최적화 -->

	<!--  모바일 상단메뉴 -->
	<div class="container-fluid navbar-fixed-top" id="bar">
		<div class="row">
			<nav class="navbar navbar-inverse hidden-md hidden-sm hidden-lg">
				<div class="container-fluid navbar-header">
					<div class="col-xs-12 col-md-8">

						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#myNavbar">
							<span class="icon-bar"></span><span class="icon-bar"></span> <span
								class="icon-bar"> </span>
						</button>


						<br> <br> <br>
						<div class="collapse navbar-collapse navbar-right" id="myNavbar">
							<ul class="nav navbar-nav navbar-static-top">

								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown"> <img
										src="/jsmi/images/menubar/mb1.png" class="img-responsive"
										style="width: 30%; height: 30%;">
								</a>
									<ul class="mobile dropdown-menu">
										<li>
											<table width="100%">
												<tr>
													<td class="xstd"><a
														href='/jsmi/views/main1/introduce/introduce.jsp'>절세미인이란?</a>
													</td>
													<td class="xstd"><a
														href="/jsmi/views/main1/introduce/introduce2.jsp">회사
															소개</a></td>
												</tr>
												<tr>
													<td class="xstd"><a
														href='/jsmi/views/main1/introduce/introduce3.jsp'>오시는길
													</a></td>
												</tr>
											</table>
										</li>
									</ul></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown"> <img
										src="/jsmi/images/menubar/mb2.png" class="img-responsive"
										style="width: 30%; height: 30%;">
								</a>
									<ul class="mobile dropdown-menu">
										<li>
											<table width="100%">
												<tr>
													<td class="xstd"><a
														href="/jsmi/views/main1/function/function.jsp">주요 기능
															안내</a></td>
													<td class="xstd"><a
														href="/jsmi/views/main1/function/function2.jsp">절세미인의
															장점</a></td>
												</tr>
											</table>
										</li>
									</ul></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown"> <img
										src="/jsmi/images/menubar/mb3.png" class="img-responsive"
										style="width: 30%; height: 30%;">
								</a>
									<ul class="mobile dropdown-menu">
										<li>
											<table width="100%">
												<tr>
													<td class="xstd"><a
														href='/jsmi/listview?boardNo=6&page=1&limit=6'>진행중인
															이벤트</a></td>
													<td class="xstd"><a
														href='/jsmi/listview?boardNo=7&page=1&limit=6'>지난
															이벤트</a></td>
												</tr>
											</table>
										</li>
									</ul></li>
								<li class="dropdown"><a
									href="/jsmi/views/main1/costGuide/costGuide.jsp"
									class="dropdown-toggle" data-toggle="dropdown"> <img
										src="/jsmi/images/menubar/mb4.png" class="img-responsive"
										style="width: 30%; height: 30%;">
								</a>
								<ul class="mobile dropdown-menu">
										<li>
											<table width="100%">
												<tr>
													<td class="xstd"><a href='/jsmi/views/main1/costGuide/costGuide.jsp'>비용안내</a></td>
													<td class="xstd"><a href='/jsmi/views/main1/costGuide/payView.jsp'>결제하기</a></td>
												</tr>
											</table>
										</li>
									</ul>
								
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown"> <img
										src="/jsmi/images/menubar/mb5.png" class="img-responsive"
										style="width: 30%; height: 30%;">
								</a>
									<ul class="mobile dropdown-menu">
										<li>
											<table width="100%">
												<tr>
													<td class="xstd"><a
														href="/jsmi/listview?page=1&boardNo=1">공지사항</a></td>
													<td class="xstd"><a
														href="/jsmi/listview?page=1&boardNo=2">세금소식</a>
													</td>
												</tr>
												<tr>
													<td class="xstd"><a
														href="jsmi/listview?page=1&boardNo=3">세무팁</a>
													</td>
													<td class="xstd"><a
														href="/jsmi/views/main1/CSBoard/FnQ/FnQ.jsp">자주 묻는 질문</a>
													</td>
												</tr>
												<tr>
													<td class="xstd"><a
														href="/jsmi/listview?page=1&boardNo=4">궁금한 것이
															있어요</a></td>
													<td class="xstd"><a
														href="/jsmi/listview?page=1&boardNo=5">서식 자료실</a></td>
												</tr>
											</table>
										</li>
									</ul></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown"> <img
										src="/jsmi/images/menubar/mb6.png" class="img-responsive"
										style="width: 30%; height: 30%;">
								</a>
									<ul class="mobile dropdown-menu">
										<li>
											<table width="100%">
												<tr>
													<td class="xstd"><a
														href="/jsmi/views/main1/mobgraph/salesncostm.jsp">매출/비용 분석</a></td>
													<td class="xstd"><a
														href="/jsmi/views/main1/mobgraph/assetm.jsp">자산 분석</a>
													</td>
												</tr>
												<tr>
													<td class="xstd"><a
														href="/jsmi/views/main1/mobgraph/yieldm.jsp">수익률 분석</a>
													</td>
													<td class="xstd">
													</td>
												</tr>
											</table>
										</li>
									</ul></li>
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
				<img src="/jsmi/images/logo4.png"
					class="img-responsive navbar-fixed-top" id="logo" width="50%">

			<div class="col-xs-2"></div>
			</div>
			
			<br><br><br><br>
			
			<div>
			<%
				if (loginUser.getGtype() == null) {
			%>
				<table>					
					<tr>
						<td class="col-xs-5">

						</td>
						<td class="col-xs-5">
							<img src="/jsmi/images/main1/generalmember.png" width="10px;"
							class="gradephoto">							
							<%=loginUser.getPname()%>님 환영합니다.
						</td>
						
						<td class="col-xs-2">
							<button class="btn btn-warning btn-xs navbar-fixed-top"
								id="xs-logout" onclick="location.href='/jsmi/main.jsp'">
								로그아웃
							</button>
						</td>
					</tr>
				</table>
			</div>
			
			<%
							} else {
						%>
			
			<div>
				<table>					
					<tr>
						<td class="col-xs-5">

						</td>
						<td class="col-xs-5">
							<img src="/jsmi/images/main1/generalmember.png" width="10px;"
							class="gradephoto">							
							<%=loginUser.getPname()%>님 환영합니다.
						</td>
						
						<td class="col-xs-2">
							<button class="btn btn-warning btn-xs navbar-fixed-top"
								id="xs-logout" onclick="location.href='/jsmi/main.jsp'">
								로그아웃
							</button>
						</td>
					</tr>
				</table>								
			</div>
			<%
				}
			%>
		</div>
	</div>
</body>
</html>