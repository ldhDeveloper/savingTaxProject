<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	border-top: 3px solid #2a82a3;
	border-bottom: 3px solid #2a82a3;
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
	align: center;
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
	align: center;	
}

.Btnclass {
	padding-left: 45%;
}

.calTable {
	width: 1104px;
}

.calResult {
	border-bottom: 4px solid #2a82a3;
	font-family: ssangmunDong !important;
	padding-left: 38%;
	font-size: 27pt;
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
	font-size: 15pt;
}

.sumTable {
	background-color : #2a82a3;
	color: #fff;
}

.sumTable2 {
	background-color : aliceblue;
}

/* .panel-heading {
	background: -webkit-linear-gradient(#ffffff, #b0e0e6);
	background: -o-linear-gradient(#ffffff, #b0e0e6);
	background: -moz-linear-gradient(#ffffff, #b0e0e6);
	background: linear-gradient(#ffffff, #b0e0e6);
	border: solid 1px #2a82a3;
	height: 40px;
	border-radius: 4px;
	padding-top: 0.8%;
	font-size: 12pt;
	box-shadow: 3px 3px 5px silver;
} */

a:hover { 
	text-decoration:none;
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
		
    $("#resetBtn").click(function(){
			var bincome = $("#income1").val();
			var eincome = $("#income2").val();
			var iincome = $("#income3").val();
			var dincome = $("#income4").val();
			var aincome = $("#income5").val();
			var rincome = $("#")
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

		<div class="section">

			<br>

			<!-- <div class="navbar navbar-default">
				<div class="container-fluid">
					<ul class="nav navbar-nav">
						<li>
							<a class="tabmenu lactive" href="/jsmi/views/main2/tax/vatDetail.jsp">
								부가가치세
							</a>
						</li>
						
						<li>
							<a class="tabmenu" href="/jsmi/views/main2/tax/generalIncomeTax/generalIncomeTax.jsp">
								종합소득세
							</a>
						</li>
					</ul>
				</div>
			</div>
			
			<div class="navbar navbar-default">
				<div class="container-fluid">
					<ul class="nav navbar-nav">
						<li>
							<a class="tabmenu lactive">
								총소득세
							</a>
						</li>
						
						<li>
							<a class="tabmenu" href="/jsmi/views/main2/tax/generalIncomeTax/generalIncomeTax3.jsp">
								소득세계산
							</a>
						</li>
					</ul>
				</div>
			</div> -->

			<br>
			<br>

			<form>
			<div class="panel-group">
				<div class="panel panel-default">
					<div class="panel-heading" id="colbtn1" style="cursor:pointer">
						<h4 class="panel-title">
							<a> 1. 종합 소득 금액</a>
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
										<td class="taxtd2"><input type="text" placeholder="사업소득" id="income1"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">경비</td>
										<td class="taxtd2"><input type="text" placeholder="사업소득필요경비" id="cost1"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">근로소득</td>
										<td class="taxtd2"><input type="text" placeholder="근로소득" id="income2"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">이자소득</td>
										<td class="taxtd2"><input type="text" placeholder="이자소득" id="income3"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">배당소득</td>
										<td class="taxtd2"><input type="text" placeholder="배당소득" id="income4"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">연금소득</td>
										<td class="taxtd2"><input type="text" placeholder="연금소득" id="income5"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">부동산임대소득</td>
										<td class="taxtd2"><input type="text" placeholder="부동산임대소득" id="income6"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">경비</td>
										<td class="taxtd2"><input type="text" placeholder="임대소득필요경비" id="cost2"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">기타소득</td>
										<td class="taxtd2"><input type="text" placeholder="기타소득" id="income7"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">경비</td>
										<td class="taxtd2"><input type="text" placeholder="기타소득필요경비" id="cost3"> 원</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
				<div class="panel panel-default">
					<div class="panel-heading" id="colbtn2" style="cursor:pointer">
						<h4 class="panel-title">
							<a id="col2"> 2. 종합 소득 공제</a>
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
										<td class="taxtd2"><input type="text"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">추가공제 경로우대(인당 100만원), 장애인(인당 200만원),
											부녀자(50만원), 한부모(100만원)</td>

										<td class="taxtd2"><input type="text"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">국민연금보험공제액</td>
										<td class="taxtd2"><input type="text"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">기타 보험료 공제액</td>
										<td class="taxtd2"><input type="text"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">소기업 상공인 공제부금 공제액</td>
										<td class="taxtd2"><input type="text"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">기타 공제액</td>
										<td class="taxtd2"><input type="text"> 원</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
				<div class="panel panel-default">
					<div class="panel-heading" id="colbtn3" style="cursor:pointer">
						<h4 class="panel-title">
							<a id="col3"> 3. 세액 공제 항목</a>
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
										<td class="taxtd2"><input type="text"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">자녀세액공제 1~2명 (1명당 15만원) / 2명 초과 (30만원 +
											2명 초과 1명당 20만원)</td>
										<td class="taxtd2"><input type="text"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">기타세액공제액</td>
										<td class="taxtd2"><input type="text"> 원</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
				
				<div class="panel panel-default">
					<div class="panel-heading" id="colbtn4" style="cursor:pointer">
						<h4 class="panel-title">
							<a id="col4"> 4. 기타항목</a>
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
										<td class="taxtd2"><input type="text"> 원</td>
									</tr>

									<tr>
										<td class="taxtd1">기납부세액 (중간예납세액, 수시부과세액, 원천징수세액 등)</td>
										<td class="taxtd2"><input type="text"> 원</td>
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
								<input id="calBtn" type="button" value="계산하기">
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
					<table class="calTable">
						<tr>
							<th colspan="4" class="calResult">종합 소득세 결과</th>
						</tr>
						
						<tr class="lineTable1">
							<td align="center" class="sumCalTable">총소득 합계</td>
							<td align="right" class="rightTable">총비용 합계 (-)</td>
							<td align="center"  class="sumCalTable"><input type="hidden"></td>
							<td align="center" class="sumTable">종합소득금액</td>
						</tr>
						
						<tr class="lineTable">
							<td align="center" class="sumCalTable">총소득 합계 값</td>
							<td align="right" class="rightTable">총비용 합계 값</td>
							<td align="center" class="sumCalTable"><input type="hidden"></td>
							<td align="center" class="sumTable2">종합소득금액 값</td>
						</tr>
						
						<tr class="lineTable1">
							<td align="center" class="sumCalTable">종합소득금액</td>
							<td align="right" class="rightTable">종합소득공액 (-)</td>
							<td align="center" class="sumCalTable"><input type="hidden"></td>
							<td align="center" class="sumTable">과세표준</td>
						</tr>
						
						<tr class="lineTable">
							<td align="center" class="sumCalTable">종합소득금액 값</td>
							<td align="right" class="rightTable">종합소득공액 값</td>
							<td align="center" class="sumCalTable"><input type="hidden"></td>
							<td align="center" class="sumTable2">과세표준 값</td>
						</tr>
						
						<tr class="lineTable1">
							<td align="center" class="sumCalTable">과제표준</td>
							<td align="center" class="sumCalTable">세율(6%~38%) (*)</td>
							<td align="center" class="sumCalTable">누진공제 (-)</td>
							<td align="center" class="sumTable">산출세액</td>
						</tr>
						
						<tr class="lineTable">
							<td align="center" class="sumCalTable">과제표준 값</td>
							<td align="center" class="sumCalTable">세율 값</td>
							<td align="center" class="sumCalTable">누진공제  값</td>
							<td align="center" class="sumTable2">산출세액 값</td>
						</tr>
						
						<tr class="lineTable1">
							<td align="center" class="sumCalTable">산출세액</td>
							<td align="right" class="rightTable">세액공제(-)</td>
							<td align="center" class="sumCalTable"><input type="hidden"></td>
							<td align="center" class="sumTable">결정세액</td>
						</tr>
						
						<tr class="lineTable">
							<td align="center" class="sumCalTable">산출세액 값</td>
							<td align="right" class="rightTable">세액공제 값</td>
							<td align="center" class="sumCalTable"><input type="hidden"></td>
							<td align="center" class="sumTable2">결정세액 값</td>
						</tr>
						
						<tr class="lineTable1">
							<td align="center" class="sumCalTable">결정세액</td>
							<td align="center" class="sumCalTable">가산세(+)</td>
							<td align="center" class="sumCalTable">기납부세액(-)</td>
							<td align="center" class="sumTable">차감납부세액</td>
						</tr>
						
						<tr class="lineTable">
							<td align="center" class="sumCalTable">결정세액 값</td>
							<td align="center" class="sumCalTable">가산세 값</td>
							<td align="center" class="sumCalTable">기납부세액 값</td>
							<td align="center" class="sumTable2">차감납부세액 값</td>
						</tr>					 	
					</table>
				</div>				
				<br><br><br><br>
				
			</div>
		</div>

	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>
</html>