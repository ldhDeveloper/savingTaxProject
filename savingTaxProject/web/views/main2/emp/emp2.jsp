<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/jsmi/css/main2/bootstrap.min.css" rel="stylesheet">
<link href="/jsmi/css/main2/styles.css" rel="stylesheet">
<link href="/jsmi/css/main2/jquery-ui.css" rel="stylesheet">
<script src="/jsmi/js/main2/jquery-1.11.1.min.js"></script>
<script src="/jsmi/js/main2/lumino.glyphs.js"></script>
<script src="/jsmi/js/main2/bootstrap.min.js"></script>
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
	position:
}

.tabmenu {
	text-align: center;
	font-weight: bold;
}

.active {
	background: white;
	color: black;
}

.calendar {
	width: 980px;
	height: 10px;
	position: relative;
	margin-left: auto;
	margin-right: auto;
	background: #1080aa;
}

.month {
	width: 90px;
	height: 10px;
	text-align: center;
}

.mon-space {
	width: 980px;
	height: 5px;
	margin-left: auto;
	margin-right: auto;
}

.mon-border {
	border-left: 1px solid #1080aa;
	border-right: 1px solid #1080aa;
	height: 20px;
}

.month-select {
	background: orange;
	height: 5px;
}

.month-list {
	width: 980px;
	margin-left: auto;
	margin-right: auto;
	text-aling: center;
}

.emp-table {
	width: 1000px;
	margin-left: auto;
	margin-right: auto;
}

td {
	text-align: center;
}

.emp-choice {
	background: #1080aa;
	height: 60px;
	border-radius: 10px;
	color: white;
	border: none;
}

