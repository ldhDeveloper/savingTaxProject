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
<script type="text/javascript" src="/jsmi/js/jquery-3.1.1.min.js"></script>
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

	function validate() {

		var re = /^[0-9]{6}+$/;
		var re1 = /^[0-9]{7}+$/;
		var re2 = /^[0-9]+$/;
		var re3 = /^01([0|1|6|7|8|9]?)$/;
		var re4 = /^?([0-9]{3,4})+$/;
		var re5 = /^?([0-9]{4})$/;

		var idno = $('input[name=idno]'), 
		      idno2 = $('input[name=idno2]'), 
		      address = $('input[name=address]'), 
		      address2 = $('input[name=address2]'),
		      address3 = $('input[name=address3]'), 
		      phone = $('input[name=phone]'), 
		      phone2 = $('input[name=phone2]'), 
		      phone3 = $('input[name=phone3]');

		if (!re.test(idno.val())) {
			alert("주민등록번호 앞자리는 숫자 6자리를 입력해주세요.");
			idno.value = "";
			$('#idno').focus();
			return false;
		} else if (!re1.test(idno2.val())) {
			alert("주민등록번호 뒷자리는 숫자 7자리를 입력해주세요.");
			idno2.value = "";
			$('#idno2').focus();
			return false;
		} else if (!re2.test(address.val())) {
			alert("우편번호에는 숫자만 입력해주세요.");
			address.value = "";
			$('#postnum').focus();
			return false;
		}

		if (!re3.test(phone.val())) {
			alert("숫자 3개만 입력해주세요.");
			phone.value = "";
			$('#phone').focus();
			return false;
		} else {
			$('#phone2').focus();
		}

		if (!re4.test(phone2.val())) {
			alert("숫자 3개 또는 4개만 입력해주세요.");
			phone2.value = "";
			$('#phone2').focus();
			return false;
		} else {
			$('#phone3').focus();
		}

		if (!re5.test(phone3.val())) {
			alert("숫자 4개만 입력해주세요.");
			phone3.value = "";
			$('#phone3').focus();
			return false;
		}
		alert("성공");
	}
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
							href="/jsmi/views/main2/myinfo/myinfo1.jsp">회원정보</a></li>
						<li><a class="tabmenu"
							href="/jsmi/views/main2/myinfo/myinfo2.jsp">사업장 정보</a></li>
						<li><a class="tabmenu"
							href="/jsmi/views/main2/myinfo/myinfo3.jsp">거래처 정보</a></li>
					</ul>
				</div>
			</div>

			<form action="/jsmi/update.info1" method="post"
				onsubmit="return validate();">
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
									<input type="text" class="form-control" name="idno"
										value="<%=idNo[0]%>">
								</div>
								<div class="col-md-1">
									<h5>-</h5>
								</div>
								<div class="col-md-5">
									<input type="password" class="form-control" name="idno2"
										value="<%=idNo[1]%>">
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
									<input type="text" class="form-control" name="address"
										value="<%=paddress[0]%>">
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
									<input type="text" class="form-control" name="phone"
										value="<%=phone[0]%>">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="phone2"
										value="<%=phone[1]%>">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="phone3"
										value="<%=phone[2]%>">
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
					<input type="submit" class="btn btn-warning" value="수정완료">
					<input type="button" class="btn btn-primary" value="다음"
						onclick="location.href='/jsmi/views/main2/myinfo/myinfo2.jsp'"
						onclick="validate();">
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
									<input type="text" class="form-control" name="idno" id="idno"
										required>
								</div>
								<div class="col-md-1">
									<h5>-</h5>
								</div>
								<div class="col-md-5">
									<input type="password" class="form-control" name="idno2"
										id="idno2" required>
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
										name="address" required>
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
									<input type="text" class="form-control" name="phone" id="phone"
										required>
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="phone2"
										id="phone2" required>
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="phone3"
										id="phone3" required>
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
					<input type="submit" class="btn btn-primary" value="다음">
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


</body>
</html>