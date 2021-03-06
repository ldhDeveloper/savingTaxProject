<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/jsmi/css/main2/bootstrap.min.css" rel="stylesheet">
<link href="/jsmi/css/main2/styles.css" rel="stylesheet">
<link href="/jsmi/css/main2/jquery-ui.css" rel="stylesheet">
<script src="/jsmi/js/main2/jquery-1.11.1.min.js"></script>
<script src="/jsmi/js/main2/lumino.glyphs.js"></script>
<script src="/jsmi/js/main2/bootstrap.min.js"></script>
<title>장부수정</title>
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

.navbar {
	margin-top: 2%;
}

.active {
	/* background: white;
	color: black; */
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
.pagi {
	width:35px;
	height:35px;
}

</style>
<script type="text/javascript">
	
</script>
</head>
<body style="padding-top:0px;">
	<%@ include file="/views/common/main2/main2back.jsp"%>
	<div class="middle top">
		<%@ include file="/views/common/main2/fullbar.jsp"%>
	</div>

	<div class="middle frame">
		<div class="side">
			<%@ include file="/views/common/main2/slidebar.jsp"%>
		</div>
		<script type="text/javascript">
		<%if(loginUser != null) {%>
		var pno = <%= loginUser.getPno() %>;
		console.log("pno : " + pno);
		<%} %>
		$(function(){
			
			$('#billtype > li > a').click(function(){
				$('button[name=bill_type]').html($(this).text() + "<span class='caret'></span>");
				$('button[name=bill_type]').css("border", "2px solid #5bc0de");
			});
			
			$('#bill_select > li > a').click(function(){
				$('button[name=bill_how]').html($(this).text() + "<span class='caret'></span>");
				$('button[name=bill_how]').css("border", "2px solid #5bc0de");
			});
			
			$('#proof_select > li > a').click(function(){
				$('button[name=proof]').html($(this).text() + "<span class='caret'></span>");
				$('button[name=proof]').css("border", "2px solid #5bc0de");
			});
			
			$('#actype').click(function(){
				var txt = $('button[name=bill_type]').text().trim();
				if(txt == "거래구분"){
					alert("거래구분을 지정해주시기바랍니다.");
				} else {
					jQuery.noConflict(); 
				
					var btype = "btype=" + $('button[name=bill_type]').text();
					console.log(btype);
					$.getJSON(
							"/jsmi/bType", btype , function(data){
								//받은 문자열을 json 객체로 변환함
								console.log("data!!!!! : " + data);
								var jsonObj = JSON.stringify(data);
								//변환된 제이슨 객체를 제이슨 배열로 변환
								var jsonArr = JSON.parse(jsonObj);
								
								$("#itemtable").html("<thead><tr><th>계정과목명</th><th>구분</th></tr></thead>");
								for(var i in jsonArr.list){
									$("#itemtable").html($("#itemtable").html() +
											//"<a href='#' id='litem' name='listitem' class='list-group-item' onclick='itemclick(\"" + jsonArr.list[i].anm + "\");' data-dismiss='modal'>" + jsonArr.list[i].anm + "</a>");
											"<tr id='litem' style='cursor:pointer;' onclick='itemclick(\"" + jsonArr.list[i].anm + "\");'><td>" + jsonArr.list[i].anm + "</td><td>" +  jsonArr.list[i].atype + "</td></tr>");
								}
							});
					$('#myModal').modal('show');
				}
			});
		
			
			$('#termsearch').click(function(){
				var sdate = $('input[name=startdate]').val();
				var edate = $('input[name=enddate]').val();
				$.ajax({
					url: "/jsmi/dtsearch",
					//data: {sdate :  $('input[name=startdate]').val(), edate :  $('input[name=enddate]').val()},
					data: {sdate :  sdate, edate : edate, pno : pno},
					type: "get",
					dataType: "json",
					contentType: "application/x-www-form-urlencoded; charset=UTF-8",
					success: function(data){
						console.log("json 성공");
						console.log("data : " + data);
						var jsonObj = JSON.stringify(data);
						//변환된 제이슨 객체를 제이슨 배열로 변환
						var jsonArr = JSON.parse(jsonObj);
					
						$("#itablebody").html("<tr><th>선택</th><th>거래구분</th><th>날짜</th><th>거래처</th><th>계정항목</th><th>품목</th>" +
								"<th>금액</th><th>결재방법</th><th>증빙자료</th></tr>");
						for(var i in jsonArr.list){
							console.log(jsonArr.list[i].atype);
							$("#itablebody").html($("#itablebody").html() +
									"<tr><td><div class='checkbox' style='margin: 0 auto;'> " + 
									"<input type='checkbox' style='margin: 3px  0 0 7px;' value='"+ jsonArr.list[i].dno + "' class='inputchk' name='delselect'>" +
									"<td>" + jsonArr.list[i].atype + "</td><td>" + jsonArr.list[i].ddate + "</td><td>" + decodeURIComponent(jsonArr.list[i].pname) + 
									"</td><td>" + decodeURIComponent(jsonArr.list[i].anm) + "</td><td>" + decodeURIComponent(jsonArr.list[i].product) + "</td><td>" + jsonArr.list[i].cost +
									"</td><td>" + decodeURIComponent(jsonArr.list[i].billing) + "</td><td>" + decodeURIComponent(jsonArr.list[i].proof_type) + "</td></tr>");
						}
					},
					error: function(request,status,error){
				        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				       }
				}); 
			});
			
			$('#selectdealer').click(function(){
					$.ajax({
						url: "/jsmi/sdealer",
						type: "get",
						dataType: "json",
						contentType: "application/x-www-form-urlencoded; charset=UTF-8",
						success: function(data){
							console.log("json 성공");
							console.log("data : " + data);
							var jsonObj = JSON.stringify(data);
							//변환된 제이슨 객체를 제이슨 배열로 변환
							var jsonArr = JSON.parse(jsonObj);
						
							$("#dealertable").html("<tr><th>거래처명</th><th>업종</th><th>업태</th><th>전화번호</th><th>대표자</th>");
							for(var i in jsonArr.list){
								console.log(jsonArr.list[i].atype);
								$("#dealertable").html($("#dealertable").html() +
										"<tr style='cursor:pointer' onclick='dealerclick(\"" + jsonArr.list[i].pname + "\");'><td>" + decodeURIComponent(jsonArr.list[i].pname) + "</td><td>" + decodeURIComponent(jsonArr.list[i].ctype) + "</td><td>" + decodeURIComponent(jsonArr.list[i].cstatus) + 
										"</td><td>" + jsonArr.list[i].tel + "</td><td>" + decodeURIComponent(jsonArr.list[i].president) +
										"</td><td>");
							}
							jQuery.noConflict(); 
							$('#myModal2').modal('show');
						},
						error: function(request,status,error){
					        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					    }
				});
			});
			
			
			$('#dselector > li').click(function(){
				console.log($(this).attr("id"));
				if($(this).is('#dinput')){
					$(location).attr("href", "/jsmi/views/main2/daily/inputdaily.jsp");
				} else if($(this).is('#dmodify')) {
					$(location).attr("href", "/jsmi/views/main2/daily/modifydaily.jsp");
				} else if($(this).is('#ddelete')) {
					$(location).attr("href", "/jsmi/views/main2/daily/deletedaily.jsp");
				}
			});
			
			$('#deldiary').click(function(){
				var delselect = new Array();
				$('input[name=delselect]:checked').each(function(index){
					console.log("index : " + index);
					delselect.push($(this).val());
				})
				console.log(delselect);
				$.ajax({
					url: "/jsmi/ddelete",
					data: {delselect : delselect, ddate : deldate, pno : pno}, 
					type: "post",
					dataType: "json",
					contentType: "application/x-www-form-urlencoded; charset=UTF-8",
					success: function(data){
						console.log("json 성공");
						console.log("data : " + data);
						var jsonObj = JSON.stringify(data);
						//변환된 제이슨 객체를 제이슨 배열로 변환
						var jsonArr = JSON.parse(jsonObj);
					
						$("#itablebody").html("<tr><th>선택</th><th>거래구분</th><th>날짜</th><th>거래처</th><th>계정항목</th><th>품목</th>" +
						"<th>금액</th><th>결재방법</th><th>증빙자료</th></tr>");
						for(var i in jsonArr.list){
							console.log(jsonArr.list[i].atype);
							$("#itablebody").html($("#itablebody").html() +
									"<tr><td><div class='checkbox' style='margin: 0 auto;'> " + 
									"<input type='checkbox' style='margin: 3px  0 0 7px;' value='"+ jsonArr.list[i].dno + "' class='inputchk' name='delselect'>" +
									"<td>" + jsonArr.list[i].atype + "</td><td>" + jsonArr.list[i].ddate + "</td><td>" + decodeURIComponent(jsonArr.list[i].pname) + 
									"</td><td>" + decodeURIComponent(jsonArr.list[i].anm) + "</td><td>" + decodeURIComponent(jsonArr.list[i].product) + "</td><td>" + jsonArr.list[i].cost +
									"</td><td>" + decodeURIComponent(jsonArr.list[i].billing) + "</td><td>" + decodeURIComponent(jsonArr.list[i].proof_type) + "</td></tr>");
						}
						alert("선택한 장부가 삭제되었습니다.");
					},
					error: function(request,status,error){
				        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				    }
				}); 
			});
				
		});
			function itemclick(data){
				$('#actype').val(data);
				$('#actype').css("border", "2px solid #5bc0de");
				$('#myModal').modal("hide");
			}
			
			function dealerclick(data){
				$('#selectdealer').val(data);
				$('#selectdealer').css("border", "2px solid #5bc0de");
				$('#myModal2').modal("hide");
			}
			

			
		</script>
		<div class="section">
			<nav class="navbar navbar-default">
			  <div class="container-fluid">
			    <ul class="nav navbar-nav" id="dselector">
			      <li id="dinput"><a href="#" class="active">장부입력</a></li>
			      <li id="dmodify"><a href="#" class="active">장부수정</a></li>
			      <li id="ddelete"><a href="#" class="active lactive">장부삭제</a></li>
			    </ul>
			  </div>
			</nav>
			<br>
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div class="col-md-3" style="margin-bottom:20px;">
						<div id="datepicker" style="padding-left: 15px"></div>
						<script src="/jsmi/js/main2/jquery.js"></script>
						<script src="/jsmi/js/main2/jquery-ui.js"></script>
						<script>
						deldate = null;
						jQuery.noConflict(); 
						jQuery("#datepicker").datepicker({
								inline : true,
								onSelect: function(dateText, inst) {
									var date = new Date($(this).val());
									var ndate = jQuery.datepicker.formatDate('yy-mm-dd', date);
									deldate = ndate;
									dailySearch(ndate);
								}
							});
							
						function dailySearch(ndate){
							$('#dealdate').val(ndate);
							//var ddate = "ddate=" + ndate + "&pno = " + pno;
							$.ajax({
								url: "/jsmi/ddsearch",
								data: {ddate : ndate, pno : pno },
								type: "get",
								dataType: "json",
								contentType: "application/x-www-form-urlencoded; charset=UTF-8",
								success: function(data){
									console.log("json 성공");
									console.log("data : " + data);
									var jsonObj = JSON.stringify(data);
									//변환된 제이슨 객체를 제이슨 배열로 변환
									var jsonArr = JSON.parse(jsonObj);
								
									$("#itablebody").html("<tr><th>선택</th><th>거래구분</th><th>날짜</th><th>거래처</th><th>계정항목</th><th>품목</th>" +
											"<th>금액</th><th>결재방법</th><th>증빙자료</th></tr>");
									for(var i in jsonArr.list){
										console.log(jsonArr.list[i].atype);
										$("#itablebody").html($("#itablebody").html() +
												"<tr><td><div class='checkbox' style='margin: 0 auto;'> " + 
												"<input type='checkbox' style='margin: 3px  0 0 7px;' value='"+ jsonArr.list[i].dno + "' class='inputchk' name='delselect'>" +
												"<td>" + jsonArr.list[i].atype + "</td><td>" + jsonArr.list[i].ddate + "</td><td>" + decodeURIComponent(jsonArr.list[i].pname) + 
												"</td><td>" + decodeURIComponent(jsonArr.list[i].anm) + "</td><td>" + decodeURIComponent(jsonArr.list[i].product) + "</td><td>" + jsonArr.list[i].cost +
												"</td><td>" + decodeURIComponent(jsonArr.list[i].billing) + "</td><td>" + decodeURIComponent(jsonArr.list[i].proof_type) + "</td></tr>");
									}
								},
								error: function(request,status,error){
							        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
							    }
							});
						}
						</script>

						<div>
							<h4 align="center">기간별 조회</h4>
							<div class="col-md-12">
								<h5>
									시작일자 :<input type="date" name="startdate" class="form-control">
								</h5>
								<h5>
									종료일자 :<input type="date" name="enddate" class="form-control">
								</h5>
							</div>
							<div class="col-md-12">
								<a type="button" id="termsearch" class="form-control" style="text-align:center; background:#5bc0de; cursor:pointer; color:white;" >검색</a>
							</div>
							
						</div>
						
					</div>
					<div class="col-md-9">
						<table class="table table-condensed">
							<tbody id=itablebody>
								<tr>
									<th>선택</th>
									<th>거래구분</th>
									<th>날짜</th>
									<th>거래처</th>
									<th>계정항목</th>
									<th>품목</th>
									<th>금액</th>
									<th>결재방법</th>
									<th>증빙자료</th>
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
						<!-- 
						<ul class="pagination" style="float: right; margin-bottom: 30px;">
							<li><a class="pagi" href="#">1</a></li>
							<li><a class="pagi" href="#">2</a></li>
							<li><a class="pagi" href="#">3</a></li>
							<li><a class="pagi" href="#">4</a></li>
							<li><a class="pagi" href="#">5</a></li>
						</ul>
						 -->
					</div>
					

						
				</div>
				</div>
				<div class="row">
							<div class="col-md-5"></div>
							<div class="col-md-3">
								<input type="button" id="deldiary" class="btn btn-warning" value="삭제">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="button" id="cancel" class="btn btn-danger" value="취소">
							</div>
							<div class="col-md-4"></div>
						</div>
						
				</div>
			</div>
		<br>
		<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>
</html>