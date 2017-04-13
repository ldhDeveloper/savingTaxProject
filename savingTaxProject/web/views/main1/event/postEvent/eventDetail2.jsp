<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String src = request.getParameter("src");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>PostEventDetail</title>
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
					<th>종료된 이벤트입니다.</th>
				</tr>
				<tr></tr>
			</table>
		</center>

	</div>
	<hr>

	<!-- Moblie -->
	<div class="container-fluid hidden-sm hidden-md hidden-lg">
		<br><br>
		<div class="row">
			<div class="col-xs-12">
			<center>
					<img src="/jsmi/images/main1/<%=src%>" style="width:280px; height:180px;"> <br>
					<br>
					<table>
						<tr>
							<th>종료된 이벤트입니다.</th>
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