<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript " src="/jsmi/js/main2/bootstrap.min.js"></script>
<link href="/jsmi/css/main2/bootstrap.min.css" rel="stylesheet">
<link href="/jsmi/css/main2/styles.css" rel="stylesheet">
<script type="text/javascript" src="/jsmi/js/Chart.min.js"></script>
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

#yearlabel img {
	display: inline-block;
	height: 26px;
	cursor: pointer;
}

#yearlabel h3 {
	display: inline-block;
}

#selyear {
	font-family: ssangmunDong !important;
	color: #2a82a3;
	font-size: 33pt;
}

.well {
	font-family: Binggrae !important;
	font-size: 12pt;
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
		<script type="text/javascript">
			pno =
		<%=loginUser.getPno()%>
			;
			d = new Date();
			dyear = d.getFullYear();
			dmonth = d.getMonth() + 1;
			cselect = 0;

			sdoughnutChart = null;
			cdoughnutChart = null;

			$(function() {
				$('#selmonth li a').click(
						function() {
							$('#monselect').html(
									$(this).text() + "<span class='caret'>")
						});

				$('#selyear').text(dyear + "년");

				$('#beforeyear').click(function() {
					dyear = dyear - 1;
					$('#selyear').text(dyear + "년");
				});

				$('#nextyear').click(function() {
					dyear = dyear + 1;
					$('#selyear').text(dyear + "년");
				});
				circleSales("0");
				circleCost("0");
			});
			function selectSnC() {
				circleSales("0");
				circleCost("0");
			};

			function circleSales(a) {
				cselect = a;
				console.log("cselect : " + cselect);
				$
						.ajax({
							url : "/jsmi/scirchart",
							type : "get",
							data : {
								pno : pno,
								dyear : dyear,
								cselect : cselect
							},
							dataType : "json",
							contentType : "application/x-www-form-urlencoded; charset=UTF-8",
							success : function(data) {
								console.log("json 성공");
								console.log("data : " + data);
								var jsonObj = JSON.stringify(data);
								//변환된 제이슨 객체를 제이슨 배열로 변환
								var jsonArr = JSON.parse(jsonObj);

								var salesname = new Array();
								var salesvalue = new Array();

								for (var i = 0; i < jsonArr.list.length; i++) {
									if (typeof jsonArr.list[i].anm != "undefined") {
										salesname[i] = jsonArr.list[i].anm;
									} else {
										salesname[i] = "없음";
									}
									salesvalue[i] = jsonArr.list[i].sumcost
								}

								var ctx = document
										.getElementById('salescircle')
										.getContext("2d");
								var data = {
									labels : [ salesname[0], salesname[1],
											salesname[2], salesname[3],
											salesname[4] ],
									datasets : [ {
										data : [ salesvalue[0], salesvalue[1],
												salesvalue[2], salesvalue[3],
												salesvalue[4] ],
										backgroundColor : [ "#FF6384",
												"#36A2EB", "#FFCE56",
												"#4BC0C0", "#E7E9ED" ],
										hoverBackgroundColor : [ "#FF6384",
												"#36A2EB", "#FFCE56",
												"#4BC0C0", "#E7E9ED" ]
									} ]
								};

								if (sdoughnutChart != null) {
									sdoughnutChart.destroy();
								}

								sdoughnutChart = new Chart(ctx, {
									type : 'doughnut',
									data : data,
									options : {
										animation : {
											animateScale : true
										}
									}
								});
							},
							error : function(request, status, error) {
								alert("code:" + request.status + "\n"
										+ "message:" + request.responseText
										+ "\n" + "error:" + error);
							}
						});
			}

			function circleCost(a) {
				cselect = a;
				console.log("cselect : " + cselect);
				$
						.ajax({
							url : "/jsmi/ccirchart",
							type : "get",
							data : {
								pno : pno,
								dyear : dyear,
								cselect : cselect
							},
							dataType : "json",
							contentType : "application/x-www-form-urlencoded; charset=UTF-8",
							success : function(data) {
								console.log("json 성공");
								console.log("data : " + data);
								var jsonObj = JSON.stringify(data);
								//변환된 제이슨 객체를 제이슨 배열로 변환
								var jsonArr = JSON.parse(jsonObj);

								var costname = new Array();
								var costvalue = new Array();

								for (var i = 0; i < jsonArr.list.length; i++) {
									if (typeof jsonArr.list[i].anm != "undefined") {
										costname[i] = jsonArr.list[i].anm;
									} else {
										costname[i] = "없음";
									}
									costvalue[i] = jsonArr.list[i].sumcost
								}

								var ctx2 = document
										.getElementById('costcircle')
										.getContext("2d");
								var data2 = {
									labels : [ costname[0], costname[1],
											costname[2], costname[3],
											costname[4] ],
									datasets : [ {
										data : [ costvalue[0], costvalue[1],
												costvalue[2], costvalue[3],
												costvalue[4] ],
										backgroundColor : [ "#FF6384",
												"#36A2EB", "#FFCE56",
												"#4BC0C0", "#E7E9ED" ],
										hoverBackgroundColor : [ "#FF6384",
												"#36A2EB", "#FFCE56",
												"#4BC0C0", "#E7E9ED" ]
									} ]
								};

								if (cdoughnutChart != null) {
									cdoughnutChart.destroy();
								}

								cdoughnutChart = new Chart(ctx2, {
									type : 'doughnut',
									data : data2,
									options : {
										animation : {
											animateScale : true
										}
									}
								});
							},
							error : function(request, status, error) {
								alert("code:" + request.status + "\n"
										+ "message:" + request.responseText
										+ "\n" + "error:" + error);
							}
						});
			}
		</script>
		<div class="section">
			<br>
			<div class="navbar navbar-default">
				<div class="container-fluid">
					<ul class="nav navbar-nav">
						<li><a class="tabmenu"
							href="/jsmi/views/main2/settlement/salesncost.jsp">매출/비용 분석</a></li>
						<li><a class="tabmenu "
							href="/jsmi/views/main2/settlement/asset.jsp">자산 분석</a></li>
						<li><a class="tabmenu lactive"
							href="/jsmi/views/main2/settlement/yield.jsp">수익률 분석</a></li>
					</ul>
				</div>
			</div>
			<div id="yearlabel" align="center">
				<img id="beforeyear" src="/jsmi/images/main2/arrow2.png">&nbsp;&nbsp;&nbsp;&nbsp;
				<h3 align="center" id="selyear"></h3>
				&nbsp;&nbsp;&nbsp;&nbsp; <img id="nextyear"
					src="/jsmi/images/main2/arrow.png">
			</div>
			<br>
			<center>
				<input class="btn btn-primary" type="button" value="조회하기"
					onclick="selectSnC();">
			</center>
			<br>
			<div class="col-md-12">
				<div class="col-md-6">
					<div class="well" style="margin-bottom: 0px;">
						매출&nbsp;&nbsp;
						<div style="display: inline-block">
							<div class="dropdown" id="selcircle">
								<button class="btn btn-default dropdown-toggle" type="button"
									id="monselect" name="monselect" data-toggle="dropdown">
									1년전체 <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu" aria-labelledby="menu1"
									id="selmonth">
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleSales(0);">1년전체</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleSales(1);">1월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleSales(2);">2월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleSales(3);">3월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleSales(4);">4월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleSales(5);">5월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleSales(6);">6월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleSales(7);">7월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleSales(8);">8월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleSales(9);">9월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleSales(10);">10월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleSales(11);">11월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleSales(12);">12월</a></li>
								</ul>
							</div>
						</div>
					</div>
					<canvas id="salescircle" width="520px" height="520px">
							
					</canvas>
				</div>
				<div class="col-md-6">
					<div class="well" style="margin-bottom: 0px;">
						비용&nbsp;&nbsp;
						<div style="display: inline-block">
							<div class="dropdown" id="selcircle">
								<button class="btn btn-default dropdown-toggle" type="button"
									id="monselect" name="monselect" data-toggle="dropdown">
									1년전체 <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu" aria-labelledby="menu1"
									id="selmonth">
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleCost(0);">1년전체</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleCost(1);">1월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleCost(2);">2월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleCost(3);">3월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleCost(4);">4월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleCost(5);">5월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleCost(6);">6월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleCost(7);">7월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleCost(8);">8월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleCost(9);">9월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleCost(10);">10월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleCost(11);">11월</a></li>
									<li role="presentation"><a role="menuitem" tabindex="-1"
										href="#" onclick="circleCost(12);">12월</a></li>
								</ul>
							</div>
						</div>
					</div>
					<canvas id="costcircle" width="520px" height="520px">	
					</canvas>
				</div>
			</div>
		</div>
	</div>
	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>
</html>