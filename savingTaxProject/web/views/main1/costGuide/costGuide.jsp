<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비용안내</title>
</head>
<body>
	<%@ include file="/views/common/main1/menubar.jsp"%>
	<!-- PC -->
	<div class="middle hidden-xs">

		<br> <img src="/jsmi/images/main1/cost.png" usemap="#Map">

		<map name="Map">
			<area shape="rect" coords="616,360,863,406"
				href="/jsmi/views/main1/costGuide/payView.jsp">
		</map>

		<br> <br> <img src="/jsmi/images/main1/cost2.png"
			usemap="#Map">
		<map name="Map">
			<area shape="rect" coords="616,360,863,406"
				href="/jsmi/views/main1/costGuide/payView.jsp">
		</map>

		<br> <br> <img src="/jsmi/images/main1/cost3.png"
			usemap="#Map">
		<map name="Map">
			<area shape="rect" coords="616,360,863,406"
				href="/jsmi/views/main1/costGuide/payView.jsp">
		</map>
	</div>

	<!-- Moblie -->
	<div class="container-fluid hidden-sm hidden-md hidden-lg">
		<div class="row">
			<div class="col-xs-12">

				<br> <br> <img src="/jsmi/images/main1/costxs1.png"

					class="hidden-sm hidden-md hidden-lg img-responsive" usemap="#Map">
				<map name="Map">
					<area shape="rect" coords="100,537,274,570"
						href="/jsmi/views/main1/costGuide/payView.jsp">
				</map>
				</div>
				</div>
				
				<div class="row">
				<div class="col-xs-12">
				<br> <br> <img src="/jsmi/images/main1/costxs2.png"
					usemap="#Map">
				<map name="Map">
					<area shape="rect" coords="100,537,274,570"
						href="/jsmi/views/main1/costGuide/payView.jsp">
				</map>
                </div>
                </div>
                
                <div class="row">
                <div class="col-xs-12">
				<br> <br> <img src="/jsmi/images/main1/costxs3.png"
					usemap="#Map">
				<map name="Map">
					<area shape="rect" coords="100,537,274,570"
						href="/jsmi/views/main1/costGuide/payView.jsp">
				</map>
			</div>
			
		</div>
	</div>
	<hr>

	<%@ include file="/views/common/main1/footer.jsp"%>
</body>
</html>