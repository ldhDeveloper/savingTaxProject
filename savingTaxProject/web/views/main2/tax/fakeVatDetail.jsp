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

#yearlabel img {
	display: inline-block;
	height: 26px;
	cursor: pointer;
}

#yearlabel h3 {
	display: inline-block;
}

.gitTable {
	width: 1140px;
	border
}

.gitTableth1 {
	border-bottom: 3px solid red;
	font-family: ssangmunDong !important;
	padding-left: 35%;
	font-size: 25pt;
}

.gitTableth {
	border-bottom: 3px solid #2a82a3;
	font-family: ssangmunDong !important;
	padding-left: 40%;
	font-size: 25pt;
}

.im {
	padding-top : 2%;
	padding-left: 18%;
	padding-right: 7%;
	border-right: 1px solid #2a82a3;
	border-bottom: 1px solid #2a82a3;
	font-family: computer !important;
	font-size: 15pt;
	/* text-align: center; */
}

.imModify {
	padding-top : 2%;
	border-bottom: 1px solid #2a82a3;
	font-family: computer !important;
	font-size: 14pt;
	text-align: center;
}

.imcome {
	padding-top : 2%;
	padding-left: 24%;
	padding-right: 7%;
	border-right: 1px solid #2a82a3;
	border-bottom: 1px solid #2a82a3;
	font-family: computer !important;
	font-size: 15pt;
	/* text-align: center; */
}

.imcomeModify {
	padding-top : 2%;
	border-bottom: 1px solid #2a82a3;
	font-family: computer !important;
	font-size: 14pt;
	text-align: center;
}

.gitarCon1 {
	padding-top : 2%;
	padding-left : 8%;
	padding-right: 8%;
	border-right: 1px solid #2a82a3;
	border-bottom: 1px solid #2a82a3;
	font-family: computer !important;
	font-size: 15pt;
	text-align: center;
}

.gitarCon2 {
	padding-top : 2%;
	border-bottom: 1px solid #2a82a3;
	font-family: computer !important;
	font-size: 14pt;
	text-align: center;
}

.imcome1 {
	padding-top : 2%;
	border-bottom: 1px dashed red;
	font-family: computer !important;
	font-size: 15pt;
	text-align: center;
}

.imcomeCon {
	padding-top : 3%;
	padding-bottom: 3%;
	border-bottom: 1px solid #ddd;
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 13pt;
	text-align: center;
	
}

.imcomeCon4 {
	padding-top : 3%;
	padding-bottom: 3%;
	padding-left: 5%;
	border-bottom: 1px solid #ddd;
	font-family: computer !important;
	font-size: 20pt;
	text-align: right;
}

#val {
	background: -webkit-linear-gradient(aliceblue, white);
	background: -o-linear-gradient(aliceblue, white);
	background: -moz-linear-gradient(aliceblue, white);
	background: linear-gradient(aliceblue, white);
	border: 1px solid #ddd;
	border-radius: 4px;
	padding: 6px;
}

.imcomeCon1 {
	padding-top : 3%;
	padding-bottom: 2%;
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 13pt;
	text-align: center;	
}

.imcomeCon2 {
	padding-bottom: 3%;
	border-bottom: 1px solid #ddd;
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 13pt;
	text-align: center;	
}

.imcomeCon3 {
	padding-top: 2%;
	padding-bottom: 2%;
	border-bottom: 3px solid red;
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 13pt;
	text-align: center;
}

.imcomeWork {
	padding-top : 2%;
	padding-left: 15%;
    padding-right: 9%;
	border-right: 1px solid #2a82a3;
	border-bottom: 1px solid #2a82a3;
	font-family: computer !important;
	font-size: 15pt;
	/* text-align: center; */
}

.imcomeModifyWork {
	padding-left: 15%;
	padding-top : 2%;
	padding-right: 5%;
	border-bottom: 1px solid #2a82a3;
	font-family: computer !important;
	font-size: 14pt;
	/* text-align: center; */
}

.imcomeConMon {
	padding-top : 2%;
	padding-bottom: 4%;
	padding-left: 13.5%;
	border-bottom: 1px solid #ddd;
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 13pt;
}

.imcomeConMonin {
	padding-top : 2%;
	padding-bottom: 4%;
	padding-left: 16%;
	border-bottom: 1px solid #ddd;
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 13pt;
}

