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

.btngroup {
	float: right;
	position: relative;
	margin-top: -15px;
	margin-right: 10px;
}
.pagi {
	width:35px;
	height:35px;
}
</style>
<script type="text/javascript">
	$(function(){
			$('#billtype > li > a').click(function(){
				$('button[name=bill_type]').html($(this).text() + "<span class='caret'></span>");
			});
			
			$('#actype').click(function(){
				var btype = "btype=" + $('button[name=bill_type]').text();
				console.log(btype);
				$.getJSON(
						"/jsmi/bType", btype , function(data){
							//받은 문자열을 json 객체로 변환함
							var jsonObj = JSON.stringify(data);
							//변환된 제이슨 객체를 제이슨 배열로 변환
							var jsonArr = JSON.parse(jsonObj);
							
							for(var i in jsonArr.list){
								$(".list-group").html($(".list-group").html() +"<a href='#' class='list-group-item'>" + jsonArr.list[i].anm + "</a>");
							}
						});
			})
	});
</script>
</head>
<body style="padding-top:0px;">
	<%@ include file="/views/common/main2/main2back.jsp"%>
	<div class="middle top">
		<%@ include file="/views/common/main2/fullbar.jsp"%>
	</div>

	<div class="middle frame">
		<div class="side">
			<%@ include file="/views/common/main2/slidebar.jsp"%>
		</div>
		<div class="section">
			<br>
			
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div class="col-md-3">
						<div id="datepicker" style="padding-left: 15px"></div>
						<script src="/jsmi/js/main2/jquery.js"></script>
						<script src="/jsmi/js/main2/jquery-ui.js"></script>
						<script>
							$("#datepicker").datepicker({
								inline : true
							});
						</script>

						<div>
							<h3 align="center">기간별 조회</h3>
							<div class="col-md-12">
								<h5>
									시작일자 :<input type="date" name="startdate" class="form-control">
								</h5>
								<h5>
									종료일자 :<input type="date" name="enddate" class="form-control">
								</h5>
							</div>
						</div>
					</div>
					<div class="col-md-9">
						<table class="table table-condensed">
							<tbody>
								<tr>
									<th>거래구분</th>
									<th>날짜</th>
									<th>거래처</th>
									<th>계정항목</th>
									<th>품목</th>
									<th>금액</th>
									<th>결재방법</th>
									<th>증빙자료</th>
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
								</tr>

							</tbody>
						</table>
						<ul class="pagination" style="float: right; margin-bottom: 30px;">
							<li><a class="pagi" href="#">1</a></li>
							<li><a class="pagi" href="#">2</a></li>
							<li><a class="pagi" href="#">3</a></li>
							<li><a class="pagi" href="#">4</a></li>
							<li><a class="pagi" href="#">5</a></li>
						</ul>
					</div>
					<form action="" method="post">
						<table class="table table-condensed">
							<tbody>
								<tr>
									<th>거래구분</th>
									<th>날짜</th>
									<th>거래처</th>
									<th>계정항목</th>
									<th>품목</th>
									<th>금액</th>
									<th>결재방법</th>
									<th>증빙자료</th>
								</tr>
								<tr>
									<td>
										<div class="dropdown">
											<button class="btn btn-default dropdown-toggle" type="button"
												name="bill_type" data-toggle="dropdown">
												거래구분 <span class="caret"></span>
											</button>
											<ul class="dropdown-menu" role="menu" aria-labelledby="menu1" id="billtype">
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#">비용</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#">수익</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#">자산</a></li>
											</ul>
										</div>
									</td>
									<td><input type="date" name="indate" class="form-control"></td>
									<td><input type="button" value="거래처선택"
										class="form-control"></td>
									<td><input type="button" value="항목선택" class="form-control" id="actype" data-toggle="modal" data-target="#myModal"></td>
									<td><input type="text" name="product" class="form-control"></td>
									<td>
										<div class="input-group">
											<span class="input-group-addon">￦</span> <input type="number"
												value="1000" min="0" step="1" data-number-to-fixed="2"
												data-number-stepfactor="100" class="form-control currency"
												name="cost" />
										</div>
									</td>
									<td>
										<div class="dropdown">
											<button class="btn btn-default dropdown-toggle" type="button"
												name="bill_how" data-toggle="dropdown">
												결재방법 <span class="caret"></span>
											</button>
											<ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#">현금</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#">카드</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#">외상</a></li>
											</ul>
										</div>
									</td>
									<td>
										<div class="dropdown">
											<button class="btn btn-default dropdown-toggle" type="button"
												name="bill_how" data-toggle="dropdown">
												증빙자료선택 <span class="caret"></span>
											</button>
											<ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#">카드매출전표</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#">현금영수증</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#">세금계산서</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="#">미증빙</a></li>
											</ul>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="modal fade" id="myModal" role="dialog">
						    <div class="modal-dialog modal-lg">
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4 class="modal-title">계정항목</h4>
						        </div>
						        <div class="modal-body">
						      		<div class="list-group">
  										
									</div>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        </div>
						      </div>
						    </div>
						  </div>
						<div class="row">
							<div class="col-md-5"></div>
							<div class="col-md-3">
								<input type="submit" class="btn btn-success" value="추가">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="reset" class="btn btn-danger" value="취소">
							</div>
							<div class="col-md-4"></div>
						</div>

					</form>


				</div>

			</div>
		</div>
		</div>
		<br>
		<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>
</html>