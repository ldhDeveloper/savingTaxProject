<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>종료된 이벤트</title>
<style type="text/css">
.middle {
	align: center;
}

.thumbnail {
	width: 300px;
	margin-left: 15px;;
	display: inline-block;
}

h3 {
	font-family: ssangmundong !important;
}

p {
	margin: 0px !important;
}

a.thumbnail {
	width: 280px;
	height: 180px;
}

.imgsize{
    width: 250px;
    height: 120px;
}
</style>
</head>
<body>
	<%@ include file="/views/common/main1/menubar.jsp"%>
	<br>
	<br>
	<div class="middle hidden-xs">
		<h3 align="center">종료된 이벤트</h3>
		<br>
		<br>
	</div>
	<div class="middle hidden-xs">
		<div class="thumbnail" style="display: inline-block">
			<a href="#"><img src="/jsmi/images/main1/eventmn7.png">
				<div class="caption">
					<p>이벤트기간 : 2017.03.01 ~ 2017~03.31</p>
				</div> </a>
		</div>
		<div class="thumbnail" style="display: inline-block">
			<a href="#"><img src="/jsmi/images/main1/eventmn8.png">
				<div class="caption">
					<p>이벤트기간 : 2017.03.01 ~ 2017~03.31</p>
				</div> </a>
		</div>
		<div class="thumbnail" style="display: inline-block">
			<a href="#"><img src="/jsmi/images/main1/eventmn9.png">
				<div class="caption">
					<p>이벤트기간 : 2017.03.01 ~ 2017~03.31</p>
				</div> </a>
		</div>
		<div class="thumbnail" style="display: inline-block">
			<a href="#"><img src="/jsmi/images/main1/eventmn10.png">
				<div class="caption">
					<p>이벤트기간 : 2017.03.01 ~ 2017~03.31</p>
				</div> </a>
		</div>
		<div class="thumbnail" style="display: inline-block">
			<a href="#"><img src="/jsmi/images/main1/eventmn11.png">
				<div class="caption">
					<p>이벤트기간 : 2017.03.01 ~ 2017~03.31</p>
				</div> </a>
		</div>
		<div class="thumbnail" style="display: inline-block">
			<a href="#"><img src="/jsmi/images/main1/eventmn12.png">
				<div class="caption">
					<p>이벤트기간 : 2017.03.01 ~ 2017~03.31</p>
				</div> </a>
		</div>
	</div>

	<br>
	<br>
	<br>

	<!-- Moblie  -->
	<div class="container-fluid hidden-sm hidden-md hidden-lg">
		<div class="row">
			<div class="col-xs-4">
				<a href="/jsmi/views/main1/event/currentEvent/eventDetail.jsp"
					class="thumbnail"> <img src="/jsmi/images/main1/eventmn7.png"
					class="img-responsive imgsize">
					<div class="caption">
						<p style="font-size: 12px; text-align: center;">이벤트기간 :
							2017.03.01 ~ 2017~03.31</p>
					</div></a>
			</div>
		</div>

		<div class="row">
			<div class="col-xs-4">
					<a href="#" class="thumbnail"> <img src="/jsmi/images/main1/eventmn8.png"
						class="img-responsive imgsize">
						<div class="caption">
							<p style="font-size: 12px; text-align: center;">이벤트기간 :
								2017.03.01 ~ 2017~03.31</p>
						</div></a>
				</div>
		</div>

		<div class="row">
			<div class="col-xs-4">
					<a href="#" class="thumbnail"> <img src="/jsmi/images/main1/eventmn9.png"
						class="img-responsive imgsize">
						<div class="caption">
							<p style="font-size: 12px; text-align: center;">이벤트기간 :
								2017.03.01 ~ 2017~03.31</p>
						</div></a>
				</div>
		</div>

		<div class="row">
			<div class="col-xs-4">
					<a href="#" class="thumbnail"> <img src="/jsmi/images/main1/eventmn10.png"
						class="img-responsive imgsize">
						<div class="caption">
							<p style="font-size: 12px; text-align: center;">이벤트기간 :
								2017.03.01 ~ 2017~03.31</p>
						</div></a>
				</div>
		</div>

		<div class="row">
			<div class="col-xs-4">
					<a href="#" class="thumbnail"> <img src="/jsmi/images/main1/eventmn11.png"
						class="img-responsive imgsize">
						<div class="caption">
							<p style="font-size: 12px; text-align: center;">이벤트기간 : 2017.03.01 ~ 2017~03.31</p>
						</div></a>
				</div>
		</div>

		<div class="row">
			<div class="col-xs-4">
					<a href="#" class="thumbnail"> <img src="/jsmi/images/main1/eventmn12.png"
						class="img-responsive imgsize">
						<div class="caption">
							<p style="font-size: 12px; text-align: center;">이벤트기간 : 2017.03.01 ~ 2017~03.31</p>
						</div></a>
				</div>
		</div>
	</div>
	
	
	<%@ include file="/views/common/main1/footer.jsp"%>
</body>
</html>