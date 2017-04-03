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


<script type="text/javascript">
	$(function() {
		$('#edrop > li > a').click(function() {
			console.log("Addfda");
			$('#menu1').html($(this).text() + "<span class='caret'></span>");
			if ($(this).text() == "직접입력") {
				$('#email2').val('');
			} else {
				$('#email2').val($(this).text());
			}
		})
	})
</script>
<title>insertVat</title>
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
.vathead {
font-size : 2em;
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
						<li><a class="tabmenu lactive"
							href="#">종합소득세 </a></li>
						<li><a class="tabmenu"
							href="/jsmi/views/main2/taxcalculation/vatCalculation.jsp">부가가치세</a></li>
							
					</ul>
				</div>
			</div>
		<form>
		<table class = "table table-condensed" align="center">
		<tr><td colspan = "6" class = "vathead"> &nbsp; &nbsp;&nbsp;"<%=loginUser.getPname() %>"  님의 부가가치세 계산 페이지입니다. </td></tr>
		<tr style = "height : 20px;"> </tr>
		<tr><td>매출 세액</td><td></td><td><span class = "money" id = "output"></span>원</td></tr>
		<tr><td>매입 세액</td><td></td><td><span class = "money" id = "input"></span>원</td></tr>
		<tr><td>공제 세액</td><td></td><td></td></tr>
		<tr><td>- 세금 계산서 수취분</td><td><input name = "receipt"></td><td></td></tr>
		<tr><td>- 신용카드 매출전표 발행분</td><td><input name = "card"> </td><td></td></tr>
		<tr><td></td><td></td><td><span class = "money" id = "deduct"></span></td></tr>
		<tr><td>가산 세액</td><td></td><td><span class = "money" id = "charge"></span>원</td></tr>
		<tr><td>납부할 총 부가가치세액</td><td></td><td><span class = "money" id = "vat"></span>원</td></tr>
		<tr style = "height : 20px;"></tr>
		<tr><td colspan = "6" style = "float : right;"><button onclick="calVat();">계산</button><input type = "submit" value = "저장"> </td></tr>
		</table>
		</form>
		<script type="text/javascript">
		function calVat(){
			var output = $("#output").val();
			var input = $("#input").val();
			var receipt = $("#receipt").val();
			var card = $("#card").val();
			var deduct = $("#deduct").val();
			var charge = $("#charge").val();
			$("#vat").val(output - (input + receipt + card + deduct) + charge); 
		}
		</script>
		</div>

	</div>
	
	
	
	
	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>
</html>