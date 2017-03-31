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
<link rel="stylesheet" href="/css/common.css">
<link rel="stylesheet" href="/jsmi/css/common/font.css" type="text/css">
<link rel="stylesheet" href="/css/common/grid.css" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">
	$(function() {
		$("#pdateid1").click(function() {
			x = 1;
			var y = 200000000;

			var result = x * y;

			$("#x").html(x + "원");

			$("#result").html(result + "원");
		});

		$("#pdateid2").click(function() {
			x = 2;
			var y = 200000000;

			var result = x * y;

			$("#x").html(x + "원");

			$("#result").html(result + "원");
		});

		$("#pdateid3").click(function() {
			x = 3;
			var y = 200000000;

			var result = x * y;

			$("#x").html(x + "원");

			$("#result").html(result + "원");
		});

		$("#pdateid4").click(function() {
			x = 4;
			var y = 200000000;

			var result = x * y;

			$("#x").html(x + "원");

			$("#result").html(result + "원");
		});

		$("#pdateid5").click(function() {
			x = 5;
			var y = 200000000;

			var result = x * y;

			$("#x").html(x + "원");

			$("#result").html(result + "원");
		});

		$("#pdateid6").click(function() {
			x = 6;
			var y = 200000000;

			var result = x * y;

			$("#x").html(x + "원");

			$("#result").html(result + "원");
		});

		$("#pdateid7").click(function() {
			x = 7;
			var y = 200000000;

			var result = x * y;

			$("#x").html(x + "원");

			$("#result").html(result + "원");
		});

		$("#pdateid8").click(function() {
			x = 8;
			var y = 200000000;

			var result = x * y;

			$("#x").html(x + "원");

			$("#result").html(result + "원");
		});

		$("#pdateid9").click(function() {
			x = 9;
			var y = 200000000;

			var result = x * y;

			$("#x").html(x + "원");

			$("#result").html(result + "원");
		});

		$("#pdateid10").click(function() {
			x = 10;
			var y = 200000000;

			var result = x * y;

			$("#x").html(x + "원");

			$("#result").html(result + "원");
		});

		$("#pdateid11").click(function() {
			x = 11;
			var y = 200000000;

			var result = x * y;

			$("#x").html(x + "원");

			$("#result").html(result + "원");
		});

		$("#pdateid12").click(function() {
			x = 12;
			var y = 200000000;

			var result = x * y;

			$("#x").html(x + "원");

			$("#result").html(result + "원");
		});

	});
</script>

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
	padding-left: 1.5%;
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

/* .Qlist {			
	border-bottom : 1px solid #ddd;
	padding : 1.5%;	
	text-align: center;
} 

.Qright {
	border-right: 1px solid #ddd;
	font-family: NotoSansCJKkr-Ligth !important;
	text-align: center;
	font-size: 10pt;
}

.Qlistt {
	border-right: 1px solid #ddd;
	font-family: computer !important;
	font-size: 12pt;
	color: #2a82a3;
}

.Qtitle {
	font-family: computer !important;
	border-top : 1px solid #ddd;
	border-bottom : 1px solid #ddd;
	padding-top : 2.5%;
	padding-left : 2.5%;
	padding-bottom : 2%;
	font-size: 12pt;
	color: #2a82a3;
}
 */
/* #h3title {
	color: #2a82a3;
}

#clist {
	background: -webkit-linear-gradient(left, #ffffff, #b0e0e6);
	background: -o-linear-gradient(left, #ffffff, #b0e0e6);
	background: -moz-linear-gradient(left, #ffffff, #b0e0e6);
	background: linear-gradient(left, #ffffff, #b0e0e6);
	border: solid 1px #2a82a3;
	height: 40px;
	border-radius: 4px;
	padding-top: 0.5%;
	font-size: 14pt;
	box-shadow: 2px 2px 6px #2a82a3;
}

#ctitle {
	font-family: computer !important;
	color: #2a82a3;
	font-size: 15px;
}

#ctitlec {
	font-family: NotoSansCJKkr-Ligth !important;
	color: #2a82a3;
	font-size: 13px;
}

#cdate {
	font-family: computer !important;
	color: #2a82a3;
	font-size: 15px;
}

#cdatec {
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 13px;
}

.tdmd {
	padding: 2%;
	border-bottom: 1px solid #ddd;
	width: 100%;
	color: dimgray;
}

#ccontents {
	text-align: center;
	align: center;
}

.Qreply {
	border-bottom: 1px solid #ddd;
	font-family: computer !important;
	border-top: 1px solid #ddd;
	padding: 2.5%;
	font-size: 12pt;
	heigth: 10%;
	color: #2a82a3;
}

.QreplyC {
	font-family: NotoSansCJKkr-Ligth !important;
	font-size: 10pt;
	color: black;
} */

