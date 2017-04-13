<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
		
	
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/jsmi/css/main2/bootstrap.min.css" rel="stylesheet">
<link href="/jsmi/css/main2/styles.css" rel="stylesheet">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript " src="/jsmi/js/main2/bootstrap.min.js"></script>
<script type="text/javascript" src="/jsmi/js/main2/zipcode.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<title>generalIncomeTax</title>

<style>
.middle {
	width: 1400px !important;
	background: white;
	max-height: 600px;
}

.top {
	width: 1400px !important;
	margin-bottom: -25px;
}

.frame {
	width: 1400px;
	margin-left: auto;
	margin-rignt: auto;
	position: relative;
	left: -100px;
}

.section {
	width: 1200px;
	min-height: 600px;
	max-height: 600px;
	background: white;
	position: relative;
	top: -600px;
	left: 200px;
	overflow: scroll;
	padding-left: 20px;
	padding-right: 20px;
}

.side {
	width: 200px;
	position:
}

.tabmenu {
	background: #101020;
	color: white;
	text-align: center;
	font-weight: bold;
}

.lactive {
	background: white;
	color: black;
}

.container-fluid {
	background: aliceblue;
	border-radius: 4px;
}

.panel-heading {
	background-color: aliceblue;
	color: purple;
}

.taxtable {
	width: 1104px;
}

.taxthead {
	border-top: 2px solid #2a82a3;
	border-bottom: 2px solid #2a82a3;
	padding-top: 2%;
	font-family: computer !important;
	font-size: 15pt;
}

.taxth {
	padding-top: 2%;
	padding-bottom: 2%;
	text-align: center;
}

.taxth1 {
	border-right: 2px solid #2a82a3;
}

.taxbody {
	padding: 2%;
}

.taxtd1 {
	padding: 2%;
	border-bottom: 1px solid #ddd;
	border-right: 1px solid #ddd;
	text-align: center;
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 12pt;
}

.taxtd2 {
	padding: 2%;
	border-bottom: 1px solid #ddd;
	text-align: center;
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 13pt;
}

#calBtn {
	border: none;
	border-radius: 5px;
	border-color: #2a82a3;
	color: white;
	width: 80px;
    height: 40px;
	font-family: Binggrae !important;
	background-color : #2a82a3;
}

#resetBtn {
	margin-left: 30%;
	border: none;
	border-radius: 5px;
	border-color: #d58512;
	color: white;
	width: 80px;
    height: 40px;
	font-family: Binggrae !important;
	background-color : #ec971f;
}

.Btnclass {
	padding-left: 42%;
}

.selectBtn1 {
	padding-left: 47%;
}

.selectBtn2 {
	border: none;
	border-radius: 5px;
	border-color: #d58512;
	color: white;
	width: 60px;
    height: 30px;
	font-family: Binggrae !important;
	background-color : #ec971f;
}

.calTable {
	width: 1104px;
}

.calResult {
	border-bottom: 4px solid #2a82a3;
	font-family: ssangmunDong !important;
	padding-left: 38%;
	font-size: 20pt;
}

.lineTable {
	font-family: NotoSansCJKkr-Ligth !important;
	padding: 1.5%;
	border-bottom : 1px solid #ddd;
	font-size: 15pt;
}

.lineTable1 {
	font-family: computer !important;
	padding: 1.5%;
	border-bottom : 1px solid #ddd;
	font-size: 15pt;
	background-color: #dcdcdc;
}

.sumCalTable {
	padding: 1.5%;
	border-right : 1px solid lightgrey;
	font-size: 13pt;
}

.sumTable {
	background-color : #2a82a3;
	color: #fff;
	font-size: 13pt;
}
.rightTable{
     font-size: 13pt;
}

.sumTable2 {
	background-color : aliceblue;
	font-size: 13pt;
}

a:hover { 
	text-decoration:none;
}

#yearlabel img {
	display: inline-block;
	height: 26px;
	cursor: pointer;
}

#yearlabel h3 {
	display: inline-block;
}

.sumTotalTable {
	background-color : red;
	color : white;
}

#selyear {
	font-family: ssangmunDong !important;
	color : #2a82a3;
	font-size: 40pt;
	
}

#colbtn1, #colbtn2, #colbtn3, #colbtn4 {
	background: -webkit-linear-gradient(aliceblue, white);
	background: -o-linear-gradient(aliceblue, white);
	background: -moz-linear-gradient(aliceblue, white);
	background: linear-gradient(aliceblue, white);
	border: 1px solid #ddd;
	border-radius-top: 5px;
	border-radius-left: 5px;
	border-radius-right: 5px;
	text-align: center;
	color: #2a82a3;
	font-family: ssangmunDong !important;
	height: 60px;
	padding-top: 1.7%;
}

