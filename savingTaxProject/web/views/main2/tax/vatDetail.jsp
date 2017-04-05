<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import = "java.util.*,diary.model.vo.Diary"%>
	<% if(request.getAttribute("dlist") != null && request.getAttribute("dlist") instanceof List ){
	List<Diary> dlist = (List<Diary>)request.getAttribute("dlist");
	}%>
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


<title>vatDetail</title>
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

.btngroup {
	float: right;
	position: relative;
	margin-top: -15px;
	margin-right: 10px;
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
						<li><a class="tabmenu"
							href="/jsmi/views/main2/tax/vatDetail.jsp">부가가치세</a></li>
						<li><a class="tabmenu lactive"
							href="/jsmi/views/main2/tax/generalIncomeTax/generalIncomeTax.jsp">종합소득세 </a></li>							
					</ul>
				</div>
			</div>

		<table class = "table table-condensed">
		<tr><td></td><td> &nbsp; &nbsp;&nbsp;"<%=loginUser.getPname() %>"  님의 부가가치세 정보 창입니다. </td></tr>
		<tr><td>년도 현재까지의 부가가치세 입니다.</td><td></td></tr>
		<tr><td>매출 세액(+)</td><td><span></span> 원</td></tr>
		<%if(loginUser.getTaxtype() == 1){ %>
		<tr><td>매입 세액(-)</td><td><span></span> 원</td></tr>
		<tr><td>-공제받지 못할 매입세액</td><td>원</td></tr>
		<tr><td>-사업과 관련없는 지출</td><td><span></span> 원</td></tr>
		<tr><td>-접대비 및 이와 유사한 비용</td><td><span></span> 원</td></tr>
		<tr><td>-면세 사업등 관련</td><td><span></span> 원</td></tr>
		<tr><td>매입 세액 합계</td><td><span></span> 원</td></tr>
		<%}%>
		<tr><td> 기타 공제 세액(-)</td><td>원</td></tr>
		<tr><td>-의제매입 세액공제</td><td><input type="number" step = "1000">원</td></tr>
		<tr><td>-세금계산서등 수취세액 공제</td><td>원</td></tr>
		<tr><td>-전자신고서 이용 세액 공제</td><td>원</td></tr>
		<tr><td>납부할 총 부가가치세액</td><td><span></span>원</td></tr>
		</table>
		<div style = "height:100px;"></div>
		<button style = "float:right;" onclick="location.href='/jsmi/views/main2/tax/insertVat.jsp'">부가가치세 계산</button>

		</div>

	</div>
	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>

</html>