.imcomepen {
	padding-top : 2%;
	padding-left: 15%;
    padding-right: 22%;
	border-right: 1px solid #2a82a3;
	border-bottom: 1px solid #2a82a3;
	font-family: computer !important;
	font-size: 15pt;
	/* text-align: center; */
}

.imcomeModifypen {
	padding-left: 15%;
	padding-top : 2%;
	padding-right: 5%;
	border-bottom: 1px solid #2a82a3;
	font-family: computer !important;
	font-size: 14pt;
	/* text-align: center; */
}

.imcomeatc {
	padding-top : 2%;
	padding-left: 15%;
    padding-right: 15%;
	border-right: 1px solid #2a82a3;
	border-bottom: 1px solid #2a82a3;
	font-family: computer !important;
	font-size: 15pt;
	/* text-align: center; */
}

.imcomeModifyatc {
	padding-left: 15%;
	padding-top : 2%;
	padding-right: 5%;
	border-bottom: 1px solid #2a82a3;
	font-family: computer !important;
	font-size: 14pt;
	/* text-align: center; */
}

.imcomeRe {
	padding-top : 2%;
	padding-left: 2%;
	padding-right: 2%;
	font-family: computer !important;
	font-size: 15pt;
	text-align: center;
}

#selyear {
	font-family: ssangmunDong !important;
	color : #2a82a3;
	font-size: 24pt;
	
}

.selectBtn1 {
	padding-left: 47%;
}