#col1, #col2, #col3, #col4 {
	font-size: 18pt;
}

#income1, #income2, #income3, #income4, #income5, #income6, #income7, #cost1, #cost2, #cost3 {
	background: -webkit-linear-gradient(aliceblue, white);
	background: -o-linear-gradient(aliceblue, white);
	background: -moz-linear-gradient(aliceblue, white);
	background: linear-gradient(aliceblue, white);
	border: 1px solid #ddd;
	border-radius: 4px;
	padding: 6px;
}

#gong1, #gong2, #gong3, #gong4, #gong5, #gong6{
	background: -webkit-linear-gradient(aliceblue, white);
	background: -o-linear-gradient(aliceblue, white);
	background: -moz-linear-gradient(aliceblue, white);
	background: linear-gradient(aliceblue, white);
	border: 1px solid #ddd;
	border-radius: 4px;
	padding: 6px;
}
#segong1, #segong2, #segong3, #gita1, #gita2{
	background: -webkit-linear-gradient(aliceblue, white);
	background: -o-linear-gradient(aliceblue, white);
	background: -moz-linear-gradient(aliceblue, white);
	background: linear-gradient(aliceblue, white);
	border: 1px solid #ddd;
	border-radius: 4px;
	padding: 6px;
}

</style>
<script>
	$(function(){
		$('#colbtn1').click(function(){
			if($('#collapse1').hasClass("in")){
				$('#collapse1').removeClass("in");
			} else {
				$('#collapse1').addClass("in");
			}
		});
		
		$('#colbtn2').click(function(){
			if($('#collapse2').hasClass("in")){
				$('#collapse2').removeClass("in");
			} else {
				$('#collapse2').addClass("in");
			}
		});
		$('#colbtn3').click(function(){
			if($('#collapse3').hasClass("in")){
				$('#collapse3').removeClass("in");
			} else {
				$('#collapse3').addClass("in");
			}
		});
		$('#colbtn4').click(function(){
			if($('#collapse4').hasClass("in")){
				$('#collapse4').removeClass("in");
			} else {
				$('#collapse4').addClass("in");
			}
		});
	}); 
</script>
</head>

