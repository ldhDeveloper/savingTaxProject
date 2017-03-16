<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String errorMessage = (String)request.getAttribute("message"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Error</title>
</head>

<body>
	<h1><%= errorMessage %></h1>
	<h1><a href="/jsmi/views/main1/loginForm.html">로그인 페이지로 이동</a></h1>
</body>
</html>