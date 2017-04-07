<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript " src="/jsmi/js/main2/bootstrap.min.js"></script>
<link href="/jsmi/css/main2/bootstrap.min.css" rel="stylesheet">
<link href="/jsmi/css/main2/styles.css" rel="stylesheet">
<script type="text/javascript"  src="/jsmi/js/Chart.min.js"></script>
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
	pno = <%= loginUser.getPno() %>;
	d = new Date();
	dyear = d.getFullYear();
	dmonth = d.getMonth() + 1;
	$(function(){
			$('#selyear').text(dyear + "년");
		
			$('#beforeyear').click(function(){
				dyear = dyear - 1;
				$('#selyear').text(dyear + "년");
			});
			
			$('#nextyear').click(function(){
				dyear = dyear + 1;
				$('#selyear').text(dyear + "년");
			});
			selectSettle();
	});
	
	function selectSettle(){
		$.ajax({
			url: "/jsmi/scbar",
			type: "get",
			data: {pno : pno, dyear : dyear},
			dataType: "json",
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			success: function(data){
				console.log("json 성공");
				console.log("data : " + data);
				var jsonObj = JSON.stringify(data);
				//변환된 제이슨 객체를 제이슨 배열로 변환
				var jsonArr = JSON.parse(jsonObj);
			
				var sales1 = Number(jsonArr.list[0].sales1);
				
				var sales2 = Number(jsonArr.list[0].sales2);
				var sales3 = Number(jsonArr.list[0].sales3);
				var sales4 = Number(jsonArr.list[0].sales4);
				var sales5 = Number(jsonArr.list[0].sales5);
				var sales6 = Number(jsonArr.list[0].sales6);
				var sales7 = Number(jsonArr.list[0].sales7);
				var sales8 = Number(jsonArr.list[0].sales8);
				var sales9 = Number(jsonArr.list[0].sales9);
				var sales10 = Number(jsonArr.list[0].sales10);
				var sales11 = Number(jsonArr.list[0].sales11);
				var sales12 = Number(jsonArr.list[0].sales12);
				
				var cost1 = Number(jsonArr.list[0].cost1);
				var cost2 = Number(jsonArr.list[0].cost2);
				var cost3 = Number(jsonArr.list[0].cost3);
				var cost4 = Number(jsonArr.list[0].cost4);
				var cost5 = Number(jsonArr.list[0].cost5);
				var cost6 = Number(jsonArr.list[0].cost6);
				var cost7 = Number(jsonArr.list[0].cost7);
				var cost8 = Number(jsonArr.list[0].cost8);
				var cost9 = Number(jsonArr.list[0].cost9);
				var cost10 = Number(jsonArr.list[0].cost10);
				var cost11 = Number(jsonArr.list[0].cost11);
				var cost12 = Number(jsonArr.list[0].cost12);
				
				var ctx = $('#barchart');
				var barChart = new Chart(ctx, {
					type: 'bar',
					data : {
							labels : ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
							datasets : [{
									label : "매출",
									data : [sales1, sales2, sales3, sales4, sales5, sales6, sales7, sales8, sales9, sales10, sales11, sales12],
										backgroundColor: [
							               'rgba(255, 99, 132, 0.2)',
							               'rgba(255, 99, 132, 0.2)',
							               'rgba(255, 99, 132, 0.2)',
							               'rgba(255, 99, 132, 0.2)',
							               'rgba(255, 99, 132, 0.2)',
							               'rgba(255, 99, 132, 0.2)',
							               'rgba(255, 99, 132, 0.2)',
							               'rgba(255, 99, 132, 0.2)',
							               'rgba(255, 99, 132, 0.2)',
							               'rgba(255, 99, 132, 0.2)',
							               'rgba(255, 99, 132, 0.2)',
							                'rgba(255, 99, 132, 0.2)'
							            ],
							            borderColor: [
							                'rgba(255,99,132,1)',
							                'rgba(255,99,132,1)',
							                'rgba(255,99,132,1)',
							                'rgba(255,99,132,1)',
							                'rgba(255,99,132,1)',
							                'rgba(255,99,132,1)',
							                'rgba(255,99,132,1)',
							                'rgba(255,99,132,1)',
							                'rgba(255,99,132,1)',
							                'rgba(255,99,132,1)',
							                'rgba(255,99,132,1)',
							                'rgba(255,99,132,1)'
							            ],
							            borderWidth: 1
							}, {
								label : "비용",
								data : [cost1, cost2, cost3, cost4, cost5, cost6, cost7, cost8, cost9, cost10, cost11, cost12],
									backgroundColor: [
							           'rgba(54, 162, 235, 0.2)', 
							           'rgba(54, 162, 235, 0.2)', 
							           'rgba(54, 162, 235, 0.2)',
							           'rgba(54, 162, 235, 0.2)',
							           'rgba(54, 162, 235, 0.2)',
							           'rgba(54, 162, 235, 0.2)',
							           'rgba(54, 162, 235, 0.2)',
							           'rgba(54, 162, 235, 0.2)',
							           'rgba(54, 162, 235, 0.2)',
							           'rgba(54, 162, 235, 0.2)',
							           'rgba(54, 162, 235, 0.2)',
										'rgba(54, 162, 235, 0.2)'
							        ],
							        borderColor: [
							            'rgba(54, 162, 235, 1)',
							            'rgba(54, 162, 235, 1)',
							            'rgba(54, 162, 235, 1)',
							            'rgba(54, 162, 235, 1)',
							            'rgba(54, 162, 235, 1)',
							            'rgba(54, 162, 235, 1)',
							            'rgba(54, 162, 235, 1)',
							            'rgba(54, 162, 235, 1)',
							            'rgba(54, 162, 235, 1)',
							            'rgba(54, 162, 235, 1)',
							            'rgba(54, 162, 235, 1)',
							            'rgba(54, 162, 235, 1)'
							        ],
							        borderWidth: 1
							}]
					},
				    options: {
				        scales: {
				            yAxes: [{
				                ticks: {
				                    beginAtZero:true
				                }
				            }]
				        }
				    }
				});
				
				var ctx2 = $('#linechart');
				var lineChart = new Chart(ctx2, {
					type: 'line',
					data : {
							labels : ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
							datasets : [{
									label : "수익",
									data : [sales1-cost1, sales2-cost2, sales3-cost3, sales4-cost4, sales5-cost5, sales6-cost6, sales7-cost7, sales8-cost8, sales9-cost9, sales10-cost10, sales11-cost11, sales12-cost12],
										backgroundColor: [
											'rgba(255, 206, 86, 0.2)'
							            ],
							            borderColor: [
							                'rgba(255, 206, 86, 1)'
							            ],
							            borderWidth: 1,
							            pointBorderColor: "rgba(255, 206, 86, 1)",
							            pointBackgroundColor: "#fff",
							            pointBorderWidth: 1,
							            pointHoverRadius: 5,
							            pointHoverBackgroundColor: "rgba(255, 206, 86, 0.2)",
							            pointHoverBorderColor: "rgba(255, 206, 86, 1)",
							            pointHoverBorderWidth: 2,
							            pointRadius: 1,
							            pointHitRadius: 10,
							},]
					},
				    options: {
				        scales: {
				            yAxes: [{
				                ticks: {
				                    beginAtZero:true
				                }
				            }]
				        }
				    }
				});
	
			},
			error: function(request,status,error){
		        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		       }
		}); 
	};
