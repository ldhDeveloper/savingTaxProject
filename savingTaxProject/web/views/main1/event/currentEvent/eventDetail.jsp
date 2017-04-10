<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String src = request.getParameter("src"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 상세페이지</title>
</head>
<body>
<%@ include file="/views/common/main1/menubar.jsp"%>
	<!-- PC -->
	<div class="middle hidden-xs">
		<img src="/jsmi/images/main1/<%=src%>">
		
		
	</div>
	<hr>
	
	<!-- Moblie -->
	<div class="container-fluid hidden-sm hidden-md hidden-lg">
	<br>
	     <div class="row">
	        <div class="col-xs-12">
	           <img src="/jsmi/images/main1/<%=src%>">
	           <hr>
	        </div>
	     </div>
	</div>
	<%@ include file="/views/common/main1/footer.jsp"%>
</body>
</html>