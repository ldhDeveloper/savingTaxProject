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
<style>
.tfont {
	font-family: mobius !important;
}

.mfont {
	font-family: mordengodic !important;
}
</style>
</head>
<body>
	<%@ include file="/views/common/main1/menubar.jsp"%>
	<br>
	<!-- PC -->
	<div class="middle hidden-xs">
		<center>
			<img src="/jsmi/images/main1/<%=src%>"> <br> <br>
			<h4 class="tfont">신규가입 회원에게 제공되는 이벤트입니다.</h4>
			<table>
				<tr style="height: 5px;"></tr>
				<tr>
					<th>이벤트 대상: 신규가입자(기존 회원들은 대상에서 제외)</th>
				</tr>
				<tr>
					<th>이벤트 기간: 2017년 3월 27일부터 4월 16일까지</th>
				</tr>
				<tr style="height: 10px;"></tr>

				<tr>
					<td>이벤트 기간 동안 신규 가입회원들을 대상으로 회원정보입력과 사업장정보를 입력시 회원님께 딱 맞는 전문
						세무사를 찾아 무료로 연결해드립니다!</td>
				</tr>
				<tr style="height: 10px;"></tr>
			</table>
		</center>

	</div>
	<hr>

	<!-- Moblie -->
	<div class="container-fluid hidden-sm hidden-md hidden-lg">
		<br> <br>
		<div class="row">
			<div class="col-xs-12">
				<center>
					<img src="/jsmi/images/main1/<%=src%>"
						style="width: 280px; height: 180px;"> <br> <br>
					<h4 class="tfont">신규가입 회원에게 제공되는 이벤트입니다.</h4>
					<table>
						<tr style="height: 5px;"></tr>
						<tr>
							<th>이벤트 대상: 신규가입자(기존 회원들은 대상에서 제외)</th>
						</tr>
						<tr>
							<th>이벤트 기간: 2017년 3월 27일부터 4월 16일까지</th>
						</tr>
						<tr style="height: 10px;"></tr>

						<tr>
							<td>이벤트 기간 동안 신규 가입회원들을 대상으로 회원정보입력과 사업장정보를 입력시</td>
						</tr>
						<tr>
							<td>회원님께 딱 맞는 전문 세무사를 찾아 무료로 연결해드립니다!</td>
						</tr>
						<tr style="height: 10px;"></tr>
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