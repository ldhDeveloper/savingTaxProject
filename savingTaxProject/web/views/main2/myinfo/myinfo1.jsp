<%@page import="com.sun.xml.internal.txw2.Document"%>
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
<title>myinfo1</title>
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
							href="/jsmi/views/main2/myinfo/myinfo1.jsp">회원정보</a></li>
						<li><a class="tabmenu"
							href="/jsmi/views/main2/myinfo/myinfo2.jsp">사업장 정보</a></li>
						<li><a class="tabmenu"
							href="/jsmi/views/main2/myinfo/myinfo3.jsp">거래처 정보</a></li>
					</ul>
				</div>
			</div>

			<form action="/jsmi/update.info1" method="post"
				onsubmit="return validate();" name="form">
				<input type="hidden" value="<%=loginUser.getPno()%>" name="pno">
				<%
					System.out.println("pno: " + loginUser.getPno());
				%>
				<%
					if (loginUser.getId_no() != null) {
				%>
				<%
					String[] idNo = loginUser.getId_no().split("-");
						for (String t : idNo) {
							System.out.println("idNo : " + t);
						}
						String[] email = loginUser.getEmail().split("@");
						for (String t : email) {
							System.out.println("email : " + t);
						}
						String[] paddress = loginUser.getPaddress().split("/");
						for (String t : paddress) {
							System.out.println("paddress : " + t);
						}
						String[] phone = loginUser.getPhone().split("-");
						for (String t : phone) {
							System.out.println("phone : " + t);
						}
				%>
				<table class="table table-condensed">
					<tbody>
						<tr>
							<td class="col-md-2"><h5>이름</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="username" value="<%=loginUser.getPname()%>" readonly></td>
							<td class="col-md-2"><h5>주민등록번호</h5></td>
							<td class="col-md-4"><div class="col-md-5">
									<input type="text" maxlength="6" class="form-control"
										OnKeyUp="checkidno();" name="idno" value="<%=idNo[0]%>">
								</div>
								<div class="col-md-1">
									<h5>-</h5>
								</div>
								<div class="col-md-5">
									<input type="password" maxlength="7" class="form-control"
										OnKeyUp="checkidno();" name="idno2" value="<%=idNo[1]%>">
								</div></td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>아이디</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="userid" value="<%=loginUser.getId()%>" readonly></td>
							<td class="col-md-6" colspan="2"></td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>비밀번호</h5></td>
							<td class="col-md-4"><input type="password"
								class="form-control" name="userpwd"
								value="<%=loginUser.getPwd()%>" readonly></td>
							<td class="col-md-6" colspan="2"></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>비밀번호 확인</h5></td>
							<td class="col-md-4"><input type="password"
								class="form-control" name="userpwd2"
								value="<%=loginUser.getPwd()%>" readonly></td>
							<td class="col-md-6" colspan="2"></td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>사업주 주소</h5></td>
							<td class="col-md-2"><div
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" maxlength="5"
										name="address" value="<%=paddress[0]%>">
								</div></td>
							<td class="col-md-8" colspan="2"><input type=button
								class="btn btn-primary" value="우편번호검색"
								onclick="sample4_execDaumPostcode();"></td>
						</tr>
						<tr>
							<td class="col-md-2">&nbsp;</td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="address2" value="<%=paddress[1]%>"></td>
							<td class="col-md-6" colspan="2"><input type="text"
								class="form-control" name="address3" value="<%=paddress[2]%>"></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>휴대폰번호</h5></td>
							<td class="col-md-6" colspan="2">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control phone" maxlength="3"
										OnKeyUp="checkph();" name="phone" value="<%=phone[0]%>">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control phone" maxlength="4"
										OnKeyUp="checkph();" name="phone2" value="<%=phone[1]%>">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control phone" maxlength="4"
										name="phone3" value="<%=phone[2]%>">
								</div>
								<div class="col-md-1"></div>
							</td>
							<td class="col-md-4"></td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>이메일</h5></td>
							<td class="col-md-6" colspan="2">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="email"
										value="<%=email[0]%>" readonly>
								</div>
								<div class="col-md-1" style="text-align: center">@</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="email2"
										value="<%=email[1]%>" readonly>
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
					<input type="submit" class="btn btn-warning" value="수정완료" onclick="return chk()">
					<input type="button" class="btn btn-primary" value="다음"
						onclick="location.href='/jsmi/views/main2/myinfo/myinfo2.jsp'"
						onclick="return chk()">
				</div>
				<%
					} else {
				%>
				<!-- 입력안했을때 -->
				<table class="table table-condensed">
					<tbody>
						<tr>
							<%
								String[] email = loginUser.getEmail().split("@");
							%>
							<td class="col-md-2"><h5>이름</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="username" value="<%=loginUser.getPname()%>" readonly></td>
							<td class="col-md-2"><h5>주민등록번호</h5></td>
							<td class="col-md-4"><div class="col-md-5">
									<input type="text" maxlength="6" class="form-control" OnKeyUp="checkidno();"
										name="idno" id="idno" required>
								</div>
								<div class="col-md-1">
									<h5>-</h5>
								</div>
								<div class="col-md-5">
									<input type="password" maxlength="7" class="form-control"
										name="idno2" id="idno2" required>
								</div></td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>아이디</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="userid" value="<%=loginUser.getId()%>" readonly></td>
							<td class="col-md-6" colspan="2"></td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>비밀번호</h5></td>
							<td class="col-md-4"><input type="password"
								class="form-control" name="userpwd"
								value="<%=loginUser.getPwd()%>" readonly></td>
							<td class="col-md-6" colspan="2"></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>비밀번호 확인</h5></td>
							<td class="col-md-4"><input type="password"
								class="form-control" name="userpwd2"
								value="<%=loginUser.getPwd()%>" readonly></td>
							<td class="col-md-6" colspan="2"></td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>사업주 주소</h5></td>
							<td class="col-md-2"><div
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" id="postnum"
										name="address" maxlength="5" required>
								</div></td>
							<td class="col-md-8" colspan="2"><input type=button
								class="btn btn-primary" value="우편번호검색"
								onclick="sample4_execDaumPostcode();"></td>
						</tr>
						<tr>
							<td class="col-md-2">&nbsp;</td>
							<td class="col-md-4"><input type="text" class="form-control"
								id="address1" name="address2" required></td>
							<td class="col-md-6" colspan="2"><input type="text"
								class="form-control" id="address2" name="address3" required></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>휴대폰번호</h5></td>
							<td class="col-md-6" colspan="2">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" maxlength="3" class="form-control phone"
										OnKeyUp="checkph();" name="phone" id="phone" required>
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" maxlength="4" class="form-control phone"
										OnKeyUp="checkph();" name="phone2" id="phone2" required>
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" maxlength="4" class="form-control phone"
										name="phone3" id="phone3" required>
								</div>
								<div class="col-md-1"></div>
							</td>
							<td class="col-md-4"></td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>이메일</h5></td>
							<td class="col-md-6" colspan="2">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="email" id="email"
										value="<%=email[0]%>" readonly>
								</div>
								<div class="col-md-1" style="text-align: center">@</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" id="email2"
										name="email2" value="<%=email[1]%>" readonly>
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
					<input type="submit" class="btn btn-primary" value="입력" onclick="return chk()">
					<button class="btn btn-danger" type="reset">취소</button>

				</div>
				<%
					}
				%>
			</form>
		</div>
	</div>
	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>

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


	function checkph() {
		var str = $('input[name=phone]').val().length;
		var str2 =$('input[name=phone2]').val().length;
		console.log(str);
		if (str == 3) 
			$('input[name=phone2]').focus();
		
		if(str2==4)
			$('input[name=phone3]').focus();
	}
	
	function checkidno() {
		var str = $('input[name=idno]').val().length;
		
		console.log(str);
		if (str == 6) 
			$('input[name=idno2]').focus();
	}
	
	function chk() {
		var re_idno = /^\d{6}$/;
		var re_idno2 = /^\d{7}$/;
		var address = /^[0-9]*$/;
		var tel = /^[0-9]{2,3}$/;
		var tel2 = /^[0-9]{3,4}$/;
		var tel3 = /^[0-9]{4}$/;
		

		var idno = $('input[name=idno]'), idno2 = $('input[name=idno2]'), address = $('input[name=address]'), 
		     phone = $('input[name=phone]'), phone2 = $('input[name=phone2]'), phone3 = $('input[name=phone3]');
		

		if (re_idno.test(idno.val()) != true) {
			alert("[주민등록번호 입력 오류] 숫자를 6자리 입력해주세요.");
			idno = "";
			idno.focus();
			return false;
		} 
		 if (re_idno2.test(idno2.val()) != true) {
			alert('[주민등록번호 입력 오류] 숫자를 7자리 입력해주세요.');
			idno2 = "";
			idno2.focus();
			return false;
		} 
		 if (address.test(address.val()) != true) {
			alert('[주소 입력 오류] 유효한 주소를 입력해주세요.');
			address="";
			address.focus();
			return false;
		}
		 if (tel.test(phone.val()) != true) {
			alert('[휴대폰번호 입력 오류] 유효한 번호를 입력해 주세요.');
			phone="";
			phone.focus();
			return false;
		}
		 if (tel2.test(phone2.val()) != true) {
			alert('[휴대폰번호 입력 오류] 유효한 번호를 입력해 주세요.');
			phone2="";
			phone2.focus();
			return false;
		} 
		 if (tel3.test(phone3.val()) != true) {
			alert('[휴대폰번호 입력 오류] 유효한 번호를 입력해 주세요.');
			phone3="";
			phone3.focus();
			return false;
		} 

		alert('입력성공!');
	}
	
</script>		
</body>
</html>