</script>
		<div class="section">
			<br>
			<div class="navbar navbar-default">
				<div class="container-fluid">
					<ul class="nav navbar-nav">
						<li><a class="tabmenu lactive"
							href="/jsmi/views/main2/settlement/salesncost.jsp">매출/비용 분석</a></li>
						<li><a class="tabmenu"
							href="/jsmi/views/main2/settlement/asset.jsp">자산 분석</a></li>
						<li><a class="tabmenu"
							href="/jsmi/views/main2/settlement/yield.jsp">수익률 분석</a></li>
					</ul>
				</div>
			</div>
			<div id="yearlabel" align="center">
			<img id="beforeyear" src="/jsmi/images/main2/arrow2.png">&nbsp;&nbsp;&nbsp;&nbsp;
			<h3 align="center" id="selyear"></h3>&nbsp;&nbsp;&nbsp;&nbsp;
			<img id="nextyear" src="/jsmi/images/main2/arrow.png">
			</div>
			<br>
			<center>
			<input class="btn btn-primary" type="button" value="조회하기" onclick="selectSettle();"> 
			</center>
			<br>
			<div class="col-md-12">
				<div class="col-md-6">
					<div class="well" style="margin-bottom:0px;">bar chart</div>
					<canvas id="barchart" width="520px" height="520px">
							
					</canvas>
				</div>
				<div class="col-md-6">
					<div class="well" style="margin-bottom:0px;">line chart</div>
					<canvas id="linechart" width="520px" height="520px">	
					</canvas>
				</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>
</html>