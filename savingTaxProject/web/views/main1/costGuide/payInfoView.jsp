<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/jsmi/css/common/font.css" type="text/css">
<link rel="stylesheet" href="/jsmi/css/common/grid.css" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="https://service.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>

<style type="text/css">
.font-family-xs-1 {
	font-family: mobius !important;
}

.font-family-xs-2 {
	font-family: Binggrae !important;
}

.font-family-xs-3 {
	font-family: tenbyten !important;
}

.font-family-md-1 {
	font-family: mobius !important;
}

.font-family-md-2 {
	font-family: Binggrae !important;
}

.font-family-md-3 {
	font-family: tenbyten !important;
}

/* *** 모바일 style *** */
.container-fluid, #th {
	text-align: center;
}

#xstable {
	table-layout: fixed;
	font-size: 7pt;
}

#stext {
	width: 70%;
	height: 25px;
	font-size: 10pt;
}

/* *** 컴퓨터 style *** */
.table {
	table-layout: fixed;
}

.tablemd {
	width: 100%;
	align: center;
	text-align: left;
}

.postTitle {
	font-family: mobius !important;
	font-size: 40px;
	text-align: center;
	color: #2a82a3;
}

.postthead {
	border-bottom: 4px solid #2a82a3;
	width: 100%;
}

.postth {
	font-size: 20px;
	text-align: center;
	font-family: ssangmunDong !important;
}

.plist {
	border-bottom: 1px solid #2a82a3;
	font-family: computer !important;
	font-size: 12pt;
	text-align: center;
	color: #2a82a3;
	padding-top: 1.5%;
	padding-left: 1.5%;
	padding-bottom: 1.5%;
}

.pshow {
	width: 30%;
}

.pcontent {
	border-bottom: 1px solid #ddd;
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 10pt;
	text-align: center;
	color: dimgrey;
	padding-top: 1.5%;
	padding-left: 16%;
	padding-bottom: 1.5%;
}

.presult {
	border-bottom: 1px solid #ddd;
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 10pt;
	text-align: left;
	color: dimgrey;
	padding-top: 1.5%;
	padding-left: 14%;
	padding-bottom: 1.5%;
}

.presult2 {
	border-bottom: 1px solid #ddd;
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 10pt;
	text-align: left;
	color: dimgrey;
	padding-top: 1.5%;
	padding-left: 34%;
	padding-bottom: 1.5%;
}

.pdate {
	border: 1px solid #ddd;
	font-size: 10pt;
	font-family: Binggrae !important;
	text-align: center;
	padding : 2%;
	color: #2a82a3;
}

.payBtn {
	border: none;
	background-color: red;
	font-size: 13pt;
	color: white;
	width : 22%;
	height : 30px;
	border-radius: 3px;
	align : center !important;
	font-family: Binggrae;	
}

#agree{
	font-size: 10pt;
	font-family: computer !important;
	color: #2a82a3;
}

.pway {
	font-family: NotoSansCJKkr-Ligth !important;
	color: black;
	font-size: 10pt;
}

.pways{
	border-right: 1px solid #2a82a3;
}
</style>

</head>

