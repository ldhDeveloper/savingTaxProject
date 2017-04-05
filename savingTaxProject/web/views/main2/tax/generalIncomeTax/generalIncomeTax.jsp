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

.gitTable {
	width: 1140px;
	border
}

.gitTableth {
	border-bottom: 3px solid #2a82a3;
	font-family: ssangmunDong !important;
	text-align: center;
	font-size: 20pt;
}

.imcome {
	padding-top : 2%;
	border-right: 1px solid #2a82a3;
	border-bottom: 1px solid #2a82a3;
	font-family: computer !important;
	font-size: 14pt;
	text-align: center;
}

.imcomeModify {
	padding-top : 2%;
	border-bottom: 1px solid #2a82a3;
	font-family: computer !important;
	font-size: 14pt;
	text-align: center;
}

.imcomeCon {
	padding-top : 2%;
	padding-bottom: 2%;
	border-bottom: 1px solid #ddd;
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 13pt;
	text-align: center;
	
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
			
			<div>
				<table class="gitTable">
					<thead class="gitTablethead">
						<tr class="gitTablethtr">
							<th colspan="8" class="gitTableth">총 수입 금액 계산</th>
						</tr>
					</thead>
					
					<tbody>
						<tr>
							<td colspan="4" class="imcome">사업소득</td>
							<td colspan="4" class="imcomeModify">사업 소득 금액 = 종합소득 - 필요경비</td>
						</tr>
						
						<tr>
							<td class="imcomeCon">종합소득</td>
							<td class="imcomeCon"><input type="text"></td>
							<td class="imcomeCon">-</td>
							<td class="imcomeCon">필요경비</td>
							<td class="imcomeCon"><input type="text"></td>
							<td class="imcomeCon">=</td>
							<td class="imcomeCon">소득금액</td>
							<td class="imcomeCon"><input type="text"></td>
						</tr>
					</tbody>
				
					
				<!--<tr class="gittr">
						<td class="gittd1">과세표준</td>
						<td class="gittd">종합소득금액 - 소득공제</td>
						<td class="gittd">과세표준 계산 식이 들어가는 곳</td>
					<tr>
					
					<tr class="gittr">
						<td class="gittd1">산출세액</td>
						<td class="gittd1">과세표준 * 세율 - 누진공제액</td>
						<td class="gittd">산출세액 계산식이 들어가는 곳</td>
					<tr>
					
					<tr class="gittr">
						<td class="gittd1">세액감면</td>
						<td class="gittd1">산출세액 * 감면 대상 사업 소득 금액 / 종합소득금액 * 감면율</td>
						<td class="gittd">산출세액이 나와야할곳</td>
					<tr>
					
					<tr class="gittr">
						<td class="gittd1">세액공제 / 세액감면</td>
						<td class="gittd">세액공제 / 세액감면이 나와야할곳</td>
					<tr>
					
					<tr class="gittr">
						<td class="gittd1">가산세</td>
						<td class="gittd">가산세가 나와야할곳</td>
					<tr>
					
					<tr class="gittr">
						<td class="gittd1">기납부세액</td>
						<td class="gittd">기납부세액이 나와야할곳</td>
					<tr> -->
				</table>
			</div>

			<%-- <table class="table table-condensed">
				<tr>
					<td></td>
					<td>&nbsp; &nbsp;&nbsp;"<%=loginUser.getPname()%>" 님의 종합소득세 정보창입니다.
					</td>
				</tr>
				<tr>
					<td>년도 현재까지의 부가가치세 입니다.</td>
					<td></td>
				</tr>
				<tr>
					<td>매출 세액</td>
					<td>원</td>
				</tr>
				<%
					if (loginUser.getTaxtype() == 1) {
				%>
				<tr>
					<td>매입 세액</td>
					<td>원</td>
				</tr>
				<%
					}
				%>
				<tr>
					<td>공제 세액</td>
					<td>원</td>
				</tr>
				<tr>
					<td>가산 세액</td>
					<td>원</td>
				</tr>
				<tr>
					<td>납부할 총 부가가치세액</td>
					<td>원</td>
				</tr>
			</table>
			
			<div style="height: 100px;"></div>
			
			<button style="float: right;" onclick="location.href='/jsmi/views/main2/tax/insertVat.jsp'">
				부가가치세계산
			</button> --%>
		</div>
	</div>
	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>
</html>