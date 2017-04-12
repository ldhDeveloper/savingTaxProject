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

	<script type="text/javascript">
		$(function() {
			$("#pay1").click(
					function() {
						var c = 10000;
						var data = "데이터 등록권";
						$(location).attr("href", "/jsmi/views/main1/costGuide/payView.jsp?c=" + c + "&data=" + data);
						console.log("pay1");
					});

			$("#pay2").click(
					function() {
						var c = 80000;
						var data = "인터넷 기장";
						$(location).attr("href", "/jsmi/views/main1/costGuide/payView.jsp?c=" + c + "&data=" + data);
						console.log("pay2");
					});

			$("#pay3").click(
					function() {
						var c = 200000;
						var data = "종합소득세 신고대행";
						$(location).attr("href", "/jsmi/views/main1/costGuide/payView.jsp?c=" + c + "&data=" + data);
						console.log("pay3");
					});
			
			$("#pay4").click(
					function() {
						var c = 10000;
						var data = "데이터 등록권";
						$(location).attr("href", "/jsmi/views/main1/costGuide/payView.jsp?c=" + c + "&data=" + data);
						console.log("pay1");
			});
			
			$("#pay5").click(
					function() {
						var c = 80000;
						var data = "인터넷 기장";
						$(location).attr("href", "/jsmi/views/main1/costGuide/payView.jsp?c=" + c + "&data=" + data);
						console.log("pay2");
					});
			
			$("#pay6").click(
					function() {
						var c = 200000;
						var data = "종합소득세 신고대행";
						$(location).attr("href", "/jsmi/views/main1/costGuide/payView.jsp?c=" + c + "&data=" + data);
						console.log("pay3");
					});
		});
	</script>

	<!-- PC -->
	<div class="middle hidden-xs">

		<br>
		<div style="position: relative">
			<img src="/jsmi/images/main1/costlg.png"> <a id="pay1"
				style="cursor: pointer; z-index: 10; background: rgba(0, 0, 0, 0); position: absolute; top: 360px; left: 616px; width: 250px; height: 50px;"></a>
		</div>

		<br> <br>
		<div style="position: relative">
			<img src="/jsmi/images/main1/costlg2.png"> <a id="pay2"
				style="cursor: pointer; z-index: 10; background: rgba(0, 0, 0, 0); position: absolute; top: 360px; left: 616px; width: 250px; height: 50px;"></a>
		</div>

		<br> <br>
		<div style="position: relative">
			<img src="/jsmi/images/main1/costlg3.png"> <a id="pay3"
				style="cursor: pointer; z-index: 10; background: rgba(0, 0, 0, 0); position: absolute; top: 360px; left: 616px; width: 250px; height: 50px;"></a>
		</div>
	</div>

	<!-- Moblie -->
	<div class="container-fluid hidden-sm hidden-md hidden-lg">
		<div class="row">
			<div class="col-xs-12">




				<br> <br>
				<div style="position: relative">
					<img src="/jsmi/images/main1/costxs1.png"
						class="hidden-sm hidden-md hidden-lg img-responsive" usemap="#Map">
					<a id="pay4"
						style="position: absolute; z-index: 10; top: 537px; left: 100px; width: 174px; height: 33px; background: rgba(0, 0, 0, 0); cursor: pointer;"></a>
				</div>

			</div>
		</div>

		<div class="row">
			<div class="col-xs-12">
				<br> <br>
				<div style="position: relative">
					<img src="/jsmi/images/main1/costxs2.png"
						class="hidden-sm hidden-md hidden-lg img-responsive" usemap="#Map">
					<a id="pay5"
						style="position: absolute; z-index: 10; top: 537px; left: 100px; width: 174px; height: 33px; background: rgba(0, 0, 0, 0); cursor: pointer;"></a>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-xs-12">
				<br> <br>
				<div style="position: relative">
					<img src="/jsmi/images/main1/costxs3.png"
						class="hidden-sm hidden-md hidden-lg img-responsive" usemap="#Map">
					<a id="pay6"
						style="position: absolute; z-index: 10; top: 537px; left: 100px; width: 174px; height: 33px; background: rgba(0, 0, 0, 0); cursor: pointer;"></a>
				</div>
			</div>
		</div>
	</div>
	<hr>

	<%@ include file="/views/common/main1/footer.jsp"%>
</body>
</html>