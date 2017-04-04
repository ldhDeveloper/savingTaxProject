<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/jsmi/css/main2/bootstrap.min.css" rel="stylesheet">
<link href="/jsmi/css/main2/styles.css" rel="stylesheet">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript " src="/jsmi/js/main2/bootstrap.min.js"></script>
<script type="text/javascript" src="/jsmi/js/main2/zipcode.js"></script>

<title>myinfo3</title>
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
.
</style>

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
		});
	});
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
		<% System.out.println("pno: "+loginUser.getPno());%>
		<script>
		$(function(){
			$('#detail').click(function(){
				var owner = <%= loginUser.getPno()%>
				 $.ajax({
					 url: "/jsmi/m3list" ,
					 data:{owner:owner},
					 type: "get",
					 datatype: "json",
					 success: function(data){
							console.log("json 성공");
							console.log("data : " + data);
							var jsonObj = JSON.stringify(data);
							var jsonArr = JSON.parse(jsonObj);
						    var no = 1;
							$("#detaillist").html("<tr><th>번호</th><th>상호</th><th>대표자명</th><th>사업자등록번호</th><th>업태</th><th>종목</th><th>전화번호</th><th>주소</th><th>이메일</th></tr>");
							
							for(var i in jsonArr.list){
								console.log(jsonArr.list[i].atype);
								$("#detaillist").html( $("#detaillist").html() 
										+ "<tr style='cursor:pointer' id='(\"" + jsonArr.list[i].pno + "\")'><td>"+ jsonArr.list[i].pno + "</td><td>" + decodeURIComponent(jsonArr.list[i].cname) + "</td><td>" + decodeURIComponent(jsonArr.list[i].president) 
										+ "</td><td>"+ decodeURIComponent(jsonArr.list[i].cno) + "</td><td>" + decodeURIComponent(jsonArr.list[i].cstatus) + "</td><td>" + decodeURIComponent(jsonArr.list[i].ctype) 
										+ "</td><td>" + decodeURIComponent(jsonArr.list[i].tel) + "</td><td>" +decodeURIComponent(jsonArr.list[i].caddress).split('&') + "</td><td>" + decodeURIComponent(jsonArr.list[i].email) 
										+ "</td></tr>" );
							}
						},
						error: function(request,status,error){
					        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					    }
				 })
			});
			
			$(function(){
				$('tr').click(function(){
					$.ajax({
						url: "/jsmi/detailupdate",
						data: {pno:$(this).filter(':first-child').val()},
						type: "get",
						datatype: "json",
						success: function(data){
							var jsonObj = JSON.stringify(data);
							
							$('#cname').text(data.cname);
							$('#president').text(data.president);
						},
						error: function(request,status,error){
					        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					    }
						
					})
					
				});
			}); 
			
		});

		
			
		
		
		</script>
		
		<div class="section">
			<br>
			<div class="navbar navbar-default">
				<div class="container-fluid">
					<ul class="nav navbar-nav">
						<li><a class="tabmenu"
							href="/jsmi/views/main2/myinfo/myinfo1.jsp">회원정보</a></li>
						<li><a class="tabmenu"
							href="/jsmi/views/main2/myinfo/myinfo2.jsp">사업장 정보</a></li>
						<li><a class="tabmenu lactive"
							href="/jsmi/views/main2/myinfo/myinfo3.jsp">거래처 정보</a></li>
					</ul>
				</div>
			</div>
			

			<form action="/jsmi/insert.info3" method="post">
			<input type="hidden" value="<%=loginUser.getPno() %>" name="pno">
				<table class="table table-condensed" id="detaillist">
					<tbody>
						<tr>
							<td class="col-md-2"><h5>상호</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="cname" id="cname"></td>
							<td class="col-md-2"><h5>대표자명</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="president" id="president"></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>사업자 등록번호</h5></td>
							<td class="col-md-4">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno" id="cno">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno2" id="cno2">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno3" id="cno3">
								</div>
							</td>
							<td class="col-md-2"><h5>개인/법인사업자 여부</h5></td>
							<td class="col-md-4">
								<div class="row">
									<div class="col-md-12">
										<div class="radio col-md-6">
											<label><input type="radio" name="optradio" value="1" id="individual">개인</label>
										</div>
										<div class="radio col-md-6" style="margin-top: 10px">
											<label><input type="radio" name="optradio" value="2" id="corporate">법인</label>
										</div>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>업태</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="cstatus" id="cstatus"></td>
							<td class="col-md-2"><h5>종목</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="ctype" id="ctype"></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>거래처 전화번호</h5></td>
							<td class="col-md-4">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel" id="tel">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel2" id="tel2">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel3" id="tel3">
								</div>
							</td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>거래처 주소</h5></td>
							<td class="col-md-2"><div
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" id="postnum"
										name="caddress" >
								</div></td>
							<td class="col-md-8" colspan="2"><input type=button
								class="btn btn-primary" value="우편번호검색"
								onclick="sample4_execDaumPostcode();"></td>
						</tr>
						<tr>
							<td class="col-md-2">&nbsp;</td>
							<td class="col-md-4"><input type="text" class="form-control"
								id="address1" name="caddress2"></td>
							<td class="col-md-6" colspan="2"><input type="text"
								class="form-control" id="address2" name="caddress3"></td>
						<tr>
							<td class="col-md-2"><h5>세금계산용 이메일</h5></td>
							<td class="col-md-6" colspan="2">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="email" id="email">
								</div>
								<div class="col-md-1" style="text-align: center">@</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" id="email2"
										name="email2">
								</div>
								<div class="col-md-1" style="display: block"></div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<div class="dropdown">
										<button class="btn btn-primary dropdown-toggle" type="button"
											id="menu1" data-toggle="dropdown">
											직접입력 <span class="caret"></span>
										</button>
										<ul class="dropdown-menu" role="menu" aria-labelledby="menu1"
											id="edrop">
											<li role="presentation"><a role="menuitem" tabindex="-1"
												href="#">직접입력</a></li>
											<li role="presentation"><a role="menuitem" tabindex="-1"
												href="#">naver.com</a></li>
											<li role="presentation"><a role="menuitem" tabindex="-1"
												href="#">google.com</a></li>
											<li role="presentation"><a role="menuitem" tabindex="-1"
												href="#">hanmail.net</a></li>
											<li role="presentation"><a role="menuitem" tabindex="-1"
												href="#">yahoo.co.kr</a></li>
										</ul>
									</div>
								</div>
							</td>
							<td class="col-md-4"></td>
						</tr>

					</tbody>
				</table>

				<div class="btngroup">
					<input type="submit" class="btn btn-primary" value="입력">
					<button class="btn btn-danger" type="reset">취소</button>
					<input type="button" class="btn btn-warning" value="목록" id="detail">
				</div>
			</form>

		</div>

	</div>
	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>
</html>