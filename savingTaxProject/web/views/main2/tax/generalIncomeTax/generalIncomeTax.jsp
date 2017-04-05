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
}

.gitTableth {
	border-bottom: 3px solid #2a82a3;
	font-family: ssangmunDong !important;
	padding-left: 38%;
	font-size: 27pt;
}

.imcome {
	padding-top : 2%;
	padding-left: 15%;
	padding-right: 13%;
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

.imcomeCon {
	padding-top : 2%;
	padding-bottom: 5%;
	border-bottom: 1px solid #ddd;
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

.imcomeConBank {
	padding-top : 2%;
	padding-bottom: 5%;
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 13pt;
	text-align: center;
}

.imcometitle {
	padding-left: 3%;
	padding-top: 2%;
	padding-right: 10%;
	border-top: 1px solid #2a82a3;
	border-bottom: 1px solid #2a82a3;
	border-right: 1px solid #2a82a3;
	font-family: computer !important;
	font-size: 13pt;
	text-align: center;	
}

.imcometitle2 {
	padding-top: 2%;
	border-top: 1px solid #2a82a3;
	border-bottom: 1px solid #2a82a3;
	font-family: computer !important;
	font-size: 13pt;
	text-align: center;	
}

.imcomeConBank2 {
	padding-top : 2%;
	padding-bottom: 5%;
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 13pt;
	text-align: center;
	border-bottom: 1px solid #ddd;
}

.imcomeConMongo {
	padding-top : 2%;
	padding-bottom: 4%;
	padding-left: 16%;
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 13pt;
}

.imcomeConMoningo {
	padding-top : 2%;
	padding-bottom: 4%;
	padding-left: 13.5%;
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 13pt;
}

#checkBtn {
	border: none;
	border-radius: 4px;
	font-family: Binggrae !important;
	background-color: darkorange;
	color: white;
	text-align: center;
	width: 5%;
	height : 30px;
	margin-right: 2%;
	margin-top: 1.3%;
	
}

#calBtn {
	border: none;
	border-radius: 4px;
	font-family: Binggrae !important;
	background-color: red;
	color: white;
	text-align: center;
	width: 10%;
	height : 30px;
	margin-right: 2%;
	margin-top: 1.7%;
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
			</div>
			
			<br><br>
			
			<div>
				<table class="gitTable">
					<thead class="gitTablethead">
						<tr class="gitTablethtr">
							<th colspan="8" class="gitTableth">총 소득 계산</th>
						</tr>
					</thead>
					
					<tbody>						
						<tr>
							<td colspan="4" class="imcome">금융소득</td>
							<td colspan="4" class="imcomeModify">2천만원 이상 종합소득, 금융소득금액 = 이자소득 - 배당소득</td>
						</tr>
						
						<tr>
							<td class="imcomeConBank">이자소득</td>
							<td class="imcomeConBank"><input type="text"> 원</td>
							<td class="imcomeConBank"> + </td>
							<td class="imcomeConBank">배당소득</td>
							<td class="imcomeConBank"><input type="text"> 원</td>
							<td class="imcomeConBank"> = </td>
							<td class="imcomeConBank">금융소득금액</td>
							<td class="imcomeConBank"><input type="text"> 원</td>
						</tr>
						
						<tr>
							<td colspan="8" align="right"><input type="button" value="입력" id="checkBtn"></td>
						</tr>
					</tbody>				
				</table>
			</div>
			
			<br><br><br><br>
			
			<div>
				<table class="gitTable">					
					<tbody>												
						<tr>
							<td class="imcometitle">2천만원 이하 종합소득 해당 없음</td>
							<td class="imcometitle2">금융소득 = (이자소득 + 배당소득) * (이자소득세(14%) + 지방세(1.4%))</td>
						</tr>
						
						<tr>
							<td class="imcomeConBank2">금융소득금액</td>
							<td class="imcomeConBank2"><input type="text"> 원</td>
						</tr>
						
						<tr>
							<td colspan="8" align="right"><input type="button" value="입력" id="checkBtn"></td>
						</tr>
					</tbody>				
				</table>
			</div>
			
			<br><br><br><br>
			
			<div>
				<table class="gitTable">
					<thead class="gitTablethead">
						<tr class="gitTablethtr">
							<th colspan="8" class="gitTableth"></th>
						</tr>
					</thead>
					
					<tbody>						
						<tr>
							<td colspan="4" class="imcome">사업소득</td>
							<td colspan="4" class="imcomeModify">사업 소득 금액 = 종합소득 - 필요경비</td>
						</tr>
						
						<tr>
							<td class="imcomeCon">종합소득</td>
							<td class="imcomeCon"><input type="text"> 원</td>
							<td class="imcomeCon"> - </td>
							<td class="imcomeCon">필요경비</td>
							<td class="imcomeCon"><input type="text"> 원</td>
							<td class="imcomeCon"> = </td>
							<td class="imcomeCon">사업소득금액</td>
							<td class="imcomeCon"><input type="text"> 원</td>
						</tr>
						
						<tr>
							<td colspan="8" align="right"><input type="button" value="입력" id="checkBtn"></td>
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
							<td class="imcomeWork">근로소득</td>
							<td class="imcomeModifyWork">근로 소득 금액 : 무조건 과세</td>
						</tr>
						
						<tr>
							<td class="imcomeConMon">근로소득금액</td>
							<td class="imcomeConMonin"><input type="text"> 원</td>
						</tr>
						
						<tr>
							<td colspan="8" align="right"><input type="button" value="입력" id="checkBtn"></td>
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
							<td class="imcomepen">연금소득</td>
							<td class="imcomeModifypen">공적연금 종합과세, 사적 연금 1200만원 이상 종합과세</td>
						</tr>
						
						<tr>
							<td class="imcomeConMon">연금소득금액</td>
							<td class="imcomeConMonin"><input type="text"> 원</td>
							<!-- 1200만원 이상이므로 자동 과세됩니다. 내용뜨게 -->
						</tr>
						
						<tr>
							<td colspan="8" align="right"><input type="button" value="입력" id="checkBtn"></td>
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
							<td class="imcomeatc">기타소득</td>
							<td class="imcomeModifyatc">기타 소득금액 300만원 이상시 종합과세</td>
						</tr>
						
						<tr>
							<td class="imcomeConMon">기타소득금액</td>
							<td class="imcomeConMonin"><input type="text"> 원</td>
						</tr>
						
						<tr>
							<td colspan="8" align="right"><input type="button" value="입력" id="checkBtn"></td>
						</tr>
					</tbody>				
				</table>
			</div>
			
			
			<br><br><br><br>
			
			<div>
				<table class="gitTable">
					<thead class="gitTablethead">
						<tr class="gitTablethtr">
							<th colspan="5" class="gitTableth">총 소득 결과</th>
						</tr>
					</thead>
					
					<tbody>						
						<tr>
							<td class="imcomeRe">금융소득</td>
							<td class="imcomeRe">사업소득</td>
							<td class="imcomeRe">근로소득</td>
							<td class="imcomeRe">연금소득</td>
							<td class="imcomeRe">기타소득</td>
						</tr>
						
						<tr>
							<td class="imcomeCon"><input type="text" readonly value="금융소득"></td>
							<td class="imcomeCon"><input type="text" readonly value="사업소득"></td>
							<td class="imcomeCon"><input type="text" readonly value="근로소득"></td>
							<td class="imcomeCon"><input type="text" readonly value="연금소득"></td>
							<td class="imcomeCon"><input type="text" readonly value="기타소득"></td>
						</tr>
						
						<tr>
							<td colspan="8" align="right"><input type="button" value="입력" id="checkBtn"></td>
						</tr>
					</tbody>				
				</table>
			</div>
			
			<div>
				<table class="gitTable">
					<thead class="gitTablethead">
						<tr class="gitTablethtr">
							<th colspan="2" class=""></th>
						</tr>
					</thead>
					
					<tbody>												
						<tr>
							<td class="imcomeConMongo">총 소득 금액</td>
							<td class="imcomeConMoningo"><input type="text"> 원</td>
						</tr>
						
						<tr>
							<td colspan="8" align="right"><input type="button" value="소득세 계산하기" id="calBtn"></td>
						</tr>
					</tbody>				
				</table>
				<br><br><br>
			</div>
		</div>
	</div>
	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>
</html>