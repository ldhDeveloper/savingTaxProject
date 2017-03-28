<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/jsmi/css/common/font.css" type="text/css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
.side {
	width:200px;
	height:550px;
	background:#101020;
}

a {
	display:block;
	text-decoration:none;
	background:#101020;
	width:200px;
	height:50px;
	align:center;
	padding-left:50px;;
	padding-top:15px;;
	color:white;
}
a:hover {
	background:#1080ff;
	color:white;
	text-decoration:none;
}
.gotologin {
	margin-top:150px;
}

</style>
</head>

<body>
	
	<div class="side">
			<a class="block" href="#">메인화면</a>
			<a class="block" href="#">정보입력</a>
			<a class="block" href="#">장부작성</a>
			<a class="block" href="#">직원관리 </a>
			<a class="block" href="#">세금계산</a>
			<a class="block" href="#">결산</a>
			<a class="block" href="#">도움말</a>
			

			<a class="block gotologin" href="#">Login Page</a>
	</div>
</body>
</html>