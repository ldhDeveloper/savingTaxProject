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
<script type="text/javascript"  src="/jsmi/js/Chart.min.js"></script>
<script type="text/javascript"  src="/jsmi/js/jquery.svg.js"></script>
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
	cselect = 0;
	
	lineChart = null;
	doughnutChart = null;
	
	$(function(){
			$('#selmonth li a').click(function(){
				$('#monselect').html($(this).text() + "<span class='caret'>")
			});
		
			$('#selyear').text(dyear + "년");
		
			$('#beforeyear').click(function(){
				dyear = dyear - 1;
				$('#selyear').text(dyear + "년");
			});
			
			$('#nextyear').click(function(){
				dyear = dyear + 1;
				$('#selyear').text(dyear + "년");
			});
			selectAsset();
			circleAsset("0");
	});
	
	function selectCnd(){
		selectAsset();
		circleAsset("0");
	};
	
	function selectAsset(){
		$.ajax({
			url: "/jsmi/aline",
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
			
				var asset1 = Number(jsonArr.list[0].asset1);
				
				var asset2 = asset1 + Number(jsonArr.list[0].asset2);
				var asset3 = asset2 + Number(jsonArr.list[0].asset3);
				var asset4 = asset3 + Number(jsonArr.list[0].asset4);
				var asset5 = asset4 + Number(jsonArr.list[0].asset5);
				var asset6 = asset5 + Number(jsonArr.list[0].asset6);
				var asset7 = asset6 + Number(jsonArr.list[0].asset7);
				var asset8 = asset7 + Number(jsonArr.list[0].asset8);
				var asset9 = asset8 + Number(jsonArr.list[0].asset9);
				var asset10 = asset9 + Number(jsonArr.list[0].asset10);
				var asset11 = asset10 + Number(jsonArr.list[0].asset11);
				var asset12 = asset11 + Number(jsonArr.list[0].asset12);
				
				var ctx = document.getElementById('assetline').getContext("2d");
				
				if(lineChart != null){
					lineChart.destroy();
				}
				
				lineChart = new Chart(ctx, {
					type: 'line',
					data : {
							labels : ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
							datasets : [{
								label : "자산",
								data : [asset1, asset2, asset3, asset4, asset5, asset6, asset7, asset8, asset9, asset10, asset11, asset12],
									backgroundColor: [
										'rgba(54, 162, 235, 0.2)' 
						            ],
						            borderColor: [
						                 'rgba(54, 162, 235, 1)'
						            ],
						            borderWidth: 1,
						            pointBorderColor: 'rgba(54, 162, 235, 1)',
						            pointBackgroundColor: "#fff",
						            pointBorderWidth: 1,
						            pointHoverRadius: 5,
						            pointHoverBackgroundColor: 'rgba(54, 162, 235, 0.2)',
						            pointHoverBorderColor: 'rgba(54, 162, 235, 1)',
						            pointHoverBorderWidth: 2,
						            pointRadius: 1,
						            pointHitRadius: 10,
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
			},
			error: function(request,status,error){
		        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		       }
		}); 
		
		
	};
	
	function circleAsset(a){
		cselect = a;
		console.log("cselect : " +  cselect);
		$.ajax({
			url: "/jsmi/acircle",
			type: "get",
			data: {pno : pno, dyear : dyear, cselect : cselect},
			dataType: "json",
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			success: function(data){
				console.log("json 성공");
				console.log("data : " + data);
				var jsonObj = JSON.stringify(data);
				//변환된 제이슨 객체를 제이슨 배열로 변환
				var jsonArr = JSON.parse(jsonObj);
			
				var assetname = new Array();
				var assetvalue = new Array();
				
				for(var i = 0; i < jsonArr.list.length; i++){
					if(typeof jsonArr.list[i].anm != "undefined"){
						assetname[i] = jsonArr.list[i].anm;
					} else {
						assetname[i] = "없음";
					}
					assetvalue[i] = jsonArr.list[i].sumcost
				}
				
				
				/* var assetname1 = jsonArr.list[0].anm;
				var assetvalue1 = Number(jsonArr.list[0].sumcost);
				var assetname2 = jsonArr.list[1].anm;
				var assetvalue2 = Number(jsonArr.list[1].sumcost);
				var assetname3 = jsonArr.list[2].anm;
				var assetvalue3 = Number(jsonArr.list[2].sumcost);
				var assetname4 = jsonArr.list[3].anm;
				var assetvalue4 = Number(jsonArr.list[3].sumcost);
				var assetname5 = jsonArr.list[4].anm;
				var assetvalue5 = Number(jsonArr.list[4].sumcost); */
				
				var ctx2 = document.getElementById('assetcircle').getContext("2d");
				var data2 = {
					    labels: [
					        assetname[0],
					        assetname[1],
					        assetname[2],
					        assetname[3],
					        assetname[4]
					    ],
					    datasets: [
					        {
					            data: [assetvalue[0], assetvalue[1], assetvalue[2], assetvalue[3], assetvalue[4]],
					            backgroundColor: [
					                "#FF6384",
					                "#36A2EB",
					                "#FFCE56",
					                "#4BC0C0",
					                "#E7E9ED"
					            ],
					            hoverBackgroundColor: [
					                "#FF6384",
					                "#36A2EB",
					                "#FFCE56",
					                "#4BC0C0",
					                "#E7E9ED"
					            ]
					        }]
					};
				
				if(doughnutChart != null){
					doughnutChart.destroy();
				}
				
				doughnutChart = new Chart(ctx2, {
					type: 'doughnut',
					data : data2,
				    options: {
				    	animation:{
				            animateScale:true
				        }
				    }
				});	
			},
			error: function(request,status,error){
		        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		       }
		});  
		
		/* function clearCanvas()
		{
		    // canvas
		    var cnvs = document.getElementById('assetline');
		    var cnvs2 = document.getElementById('assetcircle');
		    // context
		    var ctx = canvas.getContext('2d');

		    // 픽셀 정리
		    ctx.clearRect(0, 0, cnvs.width, cnvs.height);
		    ctx.clearRect(0, 0, cnvs2.width, cnvs2.height);
		    // 컨텍스트 리셋
		    ctx.beginPath();
		} */

	}
</script>
		<div class="section">
			<br>
			<div class="navbar navbar-default">
				<div class="container-fluid">
					<ul class="nav navbar-nav">
						<li><a class="tabmenu"
							href="/jsmi/views/main2/settlement/salesncost.jsp">매출/비용 분석</a></li>
						<li><a class="tabmenu lactive"
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
			<input class="btn btn-primary" type="button" value="조회하기" onclick="selectCnd();"> 
			</center>
			<br>
			<div class="col-md-12">
				<div class="col-md-6">
					<div class="well" style="margin-bottom:0px;">자산 변화</div>
					<canvas id="assetline" width="520px" height="520px">
							
					</canvas>
				</div>
				<div class="col-md-6">
					<div class="well" style="margin-bottom:0px;">자산 항목&nbsp;&nbsp;
					<div style="display: inline-block">
					<div class="dropdown" id="selcircle">
											<button class="btn btn-default dropdown-toggle" type="button"
												id="monselect" name="monselect" data-toggle="dropdown">
												1년전체 <span class="caret"></span>
											</button>
											<ul class="dropdown-menu" role="menu" aria-labelledby="menu1" id="selmonth">
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#" onclick="circleAsset(0);">1년전체</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#" onclick="circleAsset(1);">1월</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#" onclick="circleAsset(2);">2월</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#" onclick="circleAsset(3);">3월</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#" onclick="circleAsset(4);">4월</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#" onclick="circleAsset(5);">5월</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#" onclick="circleAsset(6);">6월</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#" onclick="circleAsset(7);">7월</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#" onclick="circleAsset(8);">8월</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#" onclick="circleAsset(9);">9월</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#" onclick="circleAsset(10);">10월</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#" onclick="circleAsset(11);">11월</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#" onclick="circleAsset(12);">12월</a></li>					
											</ul>
										</div>
					</div>
					</div>
					<canvas id="assetcircle" width="520px" height="520px">	
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