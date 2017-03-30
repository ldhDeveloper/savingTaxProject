<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String userid = (String)request.getAttribute("userid"); %>    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
.sucimg {
	width:600px;
	margin-left:auto;
	margin-right:auto;
	margin-top:100px;
	position:relative;
	z-index:0;
}

.sucmsg {
	position:relative;
	top:-365px;
	left:100px;
	z-index:10;
}
.btn {
	position:relative;
	z-index:10;
	top:-170px;
	left:200px;
	margin-left:10px;
	margin-right:10px;
}
</style>
<title>아이디 찾기</title>
</head>

<body>
	<div class="sucimg">
		<img src="/jsmi/images/main1/success.png">
	
		<h2 class="sucmsg"><font color="#2a8ca3">가입하신 아이디는 <%= userid %> 입니다.</font></h2>
		<button class="btn btn-success" onclick="history.go(-1)">이전으로</button>
		<button class="btn btn-warning" onclick="location.href='/jsmi/views/main1/member/loginForm.html'">로그인 화면으로</button>
	</div>
</body>
</html>