<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<style>
.middle {
	width: 1200px !important;
	background: white;
	max-height: 550px;
}

.top {
	width: 1200px !important;
	margin-bottom: -20px;
}

.frame {
	
}

.section {
	width: 1000px;
	min-height: 550px;
	max-height:550px;
	background: white;
	position: relative;
	top: -550px;
	left: 200px;
	overflow:scroll;
	padding-left:20px;
	padding-right:20px;
}

.side {
	width: 200px;
}
.tabmenu {
	text-align:center;
	font-weight:bold;
}
.active {
	background:white;
	color:black;
}
.btngroup {
	float:right;
	position:relative;
	margin-top:-15px;
	margin-right:10px;
}
.
</style>
</head>
<body>
	<%@ include file="/views/common/main2back.jsp"%>
	<div class="middle top">
		<%@ include file="/views/common/fullbar.jsp"%>
	</div>

	<div class="middle frame">
		<div class="side">
			<%@ include file="/views/common/slidebar.jsp"%>
		</div>
		<div class="section">

			<div class="navbar navbar-default">
				<div class="container-fluid">
					<ul class="nav navbar-nav">
						<li><a class="tabmenu active" href="/jsmi/views/main2/inputinfo.jsp">회원정보</a></li>
						<li><a class="tabmenu" href="/jsmi/views/main2/inputinfo2.jsp">사업장 정보</a></li>
						<li><a class="tabmenu" href="/jsmi/views/main2/inputinfo3.jsp">거래처 정보</a></li>
					</ul>
				</div>
			</div>

			<form action="" method="post">
				<table class="table table-condensed">
					<tbody>
						<tr>
							<td class="col-md-2"><h5>이름</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"></td>
							<td class="col-md-2"><h5>주민등록번호</h5></td>
							<td class="col-md-4"><div class="col-md-5">
									<input type="text" class="form-control">
								</div>
								<div class="col-md-1">
									<h5>-</h5>
								</div>
								<div class="col-md-5">
									<input type="password" class="form-control">
								</div></td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>아이디</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"></td>
							<td class="col-md-6" colspan="2"></td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>비밀번호</h5></td>
							<td class="col-md-4"><input type="password"
								class="form-control"></td>
							<td class="col-md-6" colspan="2"></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>비밀번호 확인</h5></td>
							<td class="col-md-4"><input type="password"
								class="form-control"></td>
							<td class="col-md-6" colspan="2"></td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>사업주 주소</h5></td>
							<td class="col-md-2"><div
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" id="postnum">
								</div></td>
							<td class="col-md-8" colspan="2"><input type=button
								class="btn btn-primary" value="우편번호검색"
								onclick="sample4_execDaumPostcode();"></td>
						</tr>
						<tr>
							<td class="col-md-2">&nbsp;</td>
							<td class="col-md-4"><input type="text" class="form-control"
								id="address1"></td>
							<td class="col-md-6" colspan="2"><input type="text"
								class="form-control" id="address2"></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>전화번호</h5></td>
							<td class="col-md-6" colspan="2">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control">
								</div>
								<div class="col-md-1"></div>
							</td>
							<td class="col-md-4"></td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>휴대폰번호</h5></td>
							<td class="col-md-6" colspan="2">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control">
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
									<input type="text" class="form-control">
								</div>
								<div class="col-md-1" style="text-align: center">@</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" id="email2">
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
				  <button class="btn btn-primary" type="submit" onclick="nextpage();">다음</button>
				  <button class="btn btn-danger" type="reset">취소</button>
				  </div>

			</form>
			

		</div>

	</div>
</body>
</html>