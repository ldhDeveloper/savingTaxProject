<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/jsmi/css/main2/bootstrap.min.css" rel="stylesheet">
<link href="/jsmi/css/main2/styles.css" rel="stylesheet">
<link href="/jsmi/css/main2/jquery-ui.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/9.7.2/css/bootstrap-slider.min.css">
<script src="/jsmi/js/main2/jquery-1.11.1.min.js"></script>
<script src="/jsmi/js/main2/lumino.glyphs.js"></script>
<script src="/jsmi/js/main2/bootstrap.min.js"></script>
<title>Insert title here</title>
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
	text-align: center;
	font-weight: bold;
}

.active {
	background: white;
	color: black;
}

.calendar {
	width: 980px;
	height: 10px;
	position: relative;
	margin-left: auto;
	margin-right: auto;
	background: #1080aa;
}

.month {
	width: 9.09%;
	height: 10px;
	text-align: center;
}

.newmonth {
	width: 89px;
	height: 10px;
	text-align: center;
}

.mon-space {
	width: 980px;
	height: 5px;
	margin-left: auto;
	margin-right: auto;
}

.mon-border {
	border-left: 1px solid #1080aa;
	border-right: 1px solid #1080aa;
	height: 32px;
}

.month-select {
	background: orange;
	height: 5px;
}

.month-list {
	width: 980px;
	margin-left: auto;
	margin-right: auto;
	text-aling: center;
}

.emp-table {
	width: 1000px;
	margin-left: auto;
	margin-right: auto;
}

td {
	text-align: center;
}

th {
	text-align: center;
}

.emp-choice {
	background: #1080aa;
	height: 60px;
	border-radius: 10px;
	color: white;
	border: none;
}

.btn-group-custom {
	width:200px;
	position: relative;
	left: 800px;
	margin-left: 20px;
}

#yearlabel img {
	display: inline-block;
	height: 26px;
	cursor: pointer;
}

#yearlabel h3 {
	display: inline-block;
}

#slider12c .slider-track-high {
	background: #e7e7e7;
}

#slider12c .slider-track-low {
	background: #e7e7e7;
}

#slider12c .slider-selection {
	background: #ed6615;
}

.slider-track { 
	width: 980px;
}

.h3class {
	font-family: ssangmunDong !important;
	font-size:30pt;
}

.tabletd {
	border-top : 3px solid #2a82a3;  
}
</style>