<body>
	<%@ include file="/views/common/main1/menubar.jsp"%>
	
	<script type="text/javascript">
	$(function() {
		var hap = $("#hap").text();
		var month = <%= request.getParameter("month") %>;
		
		var sdate = new Date(); // 현재일자
		var gYear = sdate.getFullYear();
		var gMon = sdate.getMonth() + 1;
		var gMon2 = sdate.getMonth() + month + 1;
		var gDay = sdate.getDate();
		var gDate = gYear + "-" + gMon + "-" + gDay;
		var nDate = gYear + "-" + gMon2 + "-" + gDay;
		
		var edate = new Date(sdate.getFullYear() + "-" + (sdate.getMonth() + month - 1) + "-" + sdate.getDay() - 1);
		console.log(month);
		console.log(gDate);
		console.log(nDate);
		
		var total = 0;
		
		ComaRemove(hap);
		
		function ComaRemove(hap){			
			var tt = hap.split(',').join("");
			total = tt.split('원').join("");
			return total;
		}
	
		
		$("#check").click(function() {
			if($("#credit").is(":checked")){
				console.log("신용카드 : " + $("#credit").attr("checked"));
				IMP.init('imp55262355');

				IMP.request_pay({
				    pg : 'html5_inicis',
				    pay_method : 'card',
				    merchant_uid : 'merchant_' + new Date().getTime(),
				    name : '주문명:결제테스트',
				    amount : total,
				    buyer_email : 'iamport@siot.do',
				    buyer_name : '구매자이름',
				    buyer_tel : '010-1234-5678',
				    buyer_addr : '서울특별시 강남구 삼성동',
				    buyer_postcode : '123-456'
				}, function(rsp) {
				    if ( rsp.success ) {
				        var msg = '결제가 완료되었습니다.';
				        
				        msg += '고유ID : ' + rsp.imp_uid;
				        msg += '상점 거래ID : ' + rsp.merchant_uid;
				        msg += '결제 금액 : ' + rsp.paid_amount;
				        msg += '카드 승인번호 : ' + rsp.apply_num;

				        $(location).attr("href", "/jsmi/payinsert?pno=" + <%= loginUser.getPno() %> + "&sdate=" + gDate + "&edate=" + nDate + "&month=" + month + "&hap=" + hap);
				        
				    } else {
				        var msg = '결제에 실패하였습니다.';
				        msg += '에러내용 : ' + rsp.error_msg;
				    }
				});
			} else if($("#bankbook").is(":checked")){
				$(location).attr("href", "/jsmi/views/main1/costGuide/payNobankView.jsp?hap=" + hap + "&month=" + month);
			}			
		});
	});
</script>

	<br>
	<br>
	<br>

	<!-- 컴퓨터용 -->



	<div class="middle hidden-xs">


		<div class="middle font-family-md-1">
			<h3 align="center" class="postTitle">결제하기</h3>
		</div>

		<br> <br> <br>

		<!-- <div id="clist">
			<label id="ctitle">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				제목
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|
			</label> 
			<label id=ctitlec>&nbsp;&nbsp;
				[절세미인] 여기엔 제목값이 입력되는 곳 입니다.</label>
		</div> -->

		<h3></h3>

			<div class="tableStart">
				<table class="tablemd">
					<thead class="postthead">
						<tr>
							<th colspan="5" class="postth">결제정보</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td class="plist pways">결제방식 선택</td>

							<td class="plist pway">
								<input type="radio" name="pay" id="credit"> 신용카드
							</td>

							<td class="plist pway">
								<input type="radio" name="pay" id="bankbook"> 무통장입금
							</td>
						</tr>

						<tr>
							<td class="pcontent pshow">결제금액(부가세포함)</td>

							<td colspan="2" class="pcontent" id="hap"> <%= request.getParameter("hap") %></td>
						</tr>
					</tbody>
				</table>
				
				<br><br><br>
			</div>
			
			<%-- <input id="month" type="hidden" value="<%= request.getParameter("month") %>"> --%>

			<br><br>

			<div align="center">
				<h5 id="agree">※위와 같은 정보로 결제를 신청하시겠습니까?</h5>
				<input type="button" class="payBtn" value="신청하기" id="check">
			</div>
	</div>



	<!-- 모바일용 -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<div class="container-fluid hidden-sm hidden-md hidden-lg">
		<div class="small">
			<h2 align="center" class="font-family-xs-1">세무 Tips</h2>
		</div>

		<br>

		<form action=""></form>

		<div class="row">
			<div class="col-xs-2"></div>

			<div class="col-xs-8">
				<input type="text" id="stext" name="search"
					placeholder="검색할 제목을 입력하세요.">
				<!-- <input type="submit" class="btn btn-primary" id="searchBt" value="검색"> -->
				<!-- <input class="btn btn-primary input-xs" value="검색"> -->
				<button class="btn btn-primary btn-xs">검색</button>
			</div>

			<div class="col-xs-2"></div>
		</div>

		<br> <br>


		<div class="container">
			<div class="row">
				<div class="col-xs-0 col-md-2"></div>

				<div class="col-xs-12 col-md-8">
					<div class="table-responsive">
						<table class="table table-bordered">

							<tbody>
								<tr class="success">
									<td>제 목</td>
									<td></td>
								</tr>

								<tr class="danger">
									<td>작 성 자</td>
									<td></td>
								</tr>

								<tr class="info">
									<td colspan="2"><textarea class="form-control" rows="10"
											id="comment"></textarea></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

				<div class="col-xs-0 col-md-2"></div>
			</div>
		</div>

		<br> <br> <br> <br> <br> <br> <br>
	</div>
	<%@ include file="/views/common/main1/footer.jsp"%>
</body>
</html>