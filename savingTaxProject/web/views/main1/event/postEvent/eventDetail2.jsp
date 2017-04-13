<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String src = request.getParameter("src");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>지난이벤트 상세페이지</title>
<style>
.tfont {
	font-family: mobius !important;
}
</style>
</head>
<body>
<%@ include file="/views/common/main1/menubar.jsp"%>
	<br>
	<!-- PC -->
	<div class="middle hidden-xs">
		<center>
			<img src="/jsmi/images/main1/<%=src%>"> <br>
			<br>
			<h4 class="tfont">종료된 이벤트입니다.</h4>
		</center>

	</div>
	<hr>

	<!-- Moblie -->
	<div class="hidden-sm hidden-md hidden-lg">
		<br><br>
		<div class="row">
			<div class="col-xs-12">
			<center>
					<img src="/jsmi/images/main1/<%=src%>" style="width:280px; height:180px;"> <br>
					<br>
					<h4 class="tfont">종료된 이벤트입니다.</h4>
					</center>
				<br><br><br>
				<hr>
			</div>
		</div>
	</div>
	
	<%@ include file="/views/common/main1/footer.jsp"%>
</body>
</html>