</head>
<body style="padding-top: 0px;">
	<%@ include file="/views/common/main2/main2back.jsp"%>
	<div class="middle top">
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
				
				$('.slider-horizontal').css("width", "980px");
				$('.tooltip-inner').hide();
				$('.tooltip-arrow').hide();
				$('.tooltip').hide();
				//$('.tooltip tooltip-main top in').hide();
				
				$('#selectemp').click(function(){
					
					$.ajax({
						url: "/jsmi/semp",
						type: "get",
						data: {pno : pno},
						dataType: "json",
						contentType: "application/x-www-form-urlencoded; charset=UTF-8",
						success: function(data){
							var jsonObj = JSON.stringify(data);
							//변환된 제이슨 객체를 제이슨 배열로 변환
							var jsonArr = JSON.parse(jsonObj);
					
							$("#selemptable").html("<tr style='margin-bottom:10px'><th style='text-align:center'>직원명</th><th style='text-align:center'>주민등록번호</th><th style='text-align:center'>직급</th><th style='text-align:center'>휴대폰</th><th style='text-align:center'>이메일</th><th style='text-align:center'>고용형태</th>");
							for(var i in jsonArr.list){
								$("#selemptable").html($("#selemptable").html() +
										"<tr id='emplist" + i +"' style='cursor:pointer' onclick='empclick(" + i + ", " + "\"" + jsonArr.list[i].pno + "\");'><td style='display:none'><input='hidden' name='pno' value='"+ jsonArr.list[i].pno +"'></td><td name='selpname'>" + decodeURIComponent(jsonArr.list[i].pname) + "</td><td name='selid_no'>" + decodeURIComponent(jsonArr.list[i].id_no) + "</td><td name='selposition'>" + decodeURIComponent(jsonArr.list[i].position) + 
										"</td><td name='selphone'>" + jsonArr.list[i].phone + "</td><td name='selemail'>" + decodeURIComponent(jsonArr.list[i].email) + "</td><td name='selemp_type'>" + decodeURIComponent(jsonArr.list[i].emp_type) +
										"</td><td>");
							}
							jQuery.noConflict(); 
							$('#myEmp').modal('show');
						},
						error: function(request,status,error){
					        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					    }
				});
	
			});
				
			$('#salarysearch').click(function(){
				console.log($('.min-slider-handle').attr('aria-valuenow'));
				console.log($('.max-slider-handle').attr('aria-valuenow'));
				var min = $('.min-slider-handle').attr('aria-valuenow');
				var max = $('.max-slider-handle').attr('aria-valuenow');
				var selyear = dyear;
				
				$.ajax({
					url: "/jsmi/salsearch",
					type: "get",
					data: {pno : pno, min : min, max : max, selyear : selyear},
					dataType: "json",
					contentType: "application/x-www-form-urlencoded; charset=UTF-8",
					success: function(data){
						var jsonObj = JSON.stringify(data);
						//변환된 제이슨 객체를 제이슨 배열로 변환
						var jsonArr = JSON.parse(jsonObj);
						var taxsal = 0;
						var totalsal = 0;
						var v1 =0;
						var v2 =0;
						var v3 =0;
						var v4 =0;
						var v5 =0;
						var resultsal = 0;
						$("#searchtable").html("<tr><th style='text-align:center'>직원명</th><th style='text-align:center'>주민번호</th><th style='text-align:center'>부서명</th><th style='text-align:center'>직급</th><th style='text-align:center'>근무시작일</th><th style='text-align:center'>근무종료일</th>"
								+ "<th  style='text-align:center'>급여지급일</th><th style='text-align:center'>총급여금액</th><th  style='text-align:center'>차인지급액</th></tr>");
						for(var i in jsonArr.list){
							taxsal = Number(jsonArr.list[i].init_pay) + Number(jsonArr.list[i].bonus) + Number(jsonArr.list[i].incentive) + Number(jsonArr.list[i].over_pay) + Number(jsonArr.list[i].rest_pay);
							totalsal =  taxsal + Number(jsonArr.list[i].car_pay) + Number(jsonArr.list[i].meals) + Number(jsonArr.list[i].child_pay) + Number(jsonArr.list[i].exp); 
							v1 = Math.floor((taxsal * 0.045) / 10) * 10;
							v2 = Math.floor((taxsal * 0.0306) / 10) * 10;
							v3 = Math.floor((v2 * 0.0655 / 2) /10) * 10;
							v4 = Math.floor((taxsal * 0.0065) / 10) * 10;
							v5 = Math.floor((taxsal * 0.033) / 10) * 10
							resultsal = totalsal - v1 - v2 - v3 - v4 - v5;
							
							
							
							$("#searchtable").html($("#searchtable").html() +
									"<tr id='salarylist" + i +"' style='cursor:pointer' onclick='salclick(" + i + ", " + "\"" + jsonArr.list[i].pno + "\");'><td style='display:none'><input='hidden' name='pno' value='"+ jsonArr.list[i].pno +"'></td><td name='selpname'>" + decodeURIComponent(jsonArr.list[i].pname) + "</td><td name='selid_no'>" + decodeURIComponent(jsonArr.list[i].id_no) + "</td>" + 
									"<td name='seldepart'></td><td name='selposition'>" + decodeURIComponent(jsonArr.list[i].position) + "</td><td name='selwsdate'>" + jsonArr.list[i].wsdate +
									"</td><td name='selwedate'>" + jsonArr.list[i].wedate + "</td><td name='selsaldate'>" + jsonArr.list[i].saldate + "</td><td name='selsumsal'>" + totalsal + "</td><td name='selresultsal'>" + resultsal + "</td>");
						}
					},
					error: function(request,status,error){
				        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				    }
			});
			});
		});
			
			
			function empclick(data1, data2){
				
				$('#selpname').val($('#emplist' + data1).children('td[name=selpname]').text());
				$('#selid_no').val($('#emplist' + data1).children('td[name=selid_no]').text());
				$('#selposition').val($('#emplist' + data1).children('td[name=selposition]').text());
				$('#emppno').val(data2);
				console.log(data2);
				$('#myEmp').modal('hide');

				
			}
			
			$(function(){
				$("#insert").click(function(){
					console.log($("#emppno").val());
					
					var pno = $("#emppno").val();
					var wsdate = $("#wsdate").val();
					var wedate = $("#wedate").val();
					var saldate = $("#saldate").val();
					var initpay = $("#salary1").val();
					var overpay = $("#salary2").val();
					var restpay = $("#salary3").val();
					var bonus = $("#salary4").val();
					var incentive = $("#salary5").val();
					var meals = $("#salary6").val();
					var carpay = $("#salary7").val();
					var childpay = $("#salary8").val();
					var exp = $("#salary9").val();
					var realsalary = $("#gongtotal").val();
					
					$.ajax({
						url:"/jsmi/insertsal",
						data:{pno:pno, wsdate:wsdate, wedate:wedate, saldate:saldate, initpay:initpay, overpay:overpay, restpay:restpay, bonus:bonus, incentive:incentive, meals:meals, carpay:carpay, childpay:childpay, exp:exp, realsalary:realsalary},
						type:"post",
						dataType: "json",
						contentType: "application/x-www-form-urlencoded; charset=UTF-8",
						success:function(){
							alert("급여 입력 완료!");
						}
					});
				});
				
			});
			
			
		</script>
		<div class="section">
			<div class="row">
				<div class="col-md-8">
					<div class="navbar navbar-default">
						<div class="container-fluid">
							<ul class="nav navbar-nav">
								<li><a href="/jsmi/views/main2/emp/emp1.jsp">직원정보입력</a></li>
								<li><a href="/jsmi/views/main2/emp/emp1modify.jsp">직원정보수정</a></li>
								<li class="active"><a href="/jsmi/views/main2/emp/emp2.jsp">직원급여입력</a></li>
								<li class=""><a href="/jsmi/views/main2/emp/emp2modify.jsp">직원급여수정</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- 달력  -->
			<div id="yearlabel" align="center">
			<img id="beforeyear" src="/jsmi/images/main2/arrow2.png">&nbsp;&nbsp;&nbsp;&nbsp;
			<h3 align="center" id="selyear"></h3>&nbsp;&nbsp;&nbsp;&nbsp;
			<img id="nextyear" src="/jsmi/images/main2/arrow.png">
			</div>
			
			<div class="mon-space">
				<table>
					<tr>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
					</tr>
				</table>
			</div>
			<div style="width:980px; margin-left: auto; margin-right: auto">
				<input id="ex12c" type="text"/><br/>
				
				<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/9.7.2/bootstrap-slider.min.js"></script>
				<script>
					$("#ex12c").slider({ id: "slider12c", min: 1, max: 12, range: true, value: [3, 7] });
				</script>
				<script>
				$(function(){
					$("input[id^=salary]").keyup(function(){
						var total = Number(0);
						var temptotal = Number(0);
						
						for(var i = 1; i <= 9; i++){
							var idindex = "#salary" + i;
							var temp = $(idindex).val();
							total += Number(temp);
						}
						$("#totalsalary").val(total);
						
						for(var i = 1; i <= 5; i++){
							var idindex = "#salary" + i;
							var temp = $(idindex).val();
							temptotal += Number(temp);
						}
						$("#gong1").val(Math.floor((temptotal * 0.045) / 10) * 10); //국민연금
						$("#gong2").val(Math.floor((temptotal * 0.0306) / 10) * 10); //건강보험
						$("#gong3").val(Math.floor(($("#gong2").val() * 0.0655 / 2) /10) * 10); //장기요양보험
						$("#gong4").val(Math.floor((temptotal * 0.0065) / 10) * 10); //고용보험
						$("#gong5").val(Math.floor((temptotal * 0.033) / 10) * 10); //원천징수행
						
						var gongtotal = Number(0);
						
						for(var i = 1; i <= 5; i++){
							var idindex = "#gong" + i;
							var temp = $(idindex).val();
							gongtotal += Number(temp);
						}
						
						$("#gongtotal").val(total - gongtotal);
						
						$("#insu1").val(Math.floor((temptotal * 0.045) / 10) * 10);
						$("#insu2").val(Math.floor((temptotal * 0.0306) / 10) * 10);
						$("#insu3").val(Math.floor(($("#insu2").val() * 0.0655 / 2) /10) * 10);
						$("#insu4").val(Math.floor((temptotal * 0.009) / 10) * 10);
						$("#insu5").val(Math.floor(0));
						
						var insutotal = Number(0);
						for(var i = 1; i <= 5; i++){
							var idindex = "#insu" + i;
							var temp = $(idindex).val();
							insutotal += Number(temp);
						}
						$("#insutotal").val(insutotal);
						
					});
				});
					
				</script>
			</div>
			<div class="month-list" style="width:1070px; margin-top:10px">
				<table>
					<tr>
						<td class="newmonth">1월</td>
						<td class="newmonth">2월</td>
						<td class="newmonth">3월</td>
						<td class="newmonth">4월</td>
						<td class="newmonth">5월</td>
						<td class="newmonth">6월</td>
						<td class="newmonth">7월</td>
						<td class="newmonth">8월</td>
						<td class="newmonth">9월</td>
						<td class="newmonth">10월</td>
						<td class="newmonth">11월</td>
						<td class="newmonth">12월</td>
					</tr>
				</table>
			</div>
			
			<br>
			<br>
			<center>
				<input style="right:0px; position:relative;" type="button" class="btn btn-primary" id="salarysearch" value="조회하기">
			</center>
			<br>
			<br>
			<h3 align="center" class="h3class">급여 현황</h3>
			<div class="emp-table">
				<div class="row">
					<div class="col-md-12">
						<table class="table table-condensed">
							<tbody id="searchtable">
								<tr class="tabletd">
									<th>직원명</th>
									<th>주민번호</th>
									<th>부서명</th>
									<th>직급</th>
									<th>근무시작일</th>
									<th>근무종료일</th>
									<th>급여지급일</th>
									<th>총급여금액</th>
									<th>차인지급액</th>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>

								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>

								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>

								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>

								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>

								</tr>

							</tbody>
						</table>
						<ul class="pagination" style="float: right; margin-bottom: 30px;">
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
						</ul>
					</div>
				</div>
			</div>

			<h3 align="center" style="margin-top: 30px;" class="h3class">급여 입력</h3>
			<div class="emp-table">
				<div class="row">
					<div class="col-md-12">
						<table class="table table-condensed">
							<tbody>
								<tr class="tabletd">
									<td rowspan="2"><input type="button" value="직원선택" id="selectemp"
										class="emp-choice"></td>
									<td>직원명</td>
									<td>주민등록번호</td>
									<td>부서명</td>
									<td>직급</td>

								</tr>
								<tr>
									<td><input type="text" value="직원명"  id="selpname"class="form-control"></td>
									<td><input type="text" value="주민등록번호" id="selid_no" class="form-control"></td>
									<td><input type="text" value="부서명" id="" class="form-control"></td>
									<td><input type="text" value="직급" id="selposition" class="form-control"><input type="hidden" id="emppno" value=""></td>
									
								</tr>
							</tbody>
						</table>

					</div>
				</div>
			</div>

			<br>
			<br>
			<h3 align="center" class="h3class">급여 상세</h3>
			<form>
			<div class="emp-table">
				<div class="row">
					<div class="col-md-12">
						<table class="table table-condensed">
							<tbody>
								<tr class="tabletd">
									<td>근무시작일</td>
									<td><input type="date" class="form-control" id="wsdate"></td>
									<td>근무종료일</td>
									<td><input type="date" class="form-control" id="wedate"></td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>급여지급일</td>
									<td><input type="date" class="form-control" id="saldate"></td>
								</tr>
							</tbody>

						</table>

						<br>
						<br>
						<table class="table table-condensed">
							<tbody>
								<tr class="tabletd">
									<td colspan="5">과세 급여</td>
									<td colspan="4">비과세 급여</td>
									<td>총 급여</td>
								</tr>
								<tr class="tabletd">
									<td>기본급</td>
									<td>시간 외 근무 수당</td>
									<td>휴일 근무 수당</td>
									<td>상여금</td>
									<td>성과금</td>
									<td>식대</td>
									<td>자차 운전 보조금</td>
									<td>육아 수당</td>
									<td>지급 경비</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td><input type="text" placeholder="기본급" class="form-control" id="salary1"></td>
									<td><input type="text" placeholder="시간외수당" class="form-control" id="salary2"></td>
									<td><input type="text" placeholder="휴일근무수당" class="form-control" id="salary3"></td>
									<td><input type="text" placeholder="상여금" class="form-control" id="salary4"></td>
									<td><input type="text" placeholder="성과금" class="form-control" id="salary5"></td>
									<td><input type="text" placeholder="식대" class="form-control" id="salary6"></td>
									<td><input type="text" placeholder="자차운전보조" class="form-control" id="salary7"></td>
									<td><input type="text" placeholder="육아수당" class="form-control" id="salary8"></td>
									<td><input type="text" placeholder="지급경비" class="form-control" id="salary9"></td>
									<td><input type="text" placeholder="총급여" class="form-control" id="totalsalary"></td>

								</tr>
							</tbody>
						</table>

						<br>
						<br>
						<table class="table table-condensed">
							<tbody>
								<tr class="tabletd">
									<td colspan="5">공제 항목</td>
									<td>차인지급액</td>
								</tr>
								<tr class="tabletd">
									<td>국민연금보험료</td>
									<td>건강보험료</td>
									<td>장기요양보험료</td>
									<td>고용보험료</td>
									<td>근로자 원천징수</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td><input type="text" placeholder="국민연금" class="form-control" id="gong1"></td>
									<td><input type="text" placeholder="건강보험" class="form-control" id="gong2"></td>
									<td><input type="text" placeholder="장기요양보험" class="form-control" id="gong3"></td>
									<td><input type="text" placeholder="고용보험" class="form-control" id="gong4"></td>
									<td><input type="text" placeholder="원천징수" class="form-control" id="gong5"></td>
									<td><input type="text" placeholder="차인지급액" class="form-control" id="gongtotal"></td>
								</tr>
							</tbody>
						</table>
						<br><br>
						<h3 align="center" style="margin-top: 30px;" class="h3class">사업자 부담 보험금 계산</h3>
						<div class="emp-table">
							<div class="row">
								<div class="col-md-12">
									<table class="table table-condensed">
										<tbody>
											<tr class="tabletd">
												<td colspan="5">보험료 세부항목</td>
												<td>납부 총액</td>
											</tr>
											<tr class="tabletd">
												<td>국민연금보험료</td>
												<td>건강보험료</td>
												<td>장기요양보험료</td>
												<td>고용보험료</td>
												<td>산재보험료</td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td><input type="text" placeholder="국민연금" class="form-control" id="insu1"></td>
												<td><input type="text" placeholder="건강보험" class="form-control" id="insu2"></td>
												<td><input type="text" placeholder="장기요양" class="form-control" id="insu3"></td>
												<td><input type="text" placeholder="고용보험" class="form-control" id="insu4"></td>
												<td><input type="text" placeholder="산재보험" class="form-control" id="insu5"></td>
												<td><input type="text" placeholder="총금액" class="form-control" id="insutotal"></td>
											</tr>
										</tbody>
									</table>

								</div>
							</div>
						</div>


						<br>
						<br>
						<div class="emp-table btn-group-custom">
							<input type="reset" class="btn btn-warning" value="작성취소">
							<input type="button" class="btn btn-success" value="적용하기" id="insert">
						</div>
					</div>
				</div>
			</div>
			</form>
			<div class="modal fade" id="myEmp" role="dialog">
						    <div class="modal-dialog modal-lg">
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4 class="modal-title">직원선택</h4>
						        </div>
						        <div class="modal-body">
						      		<table class="table table-striped" id="selemptable">
									    
									  </table>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        </div>
						      </div>
						    </div>
						  </div>



		</div>
	</div>

	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>
</html>