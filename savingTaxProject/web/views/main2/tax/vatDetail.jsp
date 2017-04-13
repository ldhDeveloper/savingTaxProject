<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,diary.model.vo.Diary, java.util.*" %>
	
<%
	Date day = new GregorianCalendar().getTime();
	int quarter = 0;
	
%>
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


<title> 절세미인 - 부가가치세 정산내역</title>

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
	font-size: 20pt;
}

.gitTableth {
	border-bottom: 3px solid #2a82a3;
	font-family: ssangmunDong !important;
	padding-left: 40%;
	font-size: 20pt;
}

.im {
	padding-top : 2%;
	padding-left: 24.5%;
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
	font-size: 15pt;
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
			
			<div id="yearlabel" align="center">
				<table>
					<tr style="text-align: center; font-size:42pt;">
					<td colspan ="2"><label id="year"><%=day.getYear() + 1900%>
					</label>
					<label>년</label><%
						String squarter = "";
					if(loginUser.getTaxType() != null) if(loginUser.getTaxType().equals("일반과세자")) {
						
						if (day.getMonth() < 6){
							quarter = 1;
						squarter = "상";
						}else{
							quarter = 2;
							squarter = "하";
						}
				%>
					<label id="quarter"><%=squarter%></label><label>반기</label></td>
					<%} %>
					</tr>
					<tr style = "font-size:16pt;">
					<td>	다른 분기 조회 &nbsp; </td>
					<td colspan="2">
						<img src="/jsmi/images/main2/arrow2.png" onclick="pyear();">
						<label id="searchY"><%=day.getYear() + 1900%>
						</label><label>년</label>
						<img src="/jsmi/images/main2/arrow.png" onclick="myear();"> 
					  
						<%if(loginUser.getTaxType().equals("일반과세자")){ %>
						<img src="/jsmi/images/main2/arrow2.png" onclick="firstHalf();"><label id=searchQ>상</label><label>반기</label><img src="/jsmi/images/main2/arrow.png" onclick="secondHalf();">						 
						<%} %>
					</td>
				</tr>
				</table>
				
			</div>
		
			<br>
			<br>
			
			<div class="selectBtn1">
				<button class="selectBtn2" id="selectBtn2" onclick ="vatLoad();">조회</button>
			</div>
			
			<br><br><br><br>
			
			<% if(loginUser.getTaxType().equals("일반과세자")) { //일반과세자처리용 테이블 %>
			<div>
				<table class="gitTable">
					<thead class="gitTablethead">
						<tr class="gitTablethtr" >
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
							<td class="imcomeCon4">총계 세액</td>
							<td class="imcomeCon"><input name="totalvat" type="number" id="val" readonly> 원</td>
						</tr>
					</tbody>				
				</table>
			</div>
			
			<br><br>
			
			<div class="selectBtn6">
				<button class="selectBtn3" onclick="print();">문서로 받기</button>
			</div>
			
			<br><br>
			<% }else if(loginUser.getTaxType().equals("간이과세자")) { //간이과세자 처리용 테이블%>
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
							<td class="imcomeCon1">소매, 재생용자료 수집판매, 음식점업</td>
							<td class="imcomeCon1">세액</td>
						</tr>
						
						<tr>
							<td class="imcomeCon2"><input name="out2" type="number" id="val" readonly> 원</td>
							<td class="imcomeCon2"><input name="out2vat" type="number" id="val" readonly> 원</td>
						</tr>
						
						<tr>
							<td class="imcomeCon1">제조, 농, 임, 어업, 숙박, 운수 및 통신업</td>
							<td class="imcomeCon1">세액</td>
						</tr>
						
						<tr>
							<td class="imcomeCon2"><input name="out3" type="number" id="val" readonly> 원</td>
							<td class="imcomeCon2"><input name="out3vat" type="number" id="val" readonly> 원</td>
						</tr>
						
						<tr>
							<td class="imcomeCon1">건설, 부동산, 그 밖의 서비스업</td>
							<td class="imcomeCon1">세액</td>
						</tr>
						
						<tr>
							<td class="imcomeCon2"><input name="out4" type="number" id="val" readonly> 원</td>
							<td class="imcomeCon2"><input name="out4vat" type="number" id="val" readonly> 원</td>
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
							<td class="im">공제세액</td>
							<td class="imModify">매입세액 = 세금계산서 + 의제 매입 세액 공제 </td>
						</tr>
						
						<tr>
							<td class="imcomeCon1">매입세금계산서 등 수취세액공제</td>
							<td class="imcomeCon1">세율</td>
						</tr>
						
						<tr>
							<td class="imcomeCon2"><input name="in1" type="number" id="val" readonly> 원</td>
							<td class="imcomeCon2"><input name="invat1" type="number" id="val" readonly> 원</td>
						</tr>
						
						<tr>
							<td class="imcomeCon1">의제매입세액공제</td>
							<td class="imcomeCon1">세율</td>
						</tr>
						
						<tr>
							<td class="imcomeCon2"><input name="in2" type="number" id="val" readonly> 원</td>
							<td class="imcomeCon2"><input name="invat2" type="number" id="val" readonly> 원</td>
						</tr>
						
						<tr>
							<td class="imcomeCon1">신용카드 매출전표 등 발행 세액공제</td>
							<td class="imcomeCon1">세율</td>
						</tr>
						
						<tr>
							<td class="imcomeCon2"><input name="in3" type="number" id="val" readonly> 원</td>
							<td class="imcomeCon2"><input name="invat3" type="number" id="val" readonly> 원</td>
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
			<% } %>	
		</div>
		
		
		</div>
		
		<script type="text/javascript">
			//서식 출력시 들어가야되는 변수들
			
			//일반 과세자용 변수 
			
			var gout1 = 0; //세금계산서분
			var gout1vat = 0;
			var gout2 = 0;	//신용카드분
			var gout2vat = 0;
			var gout3 = 0;	// 기타 분
			var gout3vat =0;
		
			//매입
			var gin1= 0; //세금계산서분
			var gin1vat =0;
			var gin2 = 0;
			var gin3vat = 0;
			var gin3 = 0;
			var gin3vat = 0;	
			var gin4 = 0;
			var gin4vat = 0;
			//간이 과세자용 변수
				var out = 0;
				var outvat = 0;
				var in1 = 0;
				var in2 = 0;
				var in3 = 0;
				var invat1 = 0;
				var invat2 = 0;
				var invat3 = 0;
				var x = 0;  //업종별 부가가치율 곱셈용이라  x로 표기
				var tnum = ""; //tag넘버 구분용
			//공통 변수
			var pno =0;
			var year = 0;
			var quarter = <%=quarter%>;
			var totalout = 0;	
			var totaloutvat = 0;
			var totalin = 0; //매입총함
			var totalinvat = 0;
			var totalvat = 0;
			var deem = 0; //의제매입세액공제율
				
		function vatLoad(){

			 gout1 = 0; //세금계산서분
			 gout1vat = 0;
			 gout2 = 0;	//신용카드분
			 gout2vat = 0;
			 gout3 = 0;	// 기타 분
			 gout3vat =0;
			 totalout = 0;	//총 매출가액
			 totaloutvat = 0;
			//매입
			 gin1= 0; //세금계산서분
			 gin1vat =0;
			 gin2 = 0;
			 gin3vat = 0;
			 gin3 = 0;
			 gin3vat = 0;
			 
			 totalin = 0; //매입총함
			 totalinvat = 0;
			//총 부가가치세
			 totalvat = 0;
			 switch("<%= loginUser.getWname()%>"){
				case "음식점" : deem = 8/108;  break;
				case "제조업" : deem = 4/104; break;
				}
			
			 pno = <%=loginUser.getPno()%>;
			
			 year = Number($("#searchY").text());
			$.ajax({
			url : "/jsmi/vview",
			type : "post",
			data :  {pno:pno, year:year, quarter:quarter},
			dataType : "json",
			success: function(data){ 
						var jsonObj = JSON.stringify(data);
						var jsonArr = JSON.parse(jsonObj);			
			//매출
			$("#year").text($("#searchY").text());
			
			if(<%=loginUser.getTaxType().equals("일반과세자")%>){ //일반과세자 처리용 
	
			for(var i in jsonArr.tax){
				switch(decodeURIComponent(jsonArr.tax[i].anm)){
					case "매출" : 
							switch(decodeURIComponent(jsonArr.tax[i].proof_type)){
								case "세금계산서(수기)" :
								case "세금계산서(전자)" 
													: gout1 +=  parseInt(jsonArr.tax[i].cost); break;	
								case "카드매출전표" : 
								case "현금영수증" : 	
												gout2 += parseInt(jsonArr.tax[i].cost); break;
								default : 
									gout3 += parseInt(jsonArr.tax[i].cost); break;
								}  break;
					case "매출원가" : if("<%=loginUser.getCtype()%>")
									gin2 +=  parseInt(jsonArr.tax[i].cost); break;	
					case "급여" :
					case "퇴직급여" :
					case "복리후생비" :
					case "임차료" :
					case "여비교통비" :
					case "차량유지비" :
					case "사무용품비" : switch(decodeURIComponent(jsonArr.tax[i].proof_type)){
										case "현금영수증" :					
										case "신용카드매출전표" :
											gin4 += parseInt(jsonArr.tax[i].cost);				
										case "세금계산서" :
														 gin1 +=  parseInt(jsonArr.tax[i].cost); break;	
										}  break;	
				}
			}
			 gout1vat = gout1/10;
			 gout2vat = gout2/10;
			 gout3vat =gout3/10;
			 totalout = gout1 +gout2 +gout3;	
			 totaloutvat = totalout/10;
			 gin1vat = gin1/10;
			 gin2vat = parseInt(gin2 * deem); 
			 gin3 = gout2;
			 gin3vat = parseInt(gout2vat * 0.13);
			 gin4vat = gin4 * 0.01; 
			 totalin = gin1 + gin2;
			 totalinvat = gin1vat+gin2vat;
			 totalvat = totaloutvat - totalinvat - gin3vat;
			
			$("input[name=out1]").val(gout1);
			$("input[name=out1vat]").val(gout1vat);
			$("input[name=out2]").val(gout2);
			$("input[name=out2vat]").val( gout2vat);
			$("input[name=out3]").val(gout3);
			$("input[name=out3vat]").val( gout3vat);
			$("input[name=totalout]").val(totalout);
			$("input[name=totaloutvat]").val(totalout/10);
			$("input[name=in1]").val(gin1);
			$("input[name=invat1]").val(gin1vat);
			$("input[name=in2]").val(gin2);
			$("input[name=invat2]").val(gin2vat);
			$("input[name=totalin]").val(totalin);
			$("input[name=totalinvat]").val(totalinvat); 
			$("input[name=in3]").val(gin3);
			$("input[name=in3vat]").val(gin3vat);
			$("input[name=totalvat]").val(totalvat);
			$("#quarter").text($("#searchQ").text());
			}else{ //간이과세자 처리용 함수
				 out = 0;
				 outvat = 0;
				 in1 = 0;
				 in2 = 0;
				 in3 = 0;
				 invat1 = 0;
				 invat2 = 0;
				 invat3 = 0;
				 x = 0;  //업종별 부가가치율 곱셈용이라  x로 표기
				 tnum = ""; //tag넘버 구분용
				 
				for(var i in jsonArr.tax){
					switch(decodeURIComponent(jsonArr.tax[i].anm)){
					case "매출" :
						if(decodeURIComponent(jsonArr.tax[i].proof_type) =="현금영수증"
							|| decodeURIComponent(jsonArr.tax[i].proof_type)=="신용카드매출전표"){
							 in3 += parseInt(jsonArr.tax[i].cost);
							}  
							out += parseInt(jsonArr.tax[i].cost); break;
					case "매출원가" : 
							in2 += parseInt(jsonArr.tax[i].cost);
							break; //의제매입세액
					default : 
							in1 += parseInt(jsonArr.tax[i].cost); break;//의제매입세액을 뺀 매입세액
					}
				}
				switch ("<%=loginUser.getWname()%>"){
				case "전기": x = 0.005; tnum = "1";
						break;
				case "음식점": x= 0.01; tnum = "2";
						break;
				case "제조업": x= 0.02; tnum = "3";
						break;
				case "기타": x= 0.03; tnum = "4";
						break;
				}
				if(!(<%= loginUser.getCtype().equals("2")%> || <%= loginUser.getCtype().equals("3")%>)){
					in1 += in2;
				}
				
				outvat = in1 * x;
				invat1 = in1 * x;
				invat2 = parseInt(in2 * deem);
				invat3 = in3 * 0.013;
				totalinvat = invat1 + invat2+ invat3;
				totalvat = outvat - totalinvat;
				//매출세액 계산
				$("input[name= out"+tnum+"]").val(out);
				$("input[name= out"+tnum+"vat]").val(outvat);
				$("input[name=totalout]").val(out);
				$("input[name=totaloutvat]").val(outvat);
				//공제세액 계산
				$("input[name=in1]").val(in1);
				$("input[name=invat1]").val(invat1);
				if(<%= loginUser.getCtype().equals("2")%> || <%= loginUser.getCtype().equals("3")%>){
				$("input[name=in2]").val(in2); 
				$("input[name=invat2]").val(invat2);
				}
				$("input[name=in3]").val(in3);
				$("input[name=invat3]").val(invat3);
				$("input[name=totalinvat]").val(totalinvat);
				$("input[name=totalvat]").val(totalvat);
			} // 간이과세자 처리 메소드 끝
			//날짜 재정리
			
			},
			error: function(request,status,error){
		        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		    }
		});
		}
		function pyear(){
		var year = parseInt($("#searchY").text());
		if (year < <%=day.getYear()+1900%>){
		$("#searchY").text((year+1 ));	
		}
		}
		
		function myear(){
			var year = parseInt($("#searchY").text());	
			$("#searchY").text((year-1 ));	
		}
		function firstHalf(){
		
		$('#searchQ').html('상');
		quarter= 1;
		
		}
		function secondHalf(){
			$('#searchQ').html('하');
			quarter = 2;
			
		}
		function print(){
			 /*
			 일반과세자
			 gout1   //세금계산서분
			 gout1vat  
			 gout2  	//신용카드분
			 gout2vat  
			 gout3  	// 기타 분
			 gout3vat 
			//매입
			 gin1 //세금계산서분
			 gin1vat
			 gin2 
			 gin3vat
			 gin3
			 gin3vat
			//간이 과세자용 변수
				 out
				 outvat
				 in1
				 in2 
				 in3
				 invat1
				 invat2 
				 invat3 
			//공통 변수
			 pno 
			 year 
			 quarter 
			 totalout 	
			 totaloutvat 
			 totalin  //매입총함
			 totalinvat 
			 totalvat */
		
			$.ajax({
				url  : "/jsmi/createform",
				type : "post",
				data : 	
				<%if (loginUser.getTaxType().equals("일반과세자")) {%>
					{pno:pno, year:year, quarter:quarter, gout1:gout1, gout1vat:gout1vat, gout2:gout2,
						gout2vat:gout2vat, gout3:gout3, gout3vat:gout3vat, gin1:gin1, gin1vat:gin1vat, gin4:gin4, gin4vat:gin4vat, 
						gin2:gin2, gin2vat:gin2vat, gin3:gin3, gin3vat:gin3vat,
						totalout:totalout, totaloutvat:totaloutvat, totalin:totalin, totalinvat:totalinvat, totalvat:totalvat}
				<%}else{%>
				 {pno:pno, year:year, quarter:quarter, out:out, outvat:outvat, in1:in1, in2:in2, in3:in3, invat1:invat2, invat2:invat2, 
						invat3:invat3, totalout:totalout, totaloutvat:totaloutvat, totalin:totalin, totalinvat:totalinvat, totalvat:totalvat}
				<%}%>,
				success : function(data){
					location.href = "/jsmi/formdown?fName="+data;
					
				}
				
			});	
		}
		$(function(){
			

		
			vatLoad(); 
			
		});		
		</script>

	<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>
</html>