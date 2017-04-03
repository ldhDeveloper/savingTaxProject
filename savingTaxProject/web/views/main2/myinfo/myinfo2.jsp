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
			<form action="/jsmi/update.info2" method="post">
				<input type="hidden" name="userid" value="<%=loginUser.getId()%>">
				<input type="hidden" name="pno" value="<%=loginUser.getPno()%>">
				<table class="table table-condensed">
					<tbody>
						<%
							if (loginUser.getCname() != null && loginUser.getPresident() != null && loginUser.getCno() != null
									&& loginUser.getCstatus() != null && loginUser.getCtype() != null && loginUser.getTel() != null
									&& loginUser.getOday() != null && loginUser.getCaddress() != null && loginUser.getTaxtype() != 0
									&& loginUser.getNotax_yn() != 0) {
						%>

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
									String[] tel = loginUser.getTel().split("-");
									String[] caddress = loginUser.getCaddress().split("&");
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
											if (loginUser.getTaxtype() == 1) {
										%>
										<div class="radio col-md-6">
											<label><input type="radio" name="optradio2" value=1
												checked>일반과세자</label>
										</div>
										<div class="radio col-md-6" style="margin-top: 10px">
											<label><input type="radio" name="optradio2" value=2>간이과세자</label>
										</div>
										<%
											} else {
										%>
										<div class="radio col-md-6">
											<label><input type="radio" name="optradio2" value=1>일반과세자</label>
										</div>
										<div class="radio col-md-6" style="margin-top: 10px">
											<label><input type="radio" name="optradio2" value=2
												checked>간이과세자</label>
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
											if (loginUser.getNotax_yn() == 1) {
										%>
										<div class="radio col-md-4">
											<label><input type="radio" name="optradio3" value=1
												checked>과세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" name="optradio3" value=2>면세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" name="optradio3" value=3>과세+면세</label>
										</div>
										<%
											} else if (loginUser.getNotax_yn() == 2) {
										%>
										<div class="radio col-md-4">
											<label><input type="radio" name="optradio3" value=1>과세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" name="optradio3" value=2
												checked>면세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" name="optradio3" value=3>과세+면세</label>
										</div>
										<%
											} else {
										%>
										<div class="radio col-md-4">
											<label><input type="radio" name="optradio3" value=1>과세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" name="optradio3" value=2>면세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" name="optradio3" value=3
												checked>과세+면세</label>
										</div>
										<%
											}
										%>
									</div>
								</div>
							</td>
						</tr>
						<%
							} else {
						%>
						<tr>
							<td class="col-md-2"><h5>상호</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="cname"></td>
							<td class="col-md-2"><h5>대표자명</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="president"></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>사업자 등록번호</h5></td>
							<td class="col-md-4">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno2">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno3">
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
								name="cstatus"></td>
							<td class="col-md-2"><h5>종목</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="ctype"></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>사업장 전화번호</h5></td>
							<td class="col-md-4">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel2">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel3">
								</div>
							</td>
							<td class="col-md-2"><h5>개업일</h5></td>
							<td class="col-md-4"><input type="date" class="form-control"
								name="oday"></td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>사업장 주소</h5></td>
							<td class="col-md-2"><div
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" id="postnum"
										name="caddress">
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

						</tr>
						<tr>
							<td class="col-md-2"><h5>업종코드</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="wno"></td>
							<td class="col-md-2"><h5>관할세무서</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>과세유형</h5></td>
							<td class="col-md-4">
								<div class="row">
									<div class="col-md-12">
										<div class="radio col-md-6">
											<label><input type="radio" name="optradio2" value="1">일반과세자</label>
										</div>
										<div class="radio col-md-6" style="margin-top: 10px">
											<label><input type="radio" name="optradio2" value="2">간이과세자</label>
										</div>
									</div>
								</div>
							</td>
							<td class="col-md-2"><h5>면세여부</h5></td>
							<td class="col-md-4">
								<div class="row">
									<div class="col-md-12">
										<div class="radio col-md-4">
											<label><input type="radio" name="optradio3" value=1>과세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" name="optradio3" value=2>면세</label>
										</div>
										<div class="radio col-md-4" style="margin-top: 10px">
											<label><input type="radio" name="optradio3" value=3>과세+면세</label>
										</div>
									</div>
								</div>
							</td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>

				<div class="btngroup">
					<%
						if (loginUser.getCname() != null && loginUser.getPresident() != null && loginUser.getCno() != null
								&& loginUser.getCstatus() != null && loginUser.getCtype() != null && loginUser.getTel() != null
								&& loginUser.getOday() != null && loginUser.getCaddress() != null && loginUser.getTaxtype() != 0
								&& loginUser.getNotax_yn() != 0) {
					%>
					<input type="submit" class="btn btn-warning" value="수정완료"
						onclick="location.href='/jsmi/views/main2/menu/main2.html'">
					<%
						} else {
					%>
					<input type="submit" class="btn btn-primary" value="입력완료"
						onclick="location.href='/jsmi/views/main2/menu/main2.html'">
						<button class="btn btn-danger" type="reset">취소</button>
					<%
						}
					%>
				</div>
			</form>

		</div>

	</div>
	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>
</html>