.selectBtn6 {
	padding-left: 42%;
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

.selectBtn3 {
	border: none;
	border-radius: 3px;
	border-color: #2a82a3;
	color: white;
	width: 100px;
    height: 30px;
	font-family: Binggrae !important;
	background-color : #2a82a3;
	box-shadow : 3px 3px 5px silver;
}

.selectBtn4 {
	border: none;
	border-radius: 3px;
	border-color: #2a82a3;
	color: white;
	width: 150px;
    height: 50px;
	font-family: Binggrae !important;
	background-color : #2a82a3;
	box-shadow : 3px 3px 5px silver;
}


/* .gittd1{
	border-bottom: 1px solid #ddd;
	height: 40px;
	border-right: 1px solid #ddd;
	text-align: center;
}

.gittd {
	border-bottom:1px solid #ddd;
	height: 40px;
	text-align: center;
	
}

.gittr1 {
	border-top: 1px solid #ddd;
} */
</style>

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
			<div class="navbar navbar-default">
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
			<br><br>
			
			<%-- <div>
				<table>
					<tr>
						<td><%= loginUser.getPname() %>님의 부가가치세 입니다.</td>
					</tr>
				</table>
			</div> --%>
			
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
			
			<br><br><br><br>
			
			<div>
				<table class="gitTable">
					<thead class="gitTablethead">
						<tr class="gitTablethtr">
							<th colspan="2" class="gitTableth">조회되는 항목</th>
						</tr>
					</thead>
					
					<tbody>						
						<tr>
							<td class="imcome">매출세액</td>
							<td class="imcomeModify">매출세액 = 세금계산서 + 신용카드 매출전표 + 기타분</td>
						</tr>
						
						<tr>
							<td class="imcomeCon1">세금계산서</td>
							<td class="imcomeCon1">세액</td>
						</tr>
						
						<tr>
							<td class="imcomeCon2"><input name="out1" type="number" id="val" readonly> 원</td>
							<td class="imcomeCon2"><input name="out1vat" type="number" id="val" readonly> 원</td>
						</tr>
						
						<tr>
							<td class="imcomeCon1">신용카드 매출전표</td>
							<td class="imcomeCon1">세액</td>
						</tr>
						
						<tr>
							<td class="imcomeCon2"><input name="out2" type="number" id="val" readonly> 원</td>
							<td class="imcomeCon2"><input name="out2vat" type="number" id="val" readonly> 원</td>
						</tr>
						
						<tr>
							<td class="imcomeCon1">기타분</td>
							<td class="imcomeCon1">세액</td>
						</tr>
						
						<tr>
							<td class="imcomeCon2"><input name="out3" type="number" id="val" readonly> 원</td>
							<td class="imcomeCon2"><input name="out3vat" type="number" id="val" readonly> 원</td>
						</tr>
						
						<tr>
							<td class="imcomeCon">매출 세액 합계</td>
							<td class="imcomeCon"><input name="totalout" type="number" id="val" readonly> 원</td>
						</tr>
						
						<tr>
							<td class="imcomeCon">세액</td>
							<td class="imcomeCon"><input name="totaloutvat" type="number" id="val" readonly> 원</td>
						</tr>
					</tbody>				
				</table>
			</div>
			
			<br><br><br><br>
			
			<div>
				<table class="gitTable">
					<thead class="gitTablethead">
						<tr class="gitTablethtr">
							<th colspan="2" class="gitTableth"></th>
						</tr>
					</thead>
					
					<tbody>						
						<tr>
							<td class="im">매입세액</td>
							<td class="imModify">매입세액 = 세금계산서 + 의제 매입 세액 공제 </td>
						</tr>
						
						<tr>
							<td class="imcomeCon1">세금계산서</td>
							<td class="imcomeCon1">세액</td>
						</tr>
						
						<tr>
							<td class="imcomeCon2"><input name="in1" type="number" id="val" readonly> 원</td>
							<td class="imcomeCon2"><input name="invat1" type="number" id="val" readonly> 원</td>
						</tr>
						
						<tr>
							<td class="imcomeCon1">의제매입세액공제</td>
							<td class="imcomeCon1">세액</td>
						</tr>
						
						<tr>
							<td class="imcomeCon2"><input name="in2" type="number" id="val" readonly> 원</td>
							<td class="imcomeCon2"><input name="invat2" type="number" id="val" readonly> 원</td>
						</tr>
						
						<tr>
							<td class="imcomeCon">매입 세액 합계</td>
							<td class="imcomeCon"><input name="totalin" type="number" id="val" readonly> 원</td>
						</tr>
						
						<tr>
							<td class="imcomeCon">세액</td>
							<td class="imcomeCon"><input name="totalinvat" type="number" id="val" readonly> 원</td>
						</tr>
					</tbody>				
				</table>
			</div>
			
			<br><br><br><br>
			
			<div>
				<table class="gitTable">
					<thead class="gitTablethead">
						<tr class="gitTablethtr">
							<th colspan="2" class="gitTableth"></th>
						</tr>
					</thead>
					
					<tbody>						
						<tr>
							<td class="gitarCon1">기타세액</td>
							<td class="gitarCon2">기타 공제 세액(신용카드 발행분)</td>
						</tr>
						
						<tr>
							<td class="imcomeCon1">기타공제세액</td>
							<td class="imcomeCon1">세액</td>
						</tr>
						
						<tr>
							<td class="imcomeCon2"><input name="in3" type="number" id="val" readonly> 원</td>
							<td class="imcomeCon2"><input name="in3vat" type="number" id="val" readonly> 원</td>
						</tr>
					</tbody>				
				</table>
			</div>
			
			<br><br><br><br>
			
			<div>
				<table class="gitTable">
					<thead class="gitTablethead">
						<tr class="gitTablethtr">
							<th colspan="2" class="gitTableth1">납부 할 총 부가가치 세액</th>
						</tr>
					</thead>
					
					<tbody>												
						<tr>
							<td class="imcomeCon4">총 계</td>
							<td class="imcomeCon"><input name="out1" type="number" id="val" readonly> 원</td>
						</tr>
					</tbody>				
				</table>
			</div>
			
			<br><br>
			
			<div class="selectBtn6">
				<button class="selectBtn3" onclick="print();">문서로 받기</button>
			</div>
			
			<br><br>
			
			<!-- -------------------------------------------------------------- -->
			
			<div>
				<table class="gitTable">
					<thead class="gitTablethead">
						<tr class="gitTablethtr">
							<th colspan="2" class="gitTableth">조회되는 항목</th>
						</tr>
					</thead>
					
					<tbody>						
						<tr>
							<td class="imcome">매출세액</td>
							<td class="imcomeModify">매출세액 = 세금계산서 + 신용카드 매출전표 + 기타분</td>
						</tr>
						
						<tr>
							<td class="imcomeCon1">전기 가스 중기 및 수도사업</td>
							<td class="imcomeCon1">세액</td>
						</tr>
						
						<tr>
							<td class="imcomeCon2"><input name="out1" type="number" id="val" readonly> 원</td>
							<td class="imcomeCon2"><input name="out1vat" type="number" id="val" readonly> 원</td>
						</tr>
						
						<tr>
							<td class="imcomeCon1">제조, 농, 임, 어업, 숙박, 운수 및 통신업</td>
							<td class="imcomeCon1">세액</td>
						</tr>
						
						<tr>
							<td class="imcomeCon2"><input name="out2" type="number" id="val" readonly> 원</td>
							<td class="imcomeCon2"><input name="out2vat" type="number" id="val" readonly> 원</td>
						</tr>
						
						<tr>
							<td class="imcomeCon1">건설, 부동산, 그 밖의 서비스업</td>
							<td class="imcomeCon1">세액</td>
						</tr>
						
						<tr>
							<td class="imcomeCon2"><input name="out3" type="number" id="val" readonly> 원</td>
							<td class="imcomeCon2"><input name="out3vat" type="number" id="val" readonly> 원</td>
						</tr>
						
						<tr>
							<td class="imcomeCon">매출 세액 합계</td>
							<td class="imcomeCon"><input name="totalout" type="number" id="val" readonly> 원</td>
						</tr>
						
						<tr>
							<td class="imcomeCon">세액</td>
							<td class="imcomeCon"><input name="invat1" type="number" id="val" readonly> 원</td>
						</tr>
					</tbody>				
				</table>
			</div>
			
			<br><br><br><br>
			
			<div>
				<table class="gitTable">
					<thead class="gitTablethead">
						<tr class="gitTablethtr">
							<th colspan="2" class="gitTableth"></th>
						</tr>
					</thead>
					
					<tbody>						
						<tr>
							<td class="im">공제세액</td>
							<td class="imModify">매입세액 = 세금계산서 + 의제 매입 세액 공제 </td>
						</tr>
						
						<tr>
							<td class="imcomeCon1">매입세금계산서 등 수취세액공제</td>
							<td class="imcomeCon1">세율</td>
						</tr>
						
						<tr>
							<td class="imcomeCon2"><input name="in1" type="number" id="val" readonly> 원</td>
							<td class="imcomeCon2"><input name="in1vat" type="number" id="val" readonly> 원</td>
						</tr>
						
						<tr>
							<td class="imcomeCon1">의제매입세액공제</td>
							<td class="imcomeCon1">세율</td>
						</tr>
						
						<tr>
							<td class="imcomeCon2"><input name="in2" type="number" id="val" readonly> 원</td>
							<td class="imcomeCon2"><input name="in2vat" type="number" id="val" readonly> 원</td>
						</tr>
						
						<tr>
							<td class="imcomeCon1">신용카드 매출전표 등 발행 세액공제</td>
							<td class="imcomeCon1">세율</td>
						</tr>
						
						<tr>
							<td class="imcomeCon2"><input name="in3" type="number" id="val" readonly> 원</td>
							<td class="imcomeCon2"><input name="in3vat" type="number" id="val" readonly> 원</td>
						</tr>
						
						<tr>
							<td class="imcomeCon">매입 세액 합계</td>
							<td class="imcomeCon"><input name="totalin" type="number" id="val" readonly> 원</td>
						</tr>
						
						<tr>
							<td class="imcomeCon">세액</td>
							<td class="imcomeCon"><input name="totalinvat" type="number" id="val" readonly> 원</td>
						</tr>
					</tbody>				
				</table>
			</div>
			
			<br><br><br><br>
			
			<div>
				<table class="gitTable">
					<thead class="gitTablethead">
						<tr class="gitTablethtr">
							<th colspan="3" class="gitTableth1">납부 할 총 부가가치 세액</th>
						</tr>
					</thead>
					
					<tbody>																
						<tr>
							<td colspan="2" class="imcomeCon4">총 계</td>
							<td class="imcomeCon"><input name="totalvat" type="number" id="val" readonly> 원</td>
						</tr>
					</tbody>				
				</table>
			</div>
			
			<br><br>
			
			<div class="selectBtn6">
				<button class="selectBtn4" onclick="print();">과세 관련 신고 서류 다운로드</button>
			</div>
			
			<br><br><br><br>
		</div>
	</div>
	<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>
</html>