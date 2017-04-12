<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String src = request.getParameter("src");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 상세페이지</title>
</head>
<body>
	<%@ include file="/views/common/main1/menubar.jsp"%>
	<br>
	<!-- PC -->
	<div class="middle hidden-xs">
		<center>
			<img src="/jsmi/images/main1/<%=src%>"> <br>
			<br>
			<table>
				<tr>
					<th>신규가입 회원분들에게 제공되는 이벤트입니다.</th>
				</tr>
				<tr>
					<td>가입 후 회원정보입력과 사업장정보를 입력하면 전문 세무사를 연결해드립니다!</td>
				</tr>
				<tr></tr>
			</table>
		</center>

	</div>
	<hr>

	<!-- Moblie -->
	<div class="container-fluid hidden-sm hidden-md hidden-lg">
		<br>
		<div class="row">
			<div class="col-xs-12">
				<center>
					<img src="/jsmi/images/main1/<%=src%>"> <br>
					<br>
					<table>
						<tr>
							<th>신규가입 회원분들에게 제공되는 이벤트입니다.</th>
						</tr>
						<tr>
							<td>가입 후 회원정보입력과 사업장정보를 입력하시면 전문 세무사를 연결해드립니다!</td>
						</tr>
						<tr></tr>
					</table>
				</center>
				<br>
				<hr>
			</div>
		</div>
	</div>
	
	<%@ include file="/views/common/main1/footer.jsp"%>
</body>
</html>