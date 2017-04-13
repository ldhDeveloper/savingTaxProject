<%@ page language="java" contentType="text/html; charset=UTF-8"


    pageEncoding="UTF-8" import = "member.model.vo.Party"%>
    <%Party loginUser = (Party)session.getAttribute("loginUser");%>

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

.fullbar {
	background:#101020;
	margin-left:auto;
	margin-right:auto;
	width:1400px !important;
	height:50px;
	position:relative;
	left:-100px;
}
.logo {
	color:#1080aa;
	position:relative;
	top:5px;
	left:50px;
	font-weight:bold;
}
.xxx {
	position:relative;
    left: 830px;
	top: 9px;
	border:2px solid #101020;
	border-radius:5px;
	color:white;
}
.logo {
	padding-top:5px;
	margin-left:-30px;
	
}
.logout {
	color:white;
	position:relative;
	left:1260px;
	top: -37px;
	width:130px;
	height:40px;
	background:none;
	text-decoration:none;
}
.logout:hover {
	background:none;
}

.welcome {
	color: snow;
	position:relative;
	left: 760px;
    top: 11px;
	background:none;
	font-family: NotoSansCJKkr-Ligth !important;
}

.gradephoto {
	position:relative;
	left: 755px;
    top: 11px;
}

#logo {
	position:relative;
	left: 755px;
    top: 11px;
}
</style>
</head>

<body>
	<div class="fullbar">
		
		<% if (loginUser.getGtype() == null) { %>
		<img src="/jsmi/images/menubar/logo.png" height="35" class="logo">
		<img src="/jsmi/images/main1/generalmember.png" width="20px;" class="gradephoto">
		<span class="welcome"><%= loginUser.getPname() %>님 환영합니다.</span>
		<img src="/jsmi/images/main2/main2icons/logout2.png" height="30" width="30" class="xxx"><a href="/jsmi/logout" class="logout">Log-out</a>
		<% } else { %>
		
		<img src="/jsmi/images/menubar/logo.png" height="35" class="logo">
		<img src="/jsmi/images/menubar/logo.png" class="" id="logo" width="830">
		<span class="welcome"><%= loginUser.getPname() %>님 환영합니다.</span>
		<img src="/jsmi/images/main2/main2icons/logout2.png" height="30" width="30" class="xxx"><a href="/jsmi/logout" class="logout">Log-out</a>
		<% } %>
	</div>

</body>
</html>