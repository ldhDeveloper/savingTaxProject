<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
.middle {
	background: white;
	width: 970px;
	margin-left: auto;
	margin-right: auto;
}
</style>
<title>Insert title here</title>
</head>
<body>
<%@ include file="/views/common/menubar.jsp"%>
<!-- pc 버전 -->
	<div class="hidden-xs">
		<div class="middle">
			<img src="/jsmi/images/main1/intro.png">
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