/* #submitBtn2 {
	border: none;
	border-radius: 3px;
	border-color: #d58512;
	color: white;
	width: 5%;
	height: 25px;
	font-family: Binggrae !important;
	background-color: #ec971f;
}

#submitBtn1 {
	border: none;
	border-radius: 3px;
	border-color: #2a82a3;
	color: white;
	width: 5%;
	height: 25px;
	font-family: Binggrae !important;
	background-color: #2a82a3;
} */
</style>

<script type="text/javascript">
$(function() {
	$('#pdateid1').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid2').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid3').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid4').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid5').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid6').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid7').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid8').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid9').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid10').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid11').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});
	
	$('#pdateid12').mouseover(function() {
		$(this).css("background", "aliceblue").css("cursor", "pointer");
	}).mouseout(function() {
		$(this).css("background", "#fff");
	});	
});
</script>

</head>

<body>
	<!-- /jsmi/views/main1/costGuide/payView.jsp -->

	<%@ include file="/views/common/main1/menubar.jsp"%>

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

		<form action="/jsmi/views/main1/costGuide/payInfoView.jsp" method="post" enctype="multipart/form-data">
			<div class="tableStart">
				<table class="tablemd">
					<thead class="postthead">
						<tr>
							<th colspan="5" class="postth">신청내역</th>
						</tr>
					</thead>

					<tbody class="tbodymd font-family-md-3">
						<tr>
							<td class="plist pshow">내역</td>

							<td class="plist">단가</td>

							<td class="plist">기간</td>

							<td class="plist">금액</td>
						</tr>

						<tr>
							<td class="pcontent pshow">내역이 들어가야할 항목</td>

							<td class="pcontent">200,000,000원</td>

							<td class="pcontent">3개월</td>

							<td class="pcontent">200,000,000원</td>
						</tr>

						<tr>
							<td colspan="2" class="presult">합계</td>
							<td colspan="2" class="presult2">200,000,000원</td>
						</tr>
					</tbody>
				</table>
				
				<br><br><br>

				<table class="tablemd">
					<thead class="postthead">
						<tr>
							<th colspan="5" class="postth">데이터 등록 기간</th>
						</tr>
					</thead>
				</table>
					
					<br>
				<table class="tablemd">
					<tbody class="tbodymd font-family-md-3">
						<tr>
							<td class="pdate" id="pdateid1" value="1">1개월</td>

							<td class="pdate" id="pdateid2" value="2"> 2개월</td>

							<td class="pdate" id="pdateid3" value="3"> 3개월</td>

							<td class="pdate" id="pdateid4" value="4"> 4개월</td>

							<td class="pdate" id="pdateid5" value="5"> 5개월</td>
							
							<td class="pdate" id="pdateid6" value="6"> 6개월</td>
							
							<td class="pdate" id="pdateid7" value="7"> 7개월</td>
							
							<td class="pdate" id="pdateid8" value="8"> 8개월</td>
							
							<td class="pdate" id="pdateid9" value="9"> 9개월</td>
							
							<td class="pdate" id="pdateid10" value="10">10개월</td>
							
							<td class="pdate" id="pdateid11" value="11">11개월</td>
							
							<td class="pdate" id="pdateid12">12개월</td>
						</tr>
					</tbody>
				</table>
				
				<br><br><br>
				
				<table class="tablemd">
					<thead class="postthead">
						<tr>
							<th colspan="5" class="postth">신청내역</th>
						</tr>
					</thead>

					<tbody class="tbodymd font-family-md-3">
						<tr>
							<td class="plist pshow">내역</td>

							<td class="plist">단가</td>

							<td class="plist">기간</td>

							<td class="plist">금액</td>
						</tr>

						<tr>
							<td class="pcontent pshow">내역이 들어가야할 항목</td>

							<td class="pcontent"><p>200,000,000원</p></td>

							<td class="pcontent"><span id="x"></span></td>

							<td class="pcontent"><span id="result"></span></td>
						</tr>
						
						<tr>
							<td colspan="2" class="presult" id="additional">부가세</td>
							<td colspan="2" class="presult2" id="total"></td>
						</tr>

						<tr>
							<td colspan="2" class="presult">합계</td>
							<td colspan="2" class="presult2"></td>
						</tr>
					</tbody>
				</table>
			</div>

			<br><br>

			<div align="center">
				<h5 id="agree">※위와 같은 정보로 결제를 신청하시겠습니까?</h5>
				<input type="submit" class="payBtn" value="결제하기">
			</div>
		</form>
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