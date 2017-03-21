<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>정보입력</title>

<link href="/jsmi/css/main2/bootstrap.min.css" rel="stylesheet">
<link href="/jsmi/css/main2/styles.css" rel="stylesheet">
<link href="/jsmi/css/main2/jquery-ui.css" rel="stylesheet">
<script src="/jsmi/js/main2/jquery-1.11.1.min.js"></script>
<script src="/jsmi/js/main2/lumino.glyphs.js"></script>
<script src="/jsmi/js/main2/bootstrap.min.js"></script>
</head>

<body>
	<%@ include file="slidebar.jsp" %>
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">장부작성</h1>
			</div>
		</div><!--/.row-->
									
	
		<div class="row">
			<div class="col-md-12 col-lg-12">
				<div class="col-md-3">
				<div id="datepicker" style="padding-left:15px"></div>
				<script src="/jsmi/js/main2/jquery.js"></script>
				<script src="/jsmi/js/main2/jquery-ui.js"></script>
				<script>
				$( "#datepicker" ).datepicker({
					inline: true
				});
				
				
				</script>
				<div>
					<h3 align="center">기간별 조회</h3>
					<div class="col-md-12">
					<h5>시작일자 :<input type="date" name="startdate" class="form-control"></h5>
					<h5>종료일자 :<input type="date" name="enddate" class="form-control"></h5>
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
  					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
				  </ul>
				</div>
				
	
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
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
					    <button class="btn btn-default dropdown-toggle" type="button" name="bill_type" data-toggle="dropdown">거래구분
					    <span class="caret"></span></button>
					    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
					      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">매입</a></li>
					      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">매출</a></li>
					      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">비용</a></li>
					      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">자산항목</a></li>
					    </ul>
					  	</div>
					  </td>
				      <td><input type="date" name="indate" class="form-control"></td>
				      <td><input type="button" value="거래처선택" class="form-control"></td>
				      <td><input type="button" value="항목선택" class="form-control"></td>
				      <td><input type="text" name="product" class="form-control"></td>
				      <td> <div class="input-group"> 
        						<span class="input-group-addon">￦</span>
        						<input type="number" value="1000" min="0" step="1" data-number-to-fixed="2" data-number-stepfactor="100" class="form-control currency" name="cost" />
    						</div></td>
				      <td>
				      	<div class="dropdown">
					    <button class="btn btn-default dropdown-toggle" type="button" name="bill_how" data-toggle="dropdown">결재방법
					    <span class="caret"></span></button>
					    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
					      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">현금</a></li>
					      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">카드</a></li>
					      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">외상</a></li>
					    </ul>
					  	</div>
				      </td>
				      <td>
							<div class="dropdown">
					    <button class="btn btn-default dropdown-toggle" type="button" name="bill_how" data-toggle="dropdown">증빙자료선택
					    <span class="caret"></span></button>
					    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
					      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">카드매출전표</a></li>
					      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">현금영수증</a></li>
					      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">세금계산서</a></li>
					      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">미증빙</a></li>
					    </ul>
					  	</div>
						</td>
				      </tr>
				    </tbody>
				  </table>
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
	</div>	<!--/.main-->

</body>

</html>
