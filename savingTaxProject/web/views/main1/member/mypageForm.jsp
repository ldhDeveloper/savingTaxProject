<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.view.vo.Member"%>
    
<%
	Member m = (Member)session.getAttribute("member");
	System.out.println("view로 오니? : " + m);
%>
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
	<header>
		<div class="container-fluid" id="bar"></div>
		
		<div class="row">
			<div class="col-xs-0 col-md-2"></div>
			
			<div class="col-xs-6 col-md-4" style="background: white;">
				<img src="/jsmi/images/logo4.png" class="img-responsive" id="logo">
				<img src="/jsmi/images/menubar/logosize.png" class="img-responsive">
			</div>
			
			<div class="col-xs-3 col-md-3"></div>
			
			<div class="col-xs-2 col-md-1"></div>
			
			<div class="col-xs-0 col-md-2"></div>
		</div>
	</header>
	
	<div class="container">
		<div class="row">
		<div class="col-xs-0 col-md-4"></div>
		<div class="col-xs-0 col-md-4"><h1>회원정보 보기</h1></div>
		<div class="col-xs-0 col-md-4"></div>
		
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-xs-0 col-md-4"></div>

			<div class="col-xs-12 col-md-4">
				<%-- <h2>회원정보<%  %></h2><br> --%>
				
				<table class="table">
					<!-- <thead>
						<tr colspan="3">
							<th>분류</th>
							<th>내용</th>
						</tr>
					</thead> -->
					
					<tbody>
						<tr class="success">
							<td>이름</td>
							
							<td>
								<%= m.getUserName() %>
							</td>
						</tr>
						
						<tr class="danger">
							<td>아이디</td>
							
							<td>
								<%= m.getUserId() %>
							</td>
						</tr>
						<tr class="info">
							<td>비밀번호</td>
							
							<td>
								<%= m.getUserPwd() %>
							</td>
						</tr>
						<tr class="warning">
							<td>이메일</td>
							
							<td>
								<%= m.getUserEmail() %>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			
			<div class="col-xs-0 col-md-4"></div>
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
		<div class="col-xs-0 col-md-4"></div>
		
		<div class="col-xs-12 col-md-4">
			<!-- 수정하기 버튼  //일단은 버튼 이동 말고 링크로 해놓을 게요--> 
			<a href="/jsmi/views/main1/member/memberLeaveForm.jsp">회원탈퇴</a>
			<br>
			
			<!-- 시작페이지로 이동 //일단은 버튼 이동 말고 링크로 해놓을 게요--> 
			<a href="/jsmi/views/main1/member/fakeIntroduce.jsp">시작페이지로 이동</a>
			<br>
		</div>
		
		<div class="col-xs-0 col-md-4"></div>
	
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
	</footer>
</body>
</html>