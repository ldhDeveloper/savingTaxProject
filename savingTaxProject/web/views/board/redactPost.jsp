<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import = "java.util.*, board.member.vo.Board" %> 
	<%List<Board> blist = (List)request.getAttribute("blist"); 
	Board b = (Board)request.getAttribute("b");%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/common.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
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
	width : 50%;
	margin : auto;
	height : 20%;
	border : 1px solid black;
	align : center;
	
}

button {
	margin: 2px;
	
	align:right;
}

#bar {
	padding: 0px;
	margin-top: 3px;
}

.navbar-nav {
	max-width: 100%;
}

.img {
	width: 5%;
	height: 5%;
}

.navbar-header {
	background: #001133;
	
}

.container-fluid {
	padding-right: 0px;
	padding-left: 0px;
	margin-right: auto;
	margin-left: auto;
}

 .navbar-inverse {
	background-color: white;
	border-color: white;
	position:fixed;
}
#logo {
	position:fixed;
}

.nav-tabs.nav-justified>li>a {
    border-bottom: 0px solid #ddd;
    border-radius: 4px 4px 0 0;
}
.navbar-nav>li>a {
    padding-top: 0px; 
    padding-bottom: 0px;
}

</style>
<title>Insert title here</title>
</head>
<body class="">
	<header>
		<div class="container-fluid" id="bar"></div>
		<div class="row">
			<div class="col-xs-0 col-md-2"></div>
			<div class="col-xs-6 col-md-4" style="background: white;">
				<img src="/jsmi/images/logo4.png" class="img-responsive" id="logo">
				<img src="/jsmi/images/menubar/logosize.png" class="img-responsive">
			</div>
			<div class="col-xs-3 col-md-3"></div>
			<div class="col-xs-2 col-md-1">
				<img>
				<button class="btn btn-warning btn-sm"
					onclick="location.href='/jsmi/index.jsp'">로그아웃</button>
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
						<li><a href="/jsmi/listview"><img src="/jsmi/images/menubar/mb5.png" class="img-responsive" style="width:100%;height:30%;"></a></li>
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
	<%if(b !=null){ %>
	<form>
	<table class = "content">
	<tr><td>글 번 호</td><td><%=b.getPost_no() %></td></tr>
	<tr><td>작성 일자</td><td colspan ="4"></td></tr>
	<tr><td>작 성 자</td><td colspan ="4"></td></tr>
	<tr><td>글 제 목</td><td colspan ="4"></td></tr>
    <tr><td>글 내 용</td><td colspan ="4"></td></tr>
	<tr><td colspan = "2" height = "300"><input type ="text" value= height = "300" name = "content"> </td></tr>
	</table>
	</form>
	<br>	
	<br>
	<% } %>
	
	
	<br><table aligen ="center" border = "1px solid black"><tr><th>글 번호</th><th>글 제목</th><th>관리자 번호</th><th>조회수</th><th>글작성일</th> 
 <% if(blist !=null){ for(Board e : blist){ %>
 <tr><td><%int postNo =e.getPost_no();%><%=postNo %></td>
 <td><a href ="/jsmi/boardcontent?postNo=<%=postNo%>" ><%=e.getPost_title() %></a></td>
 <td><%=e.getWriter_no() %></td>
 <td></td>
 <td><%=e.getPost_date() %></td>
</tr>
<tr><td colspan = "5">
<button onclick = "location.href='/jsmi/deletepost?postno=<%=postNo%>'">글 삭제</button> &nbsp;
<button onclick = "location.href='/jsmi/redactpost?postno=<%=postNo%>'">글 수정</button></td></tr>
 <%}} %>
</table>


<div align = "center"><input style = "width : 50%" type = "search" name = "searchtitle" size = "50">

<form action = "/jsmi/selecttitle" method ="post">
&nbsp; <input type = "submit" value = "검색"> 
</form>
<button onclick ="location.href ='/jsmi/views/board/writingForm.jsp'">글 작성</button></div>
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

	</footer>

</body>
</html>