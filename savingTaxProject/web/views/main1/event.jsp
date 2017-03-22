<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/views/common/menubar.jsp"%>
<!-- pc 버전 -->
	<div class="hidden-xs">
		<div class="middle">
			<img src="/jsmi/images/main1/eventmn1.png">
			<hr>
			<img src="/jsmi/images/main1/eventmn2.png">
		</div>
		<hr>
	</div>

<!-- 모바일 버전 -->
   <div class="col-xs-12 hidden-sm hidden-md hidden-lg">
		<img src="/jsmi/images/main1/introxs.png">
		<hr>
	</div>
	
 <%@ include file="/views/common/footer.jsp"%>
</body>
</html>