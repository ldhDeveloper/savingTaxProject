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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="/jsmi/js/main2/zipcode.js"></script>

<script>
	function nextpage() {
		location.href("/jsmi/views/main2/myinfo2.jsp");
	}
	//document.getElementById('now_date').valueAsDate = new Date();
</script>

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

.btngr {
	float: right;
	position: relative;
	margin-top: -15px;
	left: -30px;
}

.h3class {
	font-family: ssangmunDong !important;
	font-size: 25pt;
}

.tabletd {
	border-top : 3px solid #2a82a3;  
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
			<div class="row">
				<div class="col-md-8">
					<div class="navbar navbar-default">
						<div class="container-fluid">
							<ul class="nav navbar-nav">
								<li class="active"><a href="/jsmi/views/main2/emp/emp1.jsp">직원정보입력</a></li>
								<li><a href="/jsmi/views/main2/emp/emp1modify.jsp">직원정보수정</a></li>
								<li><a href="/jsmi/views/main2/emp/emp2.jsp">직원급여입력</a></li>
								<li class=""><a href="/jsmi/views/main2/emp/emp2modify.jsp">직원급여수정</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			


			<h3 align="center" class="h3class">직원 목록 조회</h3>
			<div class="row">
				<div class="col-md-12">
					<table class="table table-condensed">
						<tbody class="tabletd" id="emptable">
							<tr>
								<th>직원명</th>
								<th>직원구분</th>
								<th>직급</th>
								<th>입사년월일</th>
								<th>연락처</th>
								<th>직원 주소지</th>
								<th>이메일</th>

							</tr>
							<tr>
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

							</tr>
							<tr>
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

							</tr>
							<tr>
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
					<ul class="pagination" style="margin-left: 42%; margin-bottom: 30px;">
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
					</ul>
				</div>
			</div>
			<h3 align="center" class="h3class">직원 정보 입력/수정</h3>

				
				<div class="row">
					<div class="col-md-12 col-lg-12">
						<table class="table table-condensed">
							<tbody>
								<tr class="tabletd">
									<td class="col-md-2"><h5>직원명</h5></td>
									<td class="col-md-4"><input type="text" class="form-control" name="empname" id="empname"></td>
										
									<td class="col-md-2"><h5>직원구분</h5></td>
									<td class="col-md-4">
										<div class="row">
											<div class="col-md-12">
												<div class="radio col-md-4">
													<label><input type="radio" name="optradio"
														value="정규직">정규직</label>
												</div>
												<div class="radio col-md-4" style="margin-top: 10px">
													<label><input type="radio" name="optradio"
														value="비정규직">비정규직</label>
												</div>
												<div class="radio col-md-4" style="margin-top: 10px">
													<label><input type="radio" name="optradio"
														value="일용직">일용직</label>
												</div>
											</div>
										</div>
									</td>

								</tr>
								<tr>
									<td class="col-md-2"><h5>주민등록번호</h5></td>
									<td class="col-md-4">
										<div class="col-md-5"
											style="padding-left: 0px; padding-right: 0px;">
											<input type="text" class="form-control" name="empno1" maxlength="6">
										</div>
										<div class="col-md-2" style="text-align: center">-</div>
										<div class="col-md-5"
											style="padding-left: 0px; padding-right: 0px;">
											<input type="password" class="form-control" name="empno2" maxlength="6">
										</div>
									</td>
									<td class="col-md-2"><h5>직급</h5></td>
									<td class="col-md-4"><input type="text"
										class="form-control" name="position"></td>
								</tr>
								<tr>
									<td class="col-md-2"><h5>입사년월일</h5></td>
									<td class="col-md-4"><input type="date"
										class="form-control" id="now_date" name="hiredate"></td>
									<td class="col-md-2"><h5>연락처</h5></td>
									<td class="col-md-4">
										<div class="col-md-3"
											style="padding-left: 0px; padding-right: 0px;">
											<input type="text" class="form-control" name="phone1" maxlength="3">
										</div>
										<div class="col-md-1" style="text-align: center">-</div>
										<div class="col-md-3"
											style="padding-left: 0px; padding-right: 0px;">
											<input type="text" class="form-control" name="phone2" maxlength="4">
										</div>
										<div class="col-md-1" style="text-align: center">-</div>
										<div class="col-md-3"
											style="padding-left: 0px; padding-right: 0px;">
											<input type="text" class="form-control" name="phone3" maxlength="4">
										</div>
									</td>

								</tr>
								<tr>
									<td class="col-md-2" rowspan="2"><h5>직원 주소지</h5></td>
									<td class="col-md-4">
										<div class="col-md-12"
											style="padding-left: 0px; padding-right: 0px;">
											<input type="text" class="form-control" id="postnum"
												name="add1">
										</div>
									</td>
									<td class="col-md-6" colspan="2"><input type=button
										class="btn btn-primary" value="우편번호검색"
										onclick="sample4_execDaumPostcode();"></td>
								</tr>
								<tr>
									<td class="col-md-4"><input type="text"
										class="form-control" id="address1" name="add2"></td>
									<td class="col-md-6" colspan="2"><input type="text"
										class="form-control" id="address2" name="add3"></td>

								</tr>
								<tr>
									<td class="col-md-2"><h5>이메일</h5></td>
									<td class="col-md-6" colspan="2">
										<div class="col-md-3"
											style="padding-left: 0px; padding-right: 0px;">
											<input type="text" class="form-control" name="email1" id="email1">
										</div>
										<div class="col-md-1" style="text-align: center">@</div>
										<div class="col-md-3"
											style="padding-left: 0px; padding-right: 0px;">
											<input type="text" class="form-control" name="email2" id="email2">
										</div>
										<div class="col-md-1" style="display: block"></div>
										<div class="col-md-3"
											style="padding-left: 0px; padding-right: 0px;">
											<div class="dropdown">
												<button class="btn btn-primary dropdown-toggle"
													type="button" id="menu1" data-toggle="dropdown">
													직접입력 <span class="caret"></span>
												</button>
												<ul class="dropdown-menu" role="menu"
													aria-labelledby="menu1" id="edrop">
													<li role="presentation"><a role="menuitem"
														tabindex="-1" href="#">naver.com</a></li>
													<li role="presentation"><a role="menuitem"
														tabindex="-1" href="#">google.com</a></li>
													<li role="presentation"><a role="menuitem"
														tabindex="-1" href="#">hanmail.net</a></li>
													<li role="presentation"><a role="menuitem"
														tabindex="-1" href="#">yahoo.co.kr</a></li>
												</ul>
											</div>
										</div>
									</td>
									<td class="col-md-4"></td>
								</tr>
							</tbody>
						</table>
						<div class="row btngr">
							<button class="btn btn-success" type="submit" id="insert" onclick="validate();">등록</button>
							<button class="btn btn-danger" type="reset">취소</button>
						</div>
					</div>
				</div>
		</div>

	</div>
	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>
	
	<script>
				 $(function(){
					var pno=<%= loginUser.getPno() %>;
					$.ajax({
						url:"/jsmi/emplist",
						data: {pno: pno},
						type:"post",
						dataType:"JSON",
						contentType: "application/x-www-form-urlencoded; charset=UTF-8",
						success:function(data){
							console.log("json 성공");
							var jsonObj = JSON.stringify(data);
							var jsonArr = JSON.parse(jsonObj);
							
							$("#emptable").html("<tr><th>직원명</th><th>직원구분</th><th>직급</th><th>입사년월일</th><th>연락처</th><th>직원 주소지</th><th>이메일</th></tr>");
							for(var i in jsonArr.emplist){
								
								$("#emptable").html($("#emptable").html() + "<tr><td>" + decodeURIComponent(jsonArr.emplist[i].empname) + "</td><td>" + decodeURIComponent(jsonArr.emplist[i].emptype) + "</td><td>" + decodeURIComponent(jsonArr.emplist[i].position) + "</td><td>" + jsonArr.emplist[i].hiredate + "</td><td>" + jsonArr.emplist[i].phone + "</td><td>" + decodeURIComponent(jsonArr.emplist[i].empadd).split("+").join(" ") + "</td><td>" + jsonArr.emplist[i].email + "</td><td><input type='hidden' value='" + jsonArr.emplist[i].emppno +"'></td></tr>");
							}
						}/* ,
						error: function(request,status,error){
					        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					       } */
					});
				}); 
				
				$("#insert").click(function(){
					var pno=<%= loginUser.getPno() %>;
					var empname = $("input[name=empname]").val();
					var optradio = $("input[name=optradio]:checked").val();
					var empno1 = $("input[name=empno1]").val();
					var empno2 = $("input[name=empno2]").val();
					var position = $("input[name=position]").val();
					var hiredate = $("input[name=hiredate]").val();
					var phone1 = $("input[name=phone1]").val();
					var phone2 = $("input[name=phone2]").val();
					var phone3 = $("input[name=phone3]").val();
					var add1 = $("input[name=add1]").val();
					var add2 = $("input[name=add2]").val();
					var add3 = $("input[name=add3]").val();
					var email1 = $("input[name=email1]").val();
					var email2 = $("input[name=email2]").val();
					$.ajax({
						url:"/jsmi/empinput",
						data: {pno:pno, empname:empname, optradio:optradio, empno1:empno1, empno2:empno2, position:position, 
							hiredate:hiredate, phone1:phone1, phone2:phone2, phone3:phone3, add1:add1, add2:add2, add3:add3, email1:email1, email2:email2},
						type:"post",
						dataType:"JSON",
						contentType: "application/x-www-form-urlencoded; charset=UTF-8",
						success:function(data){
							console.log("json 성공");
							var jsonObj = JSON.stringify(data);
							var jsonArr = JSON.parse(jsonObj);
							
							$("#emptable").html("<tr><th>직원명</th><th>직원구분</th><th>직급</th><th>입사년월일</th><th>연락처</th><th>직원 주소지</th><th>이메일</th></tr>");
							for(var i in jsonArr.emplist){
								
								$("#emptable").html($("#emptable").html() + "<tr><td>" + decodeURIComponent(jsonArr.emplist[i].empname) + "</td><td>" + decodeURIComponent(jsonArr.emplist[i].emptype) + "</td><td>" + decodeURIComponent(jsonArr.emplist[i].position) + "</td><td>" + jsonArr.emplist[i].hiredate + "</td><td>" + jsonArr.emplist[i].phone + "</td><td>" + decodeURIComponent(jsonArr.emplist[i].empadd).split("+").join(" ") + "</td><td>" + jsonArr.emplist[i].email + "</td><td><input type='hidden' value='" + jsonArr.emplist[i].emppno +"'></td></tr>");
							}
						}/* ,
						error: function(request,status,error){
					        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					       } */
						
					});
				});
				
				function validate() {
					var wname = $("#empname");
					var han = /^[가-힣]+$/;

					if (!han.test(wname.value)) {
						console.log("여기요 : " + wname);
						alert("문자만 입력하셔야 합니다.");
						wname.value = "";
						wname.focus();
						return;
					}
				}
			</script>
</body>
</html>