<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Party party = (Party) request.getAttribute("p");
%>
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

<title>myinfo2</title>

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

<script>
	function checkcno() {
		var str = $('input[name=cno]').val().length;
		var str2 = $('input[name=cno2]').val().length;
		console.log(str);
		if (str == 3)
			$('input[name=cno2]').focus();

		if (str2 == 2)
			$('input[name=cno3]').focus();
	}

	function checkph() {
		var str = $('input[name=tel]').val().length;
		var str2 = $('input[name=tel2]').val().length;
		console.log(str);
		if (str == 3)
			$('input[name=tel2]').focus();

		if (str2 == 4)
			$('input[name=tel3]').focus();
	}
	
	
	function chk() {
		var re = /^[가-힣a-zA-Z]+$/;
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

		var cname = $('input[name=cname]'), president = $('input[name=president]'), cno = $('input[name=cno]'), cno2 = $('input[name=cno2]'), cno3 = $('input[name=cno3]'), cstatus = $('input[name=cstatus]'), ctype = $('input[name=ctype]'), tel = $('input[name=tel]'), tel2 = $('input[name=tel2]'), tel3 = $('input[name=tel3]'), address = $('input[name=postnum]');

		if (re.test(cname.val()) != true) {
			alert("[상호 입력 오류] 한글/영문을 입력해주세요.");
			cname = "";
			cname.focus();
			return false;
		}
		if (re_pre.test(president.val()) != true) {
			alert('[대표자명 입력 오류] 한글/영문을 입력해주세요.');
			president = "";
			president.focus();
			return false;
		}
		if (re_c.test(cno.val()) != true) {
			alert('[사업자등록번호 입력 오류] 유효한 번호를 입력해주세요.');
			cno = "";
			cno.focus();
			return false;
		}
		if (re_c2.test(cno2.val()) != true) {
			alert('[사업자등록번호 입력 오류] 유효한 번호를 입력해주세요.');
			cno2 = "";
			cno2.focus();
			return false;
		}
		if (re_c3.test(cno3.val()) != true) {
			alert('[사업자등록번호 입력 오류] 유효한 번호를 입력해주세요.');
			cno3 = "";
			cno3.focus();
			return false;
		}
		if (re_cst.test(cstatus.val()) != true) {
			alert('[업태 입력 오류] 유효한 업태를 입력해주세요.');
			cstatus = "";
			cstatus.focus();
			return false;
		}
		if (re_cty.test(ctype.val()) != true) {
			alert('[종목 입력 오류] 유효한 종목을 입력해주세요.');
			ctype = "";
			ctype.focus();
			return false;
		}
		if (tel.test(tel.val()) != true) {
			alert('[전화번호 입력 오류] 유효한 번호를 입력해주세요.');
			tel = "";
			tel.focus();
			return false;
		}
		if (tel2.test(tel2.val()) != true) {
			alert('[전화번호 입력 오류] 유효한 번호를 입력해주세요.');
			tel2 = "";
			tel2.focus();
			return false;
		}
		if (tel2.test(tel3.val()) != true) {
			alert('[전화번호 입력 오류] 유효한 번호를 입력해주세요.');
			tel3 = "";
			tel3.focus();
			return false;
		}
		if (address.test(address.val()) != true) {
			alert('[주소 입력 오류] 유효한 주소를 입력해주세요.');
			address = "";
			address.focus();
			return false;
		}
		
		/* if (!$('input:radio[name=optradio2]').is(':checked')) {
			alert("과세유형을 선택해주세요.");
			return false;
		} 
		else if (!$('input:radio[name=optradio2]').is(':checked')) {
			alert("면세여부를 선택해주세요.");
			return false;
		} */
		
	}
	function radio(){
		var chk1 = $('input[name=optradio2]').is(":checked");
		var chk2=$('input[name=optradio3]').is(":checked");
		console.log("chk1의 상태 : " + chk1);
		console.log("chk2의 상태 : " + chk2);
		
		if(chk1 == false){
			  alert("과세유형을 선택해주세요.");
			  chk1 = false;
		} else if(chk1 == true){
			chk1 = true;
		}  
			
		if(chk2 == false){
			 alert("면세여부를 선택해주세요.");
			 chk2 = false;
		} else if(chk2 == true){
			chk2 = true;
		}
		
		if(chk1 == true && chk2 == true){
			return true;
		} else {
			return false;
		}
		
		
		/* if(!$(':input:radio[name=optradio2]:checked').val()) {
		    alert("과세유형을 선택해주세요.");
		    return false;
		}
		if(!$(':input:radio[name=optradio3]:checked').val()) {
		    alert("면세여부를 선택해주세요.");
		    return false;
		} */
	}
	
	$(function(){
		$('#wnselect ul li a').click(function(){
  			$('button[name=wselect]').html($(this).text() + "<span class='caret'></span>");
  			$('button[name=wselect]').val($(this).text());
  			$('#wname').val($(this).text());
  		});
		
		$('#address2').focusout(function(){
			console.log("아웃됨");
			var add = $('#address1').val();
			var splitadd = add.split(' ');
			var city = splitadd[1].substring(0, splitadd[1].length -1) + "세무서";
			$('#taxoffice').val(city);
		});
	})

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
						<li><a class="tabmenu lactive"
							href="/jsmi/views/main2/myinfo/myinfo2.jsp">사업장 정보</a></li>
						<li><a class="tabmenu"
							href="/jsmi/views/main2/myinfo/myinfo3Update.jsp">거래처 정보</a></li>
						<li><a class="tabmenu"
							href="/jsmi/views/main2/myinfo/myinfo3.jsp">거래처 입력</a></li>
					</ul>
				</div>
			</div>
			<form action="/jsmi/update.info2" method="post" onsubmit="return radio()">
				<input type="hidden" name="userid" value="<%=loginUser.getId()%>">
				<input type="hidden" name="pno" value="<%=loginUser.getPno()%>">
				<%
					System.out.println("userid,userpno myinfo2: " + loginUser.getId() + loginUser.getPno());
				%>
				<%
					System.out.println("myinfo2 session : " + loginUser);
					System.out.println(loginUser.getCname() + ", " + loginUser.getPresident() + ", " + loginUser.getCno() + ", "
							+ loginUser.getCstatus() + ", " + loginUser.getCtype() + ", " + loginUser.getTel() + ", "
							+ loginUser.getOday() + ", " + loginUser.getCaddress() + ", " + loginUser.getTaxType() + ", "
							+ loginUser.getNotax_yn());
					if (loginUser.getCname() != null && loginUser.getPresident() != null && loginUser.getCno() != null
							&& loginUser.getCstatus() != null && loginUser.getCtype() != null && loginUser.getTel() != null
							&& loginUser.getOday() != null && loginUser.getCaddress() != null 
							&& loginUser.getNotax_yn() != null) {
						
						System.out.println("실행됨");
				%>
				<table class="table table-condensed">
					<tbody>
						<tr>
							<td class="col-md-2"><h5>상호</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="cname" value="<%=loginUser.getCname()%>"></td>
							<td class="col-md-2"><h5>대표자명</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="president" value="<%=loginUser.getPresident()%>"></td>

						</tr>
						<tr>
							<%
								String[] cno = loginUser.getCno().split("-");
									for (String t : cno) {
										System.out.println("cno : " + t);
									}
									String[] tel = loginUser.getTel().split("-");
									for (String t : tel) {
										System.out.println("tel : " + t);
									}
									String[] caddress = loginUser.getCaddress().split("/");
									String[] csp = caddress[1].split(" ");
									String tof = csp[1].substring(0, csp[1].length() -1) + "세무서";
									for (String t : caddress) {
										System.out.println("caddress : " + t);
									}
									System.out.println("taxtype : " + loginUser.getTaxType());
									System.out.println("notax_yn : " + loginUser.getNotax_yn());
							%>
							<td class="col-md-2"><h5>사업자 등록번호</h5></td>
							<td class="col-md-4">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno"
										maxlength="3" required OnKeyUp="checkcno();"
										value="<%=cno[0]%>">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno2"
										maxlength="2" required OnKeyUp="checkcno();"
										value="<%=cno[1]%>">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno3"
										maxlength="5" required value="<%=cno[2]%>">
								</div>
							</td>
							<td class="col-md-2"></td>
							<td class="col-md-4">
								<div class="row">
									<div class="col-md-12"></div>
								</div>
							</td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>업태</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="cstatus" value="<%=loginUser.getCstatus()%>" required></td>
							<td class="col-md-2"><h5>종목</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="ctype" value="<%=loginUser.getCtype()%>" required></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>사업장 전화번호</h5></td>
							<td class="col-md-4">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel"
										OnKeyUp="checkph();" maxlength="3" required
										value="<%=tel[0]%>">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel2"
										OnKeyUp="checkph();" maxlength="4" required
										value="<%=tel[1]%>">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel3"
										maxlength="4" value="<%=tel[2]%>" required>
								</div>
							</td>
							<td class="col-md-2"><h5>개업일</h5></td>
							<td class="col-md-4"><input type="date" class="form-control"
								name="oday" value="<%=loginUser.getOday()%>" required></td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>사업장 주소</h5></td>
							<td class="col-md-2"><div
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" id="postnum"
										name="caddress" value="<%=caddress[0]%>" maxlength="5"
										required>
								</div></td>
							<td class="col-md-8" colspan="2"><input type=button
								class="btn btn-primary" value="우편번호검색"
								onclick="sample4_execDaumPostcode();"></td>
						</tr>
						<tr>
							<td class="col-md-2">&nbsp;</td>
							<td class="col-md-4"><input type="text" class="form-control"
								id="address1" name="caddress2" value="<%=caddress[1]%>"></td>
							<td class="col-md-6" colspan="2"><input type="text"
								class="form-control" id="address2" name="caddress3"
								value="<%=caddress[2]%>" required></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>업종구분</h5></td>
							<td class="col-md-4">
							 <input type="text" class="form-control"
								name="wname" value="<%=loginUser.getWname()%>" required>			
							  </td>
							<td class="col-md-2"><h5>관할세무서</h5></td>
							<td class="col-md-4"><input type="text" class="form-control" value="<%= tof %>"></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>과세유형</h5></td>
							<td class="col-md-4">
								<div class="row">
									<div class="col-md-12">
										<%
											if (loginUser.getTaxType().equals("일반과세자")) {
											System.out.println("과세유형 : " + loginUser.getTaxType());
										%>
										<div class="radio col-md-6">
											<label><input type="radio" value="일반과세자" name="optradio2" checked>일반과세자</label>
										</div>
										<div class="radio col-md-6" style="margin-top: 10px">
											<label><input type="radio" value="간이과세자" name="optradio2">간이과세자</label>
										</div>
										<%
											} else {
										%>
										<div class="radio col-md-6">
											<label><input type="radio" value="일반과세자" name="optradio2">일반과세자</label>
										</div>
										<div class="radio col-md-6" style="margin-top: 10px">
											<label><input type="radio" value="간이과세자" name="optradio2" checked>간이과세자</label>
										</div>
										<%
											}
										%>
									</div>
								</div>
							</td>
							<td class="col-md-2"><h5>면세여부</h5></td>
							<td class="col-md-4">
								<div class="row">
									<div class="col-md-12">
										<%
											if (loginUser.getNotax_yn().equals("과세")) {
										%>
										<div class="radio col-md-4">
											<label><input type="radio" value="과세" name="optradio3" checked>과세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" value="면세" name="optradio3">면세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" value="과세+면세" name="optradio3">과세+면세</label>
										</div>
										<%
											} else if (loginUser.getNotax_yn().equals("면세")) {
										%>
										<div class="radio col-md-4">
											<label><input type="radio" value="과세" name="optradio3">과세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" value="면세" name="optradio3" checked>면세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" value="과세+면세" name="optradio3">과세+면세</label>
										</div>
										<%
											} else {
										%>
										<div class="radio col-md-4">
											<label><input type="radio" value="과세" name="optradio3">과세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" value="면세" name="optradio3">면세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" value="과세+면세" name="optradio3" checked>과세+면세</label>
										</div>
										<%
											}
										%>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>산재보험요율</h5></td>
							<td class="col-md-4"><input type="number"
								class="form-control" name="irate"
								value="<%=loginUser.getIrate()%>" required></td>
							<td class="col-md-2"></td>
							<td class="col-md-4"></td>
						</tr>
				</table>
				<div class="btngroup">
					<input type="submit" class="btn btn-warning" value="수정완료"
						onclick="return chk()">
				</div>
				<%
					} else {
						System.out.println("실행ㄴㄴ");
				%>
				<table class="table table-condensed">
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
										maxlength="3" OnKeyUp="checkcno();" required>
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno2" id="cno2"
										maxlength="2" OnKeyUp="checkcno();" required>
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno3" id="cno3"
										maxlength="5" required>
								</div>
							</td>
							<td class="col-md-2"></td>
							<td class="col-md-4">
								<div class="row">
									<div class="col-md-12"></div>
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
							<td class="col-md-2"><h5>사업장 전화번호</h5></td>
							<td class="col-md-4">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel" id="tel"
										OnKeyUp="checkph();" maxlength="3" required>
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel2" id="tel2"
										OnKeyUp="checkph();" maxlength="4" required>
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel3" id="tel3"
										maxlength="4" required>
								</div>
							</td>
							<td class="col-md-2"><h5>개업일</h5></td>
							<td class="col-md-4"><input type="date" class="form-control"
								name="oday" id="oday" required></td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>사업장 주소</h5></td>
							<td class="col-md-2"><div
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" id="postnum"
										name="caddress" maxlength="5" readonly required>
								</div></td>
							<td class="col-md-8" colspan="2"><input type=button
								class="btn btn-primary" value="우편번호검색"
								onclick="sample4_execDaumPostcode();"></td>
						</tr>
						<tr>
							<td class="col-md-2">&nbsp;</td>
							<td class="col-md-4"><input type="text" class="form-control"
								id="address1" name="caddress2" readonly required></td>
							<td class="col-md-6" colspan="2"><input type="text"
								class="form-control" id="address2" name="caddress3" required></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>업종코드</h5></td>
							<td class="col-md-4">
							<div class="col-md-6" id="wnameform">
							<input type="text"
								class="form-control" name="wname" id="wname" readonly required >
							 </div>
							 <div class="dropdown" id=wnselect class="col-md-6">
    							<button class="btn btn-default dropdown-toggle" name="wselect" type="button" value="" data-toggle="dropdown">업종선택
    							<span class="caret"></span></button>
    							<ul class="dropdown-menu">
      								<li><a href="#">전기</a></li>
      								<li><a href="#">음식점</a></li>
      								<li><a href="#">제조업</a></li>
      								<li><a href="#">건설업</a></li>
      								<li><a href="#">기타</a></li>
							    </ul>
							  </div>
							 </td>
							<td class="col-md-2"><h5>관할세무서</h5></td>
							<td class="col-md-4"><input type="text" class="form-control" id="taxoffice" readonly></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>과세유형</h5></td>
							<td class="col-md-4">
								<div class="row">
									<div class="col-md-12">
										<div class="radio col-md-6">
											<label><input type="radio" name="optradio2"
												value="일반과세자" id="nomal">일반과세자</label>
										</div>
										<div class="radio col-md-6" style="margin-top: 10px">
											<label><input type="radio" name="optradio2"
												value="간이과세자" id="ease">간이과세자</label>
										</div>
									</div>
								</div>
							</td>
							<td class="col-md-2"><h5>면세여부</h5></td>
							<td class="col-md-4">
								<div class="row">
									<div class="col-md-12">
										<div class="radio col-md-4">
											<label><input type="radio" name="optradio3" id="tax"
												value="과세">과세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" name="optradio3" id="df"
												value="면세">면세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" name="optradio3" id="tdf"
												value="과세+면세">과세+면세</label>
										</div>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>산재보험요율</h5></td>
							<td class="col-md-4"><input type="number" value="0.5"
								max="1" class="form-control" name="irate" id="irate" required></td>
							<td class="col-md-2"></td>
							<td class="col-md-4"></td>
						</tr>
					</tbody>
				</table>
				<div class="btngroup">
					<input type="submit" class="btn btn-primary" value="입력완료"
						onclick="return chk()">
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