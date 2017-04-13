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

.h3class {
	font-family: ssangmunDong !important;
	font-size: 25pt;
}
</style>

<script type="text/javascript">
	$(function() {
		$('#edrop > li > a').click(function() {

			$('#menu1').html($(this).text() + "<span class='caret'></span>");
			if ($(this).text() == "직접입력") {
				$('#email2').val('');
			} else {
				$('#email2').val($(this).text());
			}
		});
	});

	function checkcno() {
		var str = $('input[name=cno]').val().length;
		var str2 = $('input[name=cno2]').val().length;
		console.log(str);
		if (str == 3)
			$('input[name=cno2]').focus();

		if (str2 == 2)
			$('input[name=cno3]').focus();
	}

	function checktel() {
		var str = $('input[name=tel]').val().length;
		var str2 = $('input[name=tel2]').val().length;
		console.log(str);
		if (str == 3)
			$('input[name=tel2]').focus();

		if (str2 == 4)
			$('input[name=tel3]').focus();
	}
	
	function checkph() {
		var str = $('input[name=phone]').val().length;
		var str2 = $('input[name=phone2]').val().length;
		console.log(str);
		if (str == 3)
			$('input[name=phone2]').focus();

		if (str2 == 4)
			$('input[name=phone3]').focus();
	}

	function chk() {
		var re = /^[가-힣]*$/;
		var re_pre = /^[가-힣a-zA-Z]+$/;
		var re_c = /^[0-9]{3}$/;
		var re_c2 = /^[0-9]{2}$/;
		var re_c3 = /^[0-9]{5}$/;
		var re_cst = /^[가-힣]+$/;
		var re_cty = /^[가-힣]+$/;
		var tel = /^[0-9]{2,3}$/;
		var tel2 = /^[0-9]{3,4}$/;
		var tel3 = /^[0-9]{4}$/;
		var address = /^[0-9]*$/;

		var cname = $('input[name=cname]'), 
		     president = $('input[name=president]'), 
		     cno = $('input[name=cno]'), 
		     cno2 = $('input[name=cno2]'), 
		     cno3 = $('input[name=cno3]'), 
		     cstatus = $('input[name=cstatus]'),
		     ctype = $('input[name=ctype]'), 
		     tel = $('input[name=tel]'), 
		     tel2 = $('input[name=tel2]'), 
		     tel3 = $('input[name=tel3]'), 
		     address = $('input[name=postnum]');

		if (re.test(cname.val()) != true) {
			alert("[상호 입력 오류] 한글만 입력해주세요.");
			cname = "";
			cname.focus();
			return false;
		}
		if (re_pre.test(president.val()) != true) {
			alert('[대표자명 입력 오류] 한글/영문을 입력해 주세요.');
			president = "";
			president.focus();
			return false;
		}
		if (re_c.test(cno.val()) != true) {
			alert('[사업자등록번호 입력 오류] 유효한 번호를 입력해 주세요.');
			cno = "";
			cno.focus();
			return false;
		}
		if (re_c2.test(cno2.val()) != true) {
			alert('[사업자등록번호 입력 오류] 유효한 번호를 입력해 주세요.');
			cno2 = "";
			cno2.focus();
			return false;
		}
		if (re_c3.test(cno3.val()) != true) {
			alert('[사업자등록번호 입력 오류] 유효한 번호를 입력해 주세요.');
			cno3 = "";
			cno3.focus();
			return false;
		}
		if (re_cst.test(cstatus.val()) != true) {
			alert('[업태 입력 오류] 유효한 업태를 입력해 주세요.');
			cstatus = "";
			cstatus.focus();
			return false;
		}
		if (re_cty.test(ctype.val()) != true) {
			alert('[종목 입력 오류] 유효한 종목을 입력해 주세요.');
			ctype = "";
			ctype.focus();
			return false;
		}
		if (tel.test(tel.val()) != true) {
			alert('[전화번호 입력 오류] 유효한 번호를 입력해 주세요.');
			tel = "";
			tel.focus();
			return false;
		}
		if (tel2.test(tel2.val()) != true) {
			alert('[전화번호 입력 오류] 유효한 번호를 입력해 주세요.');
			tel2 = "";
			tel2.focus();
			return false;
		}
		if (tel2.test(tel3.val()) != true) {
			alert('[전화번호 입력 오류] 유효한 번호를 입력해 주세요.');
			tel3 = "";
			tel3.focus();
			return false;
		}
		if (address.test(address.val()) != true) {
			alert('[주소 입력 오류] 유효한 주소를 입력해 주세요.');
			address = "";
			address.focus();
			return false;
		}
		
		if (!$(':input:radio[name=optradio]:checked').val()) {
			alert("개인/법인사업자 여부를 선택해주세요.");
			return false;
		}
		alert("입력 성공!");
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
						<li><a class="tabmenu"
							href="/jsmi/views/main2/myinfo/myinfo1.jsp">회원정보</a></li>
						<li><a class="tabmenu"
							href="/jsmi/views/main2/myinfo/myinfo2.jsp">사업장 정보</a></li>
						<li><a class="tabmenu"
							href="/jsmi/views/main2/myinfo/myinfo3Update.jsp">거래처 정보</a></li>
						<li><a class="tabmenu lactive"
							href="/jsmi/views/main2/myinfo/myinfo3.jsp">거래처 입력</a></li>
					</ul>
				</div>
			</div>


			<form action="/jsmi/insert.info3" method="post">
				<input type="hidden" value="<%=loginUser.getPno()%>" name="pno">
				<table class="table table-condensed" id="detaillist">
					<tbody>
						<tr>
							<td class="col-md-2"><h5>상호</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="cname" id="cname" required></td>
							<td class="col-md-2"><h5>대표자명</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="president" id="president" required></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>사업자 등록번호</h5></td>
							<td class="col-md-4">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno" id="cno"
										OnKeyUp="checkcno()" maxlength="3" required>
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno2" id="cno2"
										OnKeyUp="checkcno();" maxlength="2" required>
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno3" id="cno3"
										maxlength="5" required>
								</div>
							</td>
							<td class="col-md-2"><h5>개인/법인사업자 여부</h5></td>
							<td class="col-md-4">
								<div class="row">
									<div class="col-md-12">
										<div class="radio col-md-6">
											<label><input type="radio" name="optradio" value="개인">개인</label>
										</div>
										<div class="radio col-md-6" style="margin-top: 10px">
											<label><input type="radio" name="optradio" value="법인">법인</label>
										</div>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>업태</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="cstatus" id="cstatus" required></td>
							<td class="col-md-2"><h5>종목</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="ctype" id="ctype" required></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>거래처 전화번호</h5></td>
							<td class="col-md-4">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel" id="tel"
										OnKeyUp="checktel();" maxlength="3" required>
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel2" id="tel2"
										OnKeyUp="checktel();" maxlength="4" required>
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel3" id="tel3"
										maxlength="4" required>
								</div>
							</td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>거래처 주소</h5></td>
							<td class="col-md-2"><div
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" id="postnum"
										maxlength="5" required name="caddress">
								</div></td>
							<td class="col-md-8" colspan="2"><input type=button
								class="btn btn-primary" value="우편번호검색"
								onclick="sample4_execDaumPostcode();"></td>
						</tr>
						<tr>
							<td class="col-md-2">&nbsp;</td>
							<td class="col-md-4"><input type="text" class="form-control"
								id="address1" name="caddress2" required></td>
							<td class="col-md-6" colspan="2"><input type="text"
								class="form-control" id="address2" name="caddress3" required></td>
						<tr>
							<td class="col-md-2"><h5>세금계산용 이메일</h5></td>
							<td class="col-md-6" colspan="2">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="email" id="email"
										required>
								</div>
								<div class="col-md-1" style="text-align: center">@</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" id="email2" required
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
					<input type="submit" class="btn btn-primary" value="입력"
						onclick="return chk()">
					<button class="btn btn-danger" type="reset">취소</button>
					<!-- <input type="button" class="btn btn-warning" value="목록보기 및 수정"
						onclick="location.href='/jsmi/views/main2/myinfo/myinfo3Update.jsp'"> -->
				</div>
			</form>

		</div>

	</div>
	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>
</html>