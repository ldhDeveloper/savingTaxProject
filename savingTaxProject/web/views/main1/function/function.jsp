<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주요기능안내</title>
<style>
.pcs {
	width: 970px;
	height: 600px;
}

.mbs {
	width: 350px;
	height: 250px;
}

.font {
	font-family: ssangmunDong !important;
	text-align: center;
}

.font2 {
	font-family: ssangmunDong !important;
	font-size: 15px;
}

.font3 {
	font-family: ssangmunDong !important;
	font-size: 10px;
}
</style>
</head>
<body>
	<%@ include file="/views/common/main1/menubar.jsp"%>
	<!-- PC -->
	<br>
	<br>
	<h2 class="font">주요기능안내</h2>
	<div class="middle hidden-xs">
		<img src="/jsmi/images/main1/one.png"
			style="width: 970px; height: 600px;"> <br>
		<br>
		<p class="font2">1.정보를 입력해주세요.(회원정보,사업장정보,거래처 정보를 모두 입력하셔야 합니다.)</p>
		<img src="/jsmi/images/main1/two.png" class="pcs"> <br>
		<br>
		<p class="font2">2.장부를 작성해주세요.(기간을 선택하여 내가 입력한 장부를 볼 수 있습니다.)</p>
		<img src="/jsmi/images/main1/th.png" class="pcs"> <br>
		<br>
		<p class="font2">3.직원들의 정보를 입력하고, 급여를 입력해주세요.(급여관리를 할 수 있습니다.)</p>
		<img src="/jsmi/images/main1/fo.png" class="pcs"> <br>
		<br>
		<p class="font2">4.세금계산에 필요한 항목들을 모두 입력하고 계산을 눌러주세요.</p>
		<img src="/jsmi/images/main1/fi.png" class="pcs"> <br>
		<br>
		<p class="font2">5.년도와 분기를 선택하면 결산 그래프를 확인하실 수 있습니다.</p>
	</div>
	<hr>

	<!-- Moblie -->
	<div class="container-fluid hidden-sm hidden-md hidden-lg">
		<div class="row">
			<div class="col-xs-12">
				<br>
				<br>
				<br> <img src="/jsmi/images/main1/one.png"
					class="hidden-sm hidden-md hidden-lg img-responsive mbs">
					<br><br>
				<p class="font3">1.정보를 입력해주세요.(회원정보,사업장정보,거래처 정보를 모두 입력하셔야 합니다.)</p>
				<img src="/jsmi/images/main1/two.png"
					class="hidden-sm hidden-md hidden-lg img-responsive mbs">
					<br><br>
				<p class="font3">2.장부를 작성해주세요.(기간을 선택하여 내가 입력한 장부를 볼 수 있습니다.)</p>
				<img src="/jsmi/images/main1/th.png"
					class="hidden-sm hidden-md hidden-lg img-responsive mbs">
					<br><br>
				<p class="font3">3.직원들의 정보를 입력하고, 급여를 입력해주세요.(급여관리를 할 수 있습니다.)</p>
				<img src="/jsmi/images/main1/fo.png"
					class="hidden-sm hidden-md hidden-lg img-responsive mbs">
					<br><br>
				<p class="font3">4.세금계산에 필요한 항목들을 모두 입력하고 계산을 눌러주세요.</p>
				<img src="/jsmi/images/main1/fi.png"
					class="hidden-sm hidden-md hidden-lg img-responsive mbs">
					<br><br>
				<p class="font3">5.년도와 분기를 선택하면 결산 그래프를 확인하실 수 있습니다.</p>
			</div>
		</div>
	</div>
	<hr>
	<%@ include file="/views/common/main1/footer.jsp"%>

</body>
</html>