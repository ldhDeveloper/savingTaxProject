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

$(function(){
	var re=/^[가-힣]+$/;
    var re_pre=/^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
    var re_c=/^[0-9]{3}$/;
    var re_c2=/^[0-9]{2}$/;
    var re_c3=/^[0-9]{5}$/;
    var re_cst=/^[가-힣]+$/;
    var tel=/^[0-9]{3}$/;
    var tel2=/^[0-9]{3,4}$/;
    var tel3=/^[0-9]{4}$/;
	
	var cname=$('#cname'), 
	      president=$('#president'), 
	      cno=$('#cno'), 
	      cno2=$('#cno2'), 
	      cno3=$('#cno3'),
	      cstatus=$('#cstatus'),
	      ctype=$('#ctype'),
	      tel=$('#tel'),
	      tel2=$('#tel2'),
	      tel3=$('#tel3'),
	      oday=$('#oday'),
	      address=$('#postnum'),
	      address2=$('#address1'),
	      address3=$('#address2'),
	      wno=$('#wno'),
	      irate=$('#irate');
	      
	form.submit(function(){
		if (re.test(cname.val()) != true) {
			alert("한글만 입력해주세요.");
			cname="";
			cname.focus();
			return false;
		} else if(re_pw.test(upw.val()) != true) { // 비밀번호 검사
			alert('[PW 입력 오류] 유효한 PW를 입력해 주세요.');
			upw.focus();
			return false;
		} else if(re_mail.test(mail.val()) != true) { // 이메일 검사
			alert('[Email 입력 오류] 유효한 이메일 주소를 입력해 주세요.');
			mail.focus();
			return false;
		} else if(re_url.test(url.val()) != true) { // URL 검사
			alert('[Web 입력 오류] 유효한 웹 사이트 주소를 입력해 주세요.');
			url.focus();
			return false;
		} else if(re_tel.test(tel.val()) != true) { // 전화번호 검사
			alert('[Tel 입력 오류] 유효한 전화번호를 입력해 주세요.');
			tel.focus();
			return false;
		}
	});
	      
});
function send(){
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
						<li><a class="tabmenu lactive"
							href="/jsmi/views/myinfo/main2/myinfo2.jsp">사업장 정보</a></li>
						<li><a class="tabmenu"
							href="/jsmi/views/main2/myinfo/myinfo3.jsp">거래처 정보</a></li>
					</ul>
				</div>
			</div>
			<form action="/jsmi/update.info2" method="post" onsubmit="return send();">
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
							&& loginUser.getOday() != null && loginUser.getCaddress() != null && loginUser.getTaxType() != null
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
									for (String t : caddress) {
										System.out.println("caddress : " + t);
									}
							%>
							<td class="col-md-2"><h5>사업자 등록번호</h5></td>
							<td class="col-md-4">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno"
										value="<%=cno[0]%>">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno2"
										value="<%=cno[1]%>">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno3"
										value="<%=cno[2]%>">
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
								name="cstatus" value="<%=loginUser.getCstatus()%>"></td>
							<td class="col-md-2"><h5>종목</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="ctype" value="<%=loginUser.getCtype()%>"></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>사업장 전화번호</h5></td>
							<td class="col-md-4">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel"
										value="<%=tel[0]%>">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel2"
										value="<%=tel[1]%>">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel3"
										value="<%=tel[2]%>">
								</div>
							</td>
							<td class="col-md-2"><h5>개업일</h5></td>
							<td class="col-md-4"><input type="date" class="form-control"
								name="oday" value="<%=loginUser.getOday()%>"></td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>사업장 주소</h5></td>
							<td class="col-md-2"><div
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" id="postnum"
										name="caddress" value="<%=caddress[0]%>">
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
								value="<%=caddress[2]%>"></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>업종코드</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="wno" value="<%=loginUser.getWno()%>"></td>
							<td class="col-md-2"><h5>관할세무서</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>과세유형</h5></td>
							<td class="col-md-4">
								<div class="row">
									<div class="col-md-12">
										<%
											if (loginUser.getTaxType() == "일반과세자") {
										%>
										<div class="radio col-md-6">
											<label><input type="radio" name="optradio2" checked>일반과세자</label>
										</div>
										<div class="radio col-md-6" style="margin-top: 10px">
											<label><input type="radio" name="optradio2">간이과세자</label>
										</div>
										<%
											} else {
										%>
										<div class="radio col-md-6">
											<label><input type="radio" name="optradio2">일반과세자</label>
										</div>
										<div class="radio col-md-6" style="margin-top: 10px">
											<label><input type="radio" name="optradio2" checked>간이과세자</label>
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
											if (loginUser.getNotax_yn() == "과세") {
										%>
										<div class="radio col-md-4">
											<label><input type="radio" name="optradio3" checked>과세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" name="optradio3">면세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" name="optradio3">과세+면세</label>
										</div>
										<%
											} else if (loginUser.getNotax_yn() == "면세") {
										%>
										<div class="radio col-md-4">
											<label><input type="radio" name="optradio3">과세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" name="optradio3" checked>면세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" name="optradio3">과세+면세</label>
										</div>
										<%
											} else {
										%>
										<div class="radio col-md-4">
											<label><input type="radio" name="optradio3">과세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" name="optradio3">면세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" name="optradio3" checked>과세+면세</label>
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
							<td class="col-md-4"><input type="text" class="form-control"
								name="irate" value="<%=loginUser.getIrate()%>"></td>
							<td class="col-md-2"></td>
							<td class="col-md-4"></td>
						</tr>
				</table>
				<div class="btngroup">
					<input type="submit" class="btn btn-warning" value="수정완료"
						onclick="location.href='/jsmi/views/main2/menu/main2.html'">
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
									<input type="text" class="form-control" name="cno" id="cno" required>
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno2" id="cno2" required>
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno3" id="cno3" required>
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
									<input type="text" class="form-control" name="tel" id="tel" required>
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel2" id="tel2" required>
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel3" id="tel3" required>
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
										name="caddress" required>
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

						</tr>
						<tr>
							<td class="col-md-2"><h5>업종코드</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="wno" id="wno" required></td>
							<td class="col-md-2"><h5>관할세무서</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>과세유형</h5></td>
							<td class="col-md-4">
								<div class="row">
									<div class="col-md-12">
										<div class="radio col-md-6">
											<label><input type="radio" name="optradio"
												value="일반과세자" id="nomal">일반과세자</label>
										</div>
										<div class="radio col-md-6" style="margin-top: 10px">
											<label><input type="radio" name="optradio"
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
											<label><input type="radio" name="optradio2" id="tax"
												value="과세">과세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" name="optradio2" id="df"
												value="면세">면세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" name="optradio2" id="tdf"
												value="과면세">과세+면세</label>
										</div>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>산재보험요율</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="irate" id="irate" required></td>
							<td class="col-md-2"></td>
							<td class="col-md-4"></td>
						</tr>
					</tbody>
				</table>
				<div class="btngroup">
					<input type="submit" class="btn btn-primary" value="입력완료"
						onclick="location.href='/jsmi/views/main2/menu/main2.html'">
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