.btn-group-custom {
	position: relative;
	left: 800px;
	margin-left: 20px;
}
</style>
</head>
<body style="padding-top: 0px;">
	<%@ include file="/views/common/main2/main2back.jsp"%>
	<div class="middle top">
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
								<li><a href="/jsmi/views/main2/emp/emp1.jsp">직원정보입력</a></li>
								<li class="active"><a href="/jsmi/views/main2/emp/emp2.jsp">직원급여관리</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- 달력  -->
			<h3 align="center">근무 기간 선택</h3>
			<div class="mon-space">
				<table>
					<tr>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
						<td class="month  mon-border"></td>
					</tr>
				</table>
			</div>
			<div class="calendar">
				<table>
					<tr>
						<td class="month month1 "></td>
						<td class="month month2 "></td>
						<td class="month month3 "></td>
						<td class="month month "></td>
						<td class="month month5  month-select"></td>
						<td class="month month6 "></td>
						<td class="month month7 "></td>
						<td class="month month8 "></td>
						<td class="month month9 "></td>
						<td class="month month10 "></td>
						<td class="month month11 "></td>
						<td class="month month12 "></td>
					</tr>
				</table>
			</div>

			<div class="month-list">
				<table>
					<tr>
						<td class="month">1월</td>
						<td class="month">2월</td>
						<td class="month">3월</td>
						<td class="month">4월</td>
						<td class="month">5월</td>
						<td class="month">6월</td>
						<td class="month">7월</td>
						<td class="month">8월</td>
						<td class="month">9월</td>
						<td class="month">10월</td>
						<td class="month">11월</td>
						<td class="month">12월</td>
					</tr>
				</table>
			</div>
			<br>
			<br>
			<h3 align="center">급여 현황</h3>
			<div class="emp-table">
				<div class="row">
					<div class="col-md-12">
						<table class="table table-condensed">
							<tbody>
								<tr>
									<th>직원명</th>
									<th>주민번호</th>
									<th>부서명</th>
									<th>직급</th>
									<th>근무시작일</th>
									<th>근무종료일</th>
									<th>급여지급일</th>
									<th>총급여금액</th>
									<th>차인지급액</th>
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
						<ul class="pagination" style="float: right; margin-bottom: 30px;">
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
						</ul>
					</div>
				</div>
			</div>

			<h3 align="center" style="margin-top: 30px;">급여 입력</h3>
			<div class="emp-table">
				<div class="row">
					<div class="col-md-12">
						<table class="table table-condensed">
							<tbody>
								<tr>
									<td rowspan="2"><input type="button" value="직원선택"
										class="emp-choice"></td>
									<td>직원명</td>
									<td>주민등록번호</td>
									<td>부서명</td>
									<td>직급</td>

								</tr>
								<tr>
									<td><input type="text" value="직원명" class="form-control"></td>
									<td><input type="text" value="주민등록번호" class="form-control"></td>
									<td><input type="text" value="부서명" class="form-control"></td>
									<td><input type="text" value="직급" class="form-control"></td>
								</tr>
							</tbody>
						</table>

					</div>
				</div>
			</div>

			<br>
			<br>
			<h3 align="center">급여 상세</h3>
			<div class="emp-table">
				<div class="row">
					<div class="col-md-12">
						<table class="table table-condensed">
							<tbody>
								<tr>
									<td>근무시작일</td>
									<td><input type="date" class="form-control"></td>
									<td>근무종료일</td>
									<td><input type="date" class="form-control"></td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>급여지급일</td>
									<td><input type="date" class="form-control"></td>
								</tr>
							</tbody>

						</table>

						<br>
						<br>
						<table class="table table-condensed">
							<tbody>
								<tr>
									<td colspan="5">과세 급여</td>
									<td colspan="4">비과세 급여</td>
									<td>총 급여</td>
								</tr>
								<tr>
									<td>기본급</td>
									<td>시간 외 근무 수당</td>
									<td>휴일 근무 수당</td>
									<td>상여금</td>
									<td>성과금</td>
									<td>식대</td>
									<td>자차 운전 보조금</td>
									<td>육아 수당</td>
									<td>지급 경비</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td><input type="text" value="기본급" class="form-control"></td>
									<td><input type="text" value="시간외수당" class="form-control"></td>
									<td><input type="text" value="휴일근무수당" class="form-control"></td>
									<td><input type="text" value="상여금" class="form-control"></td>
									<td><input type="text" value="성과금" class="form-control"></td>
									<td><input type="text" value="식대" class="form-control"></td>
									<td><input type="text" value="자차운전보조" class="form-control"></td>
									<td><input type="text" value="육아수당" class="form-control"></td>
									<td><input type="text" value="지급경비" class="form-control"></td>
									<td><input type="text" value="총급여" class="form-control"></td>

								</tr>
							</tbody>
						</table>

						<br>
						<br>
						<table class="table table-condensed">
							<tbody>
								<tr>
									<td colspan="5">공제 항목</td>
									<td>차인지급액</td>
								</tr>
								<tr>
									<td>국민연금보험료</td>
									<td>건강보험료</td>
									<td>장기요양보험료</td>
									<td>고용보험료</td>
									<td>근로자 원천징수</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td><input type="text" value="국민연금" class="form-control"></td>
									<td><input type="text" value="건강보험" class="form-control"></td>
									<td><input type="text" value="장기요양보험" class="form-control"></td>
									<td><input type="text" value="고용보험" class="form-control"></td>
									<td><input type="text" value="원천징수" class="form-control"></td>
									<td><input type="text" value="차인지급액" class="form-control"></td>
								</tr>
							</tbody>
						</table>
						<br><br>
						<h3 align="center" style="margin-top: 30px;">사업자 부담 보험금 계산</h3>
						<div class="emp-table">
							<div class="row">
								<div class="col-md-12">
									<table class="table table-condensed">
										<tbody>
											<tr>
												<td colspan="5">보험료 세부항목</td>
												<td>납부 총액</td>
											</tr>
											<tr>
												<td>국민연금보험료</td>
												<td>건강보험료</td>
												<td>장기요양보험료</td>
												<td>고용보험료</td>
												<td>산재보험료</td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td><input type="text" value="국민연금" class="form-control"></td>
												<td><input type="text" value="건강보험" class="form-control"></td>
												<td><input type="text" value="장기요양" class="form-control"></td>
												<td><input type="text" value="고용보험" class="form-control"></td>
												<td><input type="text" value="산재보험" class="form-control"></td>
												<td><input type="text" value="총금액" class="form-control"></td>
											</tr>
										</tbody>
									</table>

								</div>
							</div>
						</div>


						<br>
						<br>
						<div class="emp-table btn-group-custom">
							<input type="button" class="btn btn-warning" value="작성취소">
							<input type="button" class="btn btn-success" value="적용하기">
						</div>
					</div>
				</div>
			</div>




		</div>
	</div>

	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>
</html>