<body style="padding-top: 0px">
	<%@ include file="/views/common/main2/main2back.jsp"%>
	<div class="middle top" style="margin-top: 50px">
		<%@ include file="/views/common/main2/fullbar.jsp"%>
	</div>

	<div class="middle frame">
		<div class="side">
			<%@ include file="/views/common/main2/slidebar.jsp"%>
		</div>
		
		<script type="text/javascript">
			pno = <%= loginUser.getPno() %>
			d = new Date();
			dyear = d.getFullYear();
			
			$(function(){
				$('#selyear').text(dyear + "년");
				
				$('#beforeyear').click(function(){
					dyear = dyear - 1;
					$('#selyear').text(dyear + "년");
				});
				
				$('#nextyear').click(function(){
					dyear = dyear + 1;
					$('#selyear').text(dyear + "년");
				});							
			});			
		</script>
		
		<script type="text/javascript">
		$(function(){
			$("#selectBtn2").click(function(){
				var selyear = $("#selyear").text();
				console.log(selyear);
				var pno = <%= loginUser.getPno() %>
				
				$.ajax({
					url: "/jsmi/gitlist",
					data: {pno : pno, selyear : selyear},
					dataType: "json",
					contentType: "application/x-www-form-urlencoded; charset=UTF-8",
					success: function(data) {
						var jsonObj = JSON.stringify(data);
						//변환된 제이슨 객체를 제이슨 배열로 변환
						var jsonArr = JSON.parse(jsonObj);
						console.log(jsonArr.totalIncome);
						console.log(jsonArr.totalCost);
						$("#income1").val(jsonArr.income1);
						$("#cost1").val(jsonArr.cost1);
						$("#income2").val(jsonArr.income2);
						$("#income3").val(jsonArr.income3);
						$("#income4").val(jsonArr.income4);
						$("#cost2").val(jsonArr.cost2);						
					}
				});
			});	
		});
		</script>
		<script>
			function calculator(){
					var line1_1 = 0;
					var line1_2 = 0;
					var line1_3 = 0;
					var line2_2 = 0;
					var taxRate = 0;
					var taxgong = 0;
					var line4_2 = 0;
					var gita1 = Number($("#gita1").val());
					var gita2 = Number($("#gita2").val());
					var localtax = 0.1;
					
					for(var i = 1; i <= 7; i++){
						var indexid = "#income" + i
						line1_1 += Number($(indexid).val());
					}
					for(var i = 1; i <= 3; i++){
						var indexid = "#cost" + i
						line1_2 += Number($(indexid).val());
					}
					
					$("#line1-1").html(line1_1);
					$("#line1-2").html(line1_2);
					$("#line1-3").html(line1_1 - line1_2);
					
					
					$("#line2-1").html(line1_1 - line1_2);
					
					for(var i = 1; i <= 6; i++){
						var indexid = "#gong" + i
						line2_2 += Number($(indexid).val());
					}
					$("#line2-2").html(line2_2);
					$("#line2-3").html(Number($("#line2-1").text())-line2_2)
				
					
					$("#line3-1").html($("#line2-3").text());
					
					if($("#line3-1").text() <= 12000000){
						taxRate = 0.06;
						taxgong = 0;
					}else if($("#line3-1").text() <= 46000000){
						taxRate = 0.15;
						taxgong = 1080000;
					}else if($("#line3-1").text() <= 88000000){
						taxRate = 0.24;
						taxgong = 5220000;
					}else if($("#line3-1").text() <= 150000000){
						taxRate = 0.35;
						taxgong = 14900000;
					}else{
						taxRate = 0.38;
						taxgong = 19400000;
					}
					
					$("#line3-2").html(taxRate*100 + ' %');
					$("#line3-3").html(taxgong + " 원");
					$("#line3-4").html($("#line3-1").text() * taxRate - taxgong);
					
					
					$("#line4-1").html($("#line3-4").text());
					
					for(var i = 1; i <= 3; i++){
						var indexid = "#segong" + i;
						line4_2 += Number($(indexid).val());
						console.log(Number($(indexid).val()));
					}
					
					$("#line4-2").html(line4_2);
					$("#line4-3").html($("#line4-1").text() - line4_2);
					
					$("#line5-1").html($("#line4-3").text());
					$("#line5-2").html(gita1);

					$("#line5-3").html(gita2);
					
					$("#line5-4").html(Number($("#line5-1").text()) + gita1 - gita2);
					
					$("#line6-1").html(Number($("#line5-1").text()) + gita1 - gita2);
					
					$("#line6-2").html(localtax * 100 + ' %');
					
					$("#line6-3").html(Number($("#line6-1").text()) - Number($("#line6-1").text()) * localtax);					
			}

		</script>

		<div class="section">

			<br>

			<div class="navbar navbar-default">
				<div class="container-fluid">
					<ul class="nav navbar-nav">
						<li>
							<a class="tabmenu" href="/jsmi/views/main2/tax/vatDetail.jsp">
								부가가치세
							</a>
						</li>
						
						<li>
							<a class="tabmenu lactive" href="/jsmi/views/main2/tax/generalIncomeTax/generalIncomeTax.jsp">
								종합소득세
							</a>
						</li>
					</ul>
				</div>
			</div>

			<br>
			<br>
			
			<div id="yearlabel" align="center">
				<img id="beforeyear" src="/jsmi/images/main2/arrow2.png">&nbsp;&nbsp;&nbsp;&nbsp;
					<h3 align="center" id="selyear"></h3>&nbsp;&nbsp;&nbsp;&nbsp;
				<img id="nextyear" src="/jsmi/images/main2/arrow.png">
			</div>
			
			<br>
			<br>
			
			<div class="selectBtn1">
				<button class="selectBtn2" id="selectBtn2">조회</button>
			</div>
			
			<br>
			<br>

			<form>
			<div class="panel-group">
				<div class="panel panel-default">
					<div class="panel-heading" id="colbtn1" style="cursor:pointer">
						<h4 class="panel-title" style="font-size: 16pt;">
							종합 소득 금액
						</h4>
					</div>
					<div id="collapse1" class="panel-collapse collapse">
						<div class="panel-body">
							<table class="taxtable">
								<thead>
									<tr class="taxthead">
										<th class="taxth taxth1">종합 소득 금액 항목</th>
										<th class="taxth">금액</th>
									</tr>
								</thead>

								<tbody class="taxbody">
									<tr>
										<td class="taxtd1">사업소득</td>
										<td class="taxtd2"><input type="text" placeholder="사업소득" id="income1" readonly> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">사업소득필요경비(-)</td>
										<td class="taxtd2"><input type="text" placeholder="사업소득필요경비" id="cost1" readonly> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">근로소득</td>
										<td class="taxtd2"><input type="text" placeholder="근로소득" id="income2" readonly> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">이자소득</td>
										<td class="taxtd2"><input type="text" placeholder="이자소득" id="income3" readonly> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">배당소득</td>
										<td class="taxtd2"><input type="text" placeholder="배당소득" id="income4" readonly> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">연금소득</td>
										<td class="taxtd2"><input type="text" placeholder="연금소득" id="income5" value="0" onkeydown="income5down();"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">부동산임대소득</td>
										<td class="taxtd2"><input type="text" placeholder="부동산임대소득" id="income6" value="0"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">임대소득필요경비(-)</td>
										<td class="taxtd2"><input type="text" placeholder="임대소득필요경비" id="cost2" readonly> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">기타소득</td>
										<td class="taxtd2"><input type="text" placeholder="기타소득" id="income7"  value="0"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">기타소득필요경비(-)</td>
										<td class="taxtd2"><input type="text" placeholder="기타소득필요경비" id="cost3"  value="0"> 원</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
				<div class="panel panel-default">
					<div class="panel-heading" id="colbtn2" style="cursor:pointer">
						<h4 class="panel-title" style="font-size: 16pt">
							종합 소득 공제
						</h4>
					</div>
					<div id="collapse2" class="panel-collapse collapse">
						<div class="panel-body">
							<table class="taxtable">
								<thead>
									<tr class="taxthead">
										<th class="taxth taxth1">종합 소득 금액 항목</th>
										<th class="taxth">금액</th>
									</tr>
								</thead>

								<tbody class="taxbody">
									<tr>
										<td class="taxtd1">기본공제(본인)</td>
										<td class="taxtd2"><input type="text"  value="1500000" readonly id="gong1"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">추가공제 경로우대(인당 100만원), 장애인(인당 200만원),
											부녀자(50만원), 한부모(100만원)</td>

										<td class="taxtd2"><input type="text"  value="0" id="gong2"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">국민연금보험공제액</td>
										<td class="taxtd2"><input type="text"  value="0" id="gong3"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">기타 보험료 공제액</td>
										<td class="taxtd2"><input type="text"  value="0" id="gong4"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">소기업 상공인 공제부금 공제액</td>
										<td class="taxtd2"><input type="text"  value="0" id="gong5"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">기타 공제액</td>
										<td class="taxtd2"><input type="text"  value="0" id="gong6"> 원</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
				<div class="panel panel-default">
					<div class="panel-heading" id="colbtn3" style="cursor:pointer">
						<h4 class="panel-title" style="font-size: 16pt">
							세액 공제 항목
						</h4>
					</div>
					<div id="collapse3" class="panel-collapse collapse">
						<div class="panel-body">
							<table class="taxtable">
								<thead>
									<tr class="taxthead">
										<th class="taxth taxth1">세액 공제 항목</th>
										<th class="taxth">금액</th>
									</tr>
								</thead>

								<tbody class="taxbody">
									<tr>
										<td class="taxtd1">표준 세액 공제</td>
										<td class="taxtd2"><input type="text"  value="70000" readonly id="segong1"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">자녀세액공제 1~2명 (1명당 15만원) / 2명 초과 (30만원 +
											2명 초과 1명당 20만원)</td>
										<td class="taxtd2"><input type="text" value="0" id="segong2"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">기타세액공제액</td>
										<td class="taxtd2"><input type="text" value="0" id="segong3"> 원</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
				
				<div class="panel panel-default">
					<div class="panel-heading" id="colbtn4" style="cursor:pointer">
						<h4 class="panel-title" style="font-size: 16pt">
							기타항목
						</h4>
					</div>
					
					<div id="collapse4" class="panel-collapse collapse">
						<div class="panel-body">
							<table class="taxtable">
								<thead>
									<tr class="taxthead">
										<th class="taxth taxth1">기타항목</th>
										<th class="taxth">금액</th>
									</tr>
								</thead>

								<tbody class="taxbody">
									<tr>
										<td class="taxtd1">가산세 무(과소)신고가산세, 납부(환급)불성실가산세,
											보고불성실가산세, 증빙불비가산세, 무기장가산세 등</td>
										<td class="taxtd2"><input type="text"  value="0" id="gita1"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">기납부세액 (중간예납세액, 수시부과세액, 원천징수세액 등)</td>
										<td class="taxtd2"><input type="text"  value="0" id="gita2"> 원</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
				
				<br><br>
				
				<div class="Btnclass">
					<table>
						<tr>
							<td>
								<input id="calBtn" type="button" value="계산하기" onclick="calculator();">
							</td>
							
							<td>
								<input id="resetBtn" type="reset" value="초기화">
							</td>
						</tr>
					</table>
				</div>
				</form>
				<br><br><br><br>
				
				<div>
					<table class="calTable" style="width:1100px">
						<tr>
							<th colspan="4" class="calResult">종합 소득세 결과</th>
						</tr>
						
						<tr class="lineTable1">
							<td align="center" class="sumCalTable" style="width:282px">총소득 합계</td>
							<td align="center" class="rightTable" colspan="2">총비용 합계 (-)</td>							
							<td align="center" class="sumTable" style="width:233">종합소득금액</td>
						</tr>
						
						<tr class="lineTable">
							<td align="center" class="sumCalTable"><p id="line1-1"></p></td>
							<td align="center" class="rightTable" colspan="2"><p id="line1-2"></p></td>
							<td align="center" class="sumTable2"><p id="line1-3"></p></td>
						</tr>
						
						<tr class="lineTable1">
							<td align="center" class="sumCalTable">종합소득금액</td>
							<td align="center" class="rightTable" colspan="2">종합소득공액 (-)</td>
							<td align="center" class="sumTable">과세표준</td>
						</tr>
						
						<tr class="lineTable">
							<td align="center" class="sumCalTable"><p id="line2-1"></p></td>
							<td align="center" class="rightTable" colspan="2"><p id="line2-2"></p></td>
							<td align="center" class="sumTable2"><p id="line2-3"></p></td>
						</tr>
						
						<tr class="lineTable1">
							<td align="center" class="sumCalTable">과세표준</td>
							<td align="center" class="sumCalTable">세율(6%~38%) (*)</td>
							<td align="center" class="sumCalTable">누진공제 (-)</td>
							<td align="center" class="sumTable">산출세액</td>
						</tr>
						
						<tr class="lineTable">
							<td align="center" class="sumCalTable" ><p id="line3-1"></p></td>
							<td align="center" class="sumCalTable" ><p id="line3-2"></p></td>
							<td align="center" class="sumCalTable" ><p id="line3-3"></p></td>
							<td align="center" class="sumTable2"><p id="line3-4"></p></td>
						</tr>
						
						<tr class="lineTable1">
							<td align="center" class="sumCalTable">산출세액</td>
							<td align="center" class="rightTable" colspan="2">세액공제(-)</td>
							<td align="center" class="sumTable">결정세액</td>
						</tr>
						
						<tr class="lineTable">
							<td align="center" class="sumCalTable"><p id="line4-1"></p></td>
							<td align="center" class="rightTable" colspan="2"><p id="line4-2"></p></td>
							<td align="center" class="sumTable2"><p id="line4-3"></p></td>
						</tr>
						
						<tr class="lineTable1">
							<td align="center" class="sumCalTable">결정세액</td>
							<td align="center" class="sumCalTable">가산세(+)</td>
							<td align="center" class="sumCalTable">기납부세액(-)</td>
							<td align="center" class="sumTable">차감납부세액</td>
						</tr>
						
						<tr class="lineTable">
							<td align="center" class="sumCalTable"><p id="line5-1"></p></td>
							<td align="center" class="sumCalTable"><p id="line5-2"></p></td>
							<td align="center" class="sumCalTable"><p id="line5-3"></p></td>
							<td align="center" class="sumTable2"><p id="line5-4"></p></td>
						</tr>
						
						<tr class="lineTable1">
							<td align="center" class="sumCalTable">차감납부세액</td>
							<td align="center" class="sumCalTable" colspan="2">지방세</td>
							<td align="center" class="sumTotalTable">최종납부세액</td>
						</tr>
						
						<tr class="lineTable">
							<td align="center" class="sumCalTable"><p id="line6-1"></p></td>
							<td align="center" class="sumCalTable" colspan="2" id="line6-2"></td>
							<td align="center" class="sumTable2"><p id="line6-3"></p></td>
						</tr>					 	
					</table>
				</div>				
				<br><br><br><br>
				
			</div>
		</div>

	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>

	<script type="text/javascript">
		function income5down() {
			var number = $("#income5").val();
			console.log(number);
			Comma(number);
			
			function Comma(number) {
				number = replaceChar(number, ',', '');
				number = '' + number;

				if (number.length > 3) {
					var mod = number.length % 3;
					var output = (mod > 0 ? (number.substring(0, mod)) : '');
					for (i = 0; i < Math.floor(number.length / 3); i++) {
						if ((mod == 0) && (i == 0))
							output += number.substring(mod + 3 * i, mod + 3 * i + 3);
						else
							output += ','+ number.substring(mod + 3 * i, mod + 3 * i + 3);
					}
					return (output);
				} else
					return number;
			}
		}
		
		
	</script>

</body>
</html>