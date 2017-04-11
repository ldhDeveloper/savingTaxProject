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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript " src="/jsmi/js/main2/bootstrap.min.js"></script>
<script type="text/javascript" src="/jsmi/js/main2/zipcode.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/jsmi/css/common/font.css" type="text/css">
<link rel="stylesheet" href="/css/common/grid.css" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<title>generalIncomeTax</title>

<style type="text/css">
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

.container {
	width: 100%;
}

.panel-heading {
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
}
</style>

<script type="text/javascript">
	$(function(){
		$('.panel-heading').hover(function(){
			$(this).css('cursor', 'pointer');
		})
		$('.panel-heading').click(function(){
			var cname = $(this).siblings("div:first").attr("class");
			if(cname =="panel-collapse collapse"){
				$(this).siblings().attr("class", "panel-collapse collapse in");
			} else {
				$(this).siblings().attr("class", "panel-collapse collapse");
			}			
		})
	})	
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
			<div class="navbar navbar-default">
				<div class="container-fluid">
					<ul class="nav navbar-nav">
						<li><a class="tabmenu lactive"
							href="/jsmi/views/main2/tax/vatDetail.jsp"> 부가가치세 </a></li>

						<li><a class="tabmenu"
							href="/jsmi/views/main2/tax/generalIncomeTax/generalIncomeTax.jsp">
								종합소득세 </a></li>
					</ul>
				</div>
			</div>

			<div class="navbar navbar-default">
				<div class="container-fluid">
					<ul class="nav navbar-nav">
						<li><a class="tabmenu lactive" href="/jsmi/views/main2/tax/generalIncomeTax/generalIncomeTax.jsp"> 총소득세 </a></li>

						<li><a class="tabmenu">
								소득세계산 </a></li>
					</ul>
				</div>
			</div>

			<div class="panel-group" id="accordion">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse1"> 종합 소득 금액 </a>
						</h4>
					</div>
					<div id="collapse1" class="panel-collapse collapse in">
						<div class="panel-body">테이블 들어가는 곳</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse2"> 종합 소득 공제</a>
						</h4>
					</div>
					<div id="collapse2" class="panel-collapse collapse">
						<div class="panel-body">테이블 들어가는 곳</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse3"> 세액공제</a>
						</h4>
					</div>
					<div id="collapse3" class="panel-collapse collapse">
						<div class="panel-body">테이블 들어가는 곳</div>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse3"> 기타 항목</a>
						</h4>
					</div>
					<div id="collapse3" class="panel-collapse collapse">
						<div class="panel-body">테이블 들어가는 곳</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>
</html>