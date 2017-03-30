<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String errorMessage = (String)request.getAttribute("message"); %>    
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
.errimg {
	width:600px;
	margin-left:auto;
	margin-right:auto;
	margin-top:100px;
	position:relative;
	z-index:0;
}

.errmsg {
	position:relative;
	top:-345px;
	left:120px;
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
<title>Member Error</title>
</head>

<body>
	<div class="errimg">
		<img src="/jsmi/images/main1/error.png">
	
		<h4 class="errmsg"><%= errorMessage %></h4>
		<button class="btn btn-success">이전으로</button>
		<button class="btn btn-warning">메인으로</button>
	</div>
</body>
</html>