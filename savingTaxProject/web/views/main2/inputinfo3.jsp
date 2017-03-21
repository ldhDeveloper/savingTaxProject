<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>정보입력</title>

<link href="/jsmi/css/main2/bootstrap.min.css" rel="stylesheet">
<link href="/jsmi/css/main2/datepicker3.css" rel="stylesheet">
<link href="/jsmi/css/main2/styles.css" rel="stylesheet">


<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>

<body>
	<%@ include file="slidebar.jsp" %>
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">정보입력</h1>
			</div>
		</div><!--/.row-->
									
		<div class="row">
			<div class="col-md-8">
				<div class="navbar navbar-default">
				  <div class="container-fluid">
				    <ul class="nav navbar-nav">
				      <li><a href="/jsmi/views/main2/inputinfo.jsp">회원정보</a></li>
				      <li><a href="/jsmi/views/main2/inputinfo2.jsp">사업장 정보</a></li>
				      <li class="active"><a href="/jsmi/views/main2/inputinfo3.jsp">거래처 정보</a></li>
				    </ul>
				  </div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 col-lg-12">
				<table class="table table-condensed">
				    <tbody>
				      <tr>
				        <td class="col-md-2"><h5>상호</h5></td>
				        <td class="col-md-4"><input type="text" class="form-control"></td>
				        <td class="col-md-2"><h5>대표자명</h5></td>
				        <td class="col-md-4"><input type="text" class="form-control"></td>
				
				      </tr>
				      <tr>
				        <td class="col-md-2"><h5>사업자 등록번호</h5></td>
				        <td class="col-md-4">
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1" style="text-align:center">-</div>
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1" style="text-align:center">-</div>
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        </td>
				        <td class="col-md-2"><h5>개인/법인사업자 여부</h5></td>
				        <td class="col-md-4">
				        	<div class="row">
				        		<div class="col-md-12">
						        	<div class="radio col-md-6">
		  								<label><input type="radio" name="optradio">개인</label>
									</div>
									<div class="radio col-md-6" style="margin-top:10px">
		  								<label><input type="radio" name="optradio">법인</label>
									</div>
								</div>
							</div>
				        </td>
				      </tr>
				      <tr>
				        <td class="col-md-2"><h5>업태</h5></td>
				        <td class="col-md-4"><input type="text" class="form-control"></td>
				        <td class="col-md-2"><h5>종목</h5></td>
				        <td class="col-md-4"><input type="text" class="form-control"></td>
				         
				      </tr>
				      <tr>
				        <td class="col-md-2"><h5>거래처 전화번호</h5></td>
				        <td class="col-md-4">
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1" style="text-align:center">-</div>
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1" style="text-align:center">-</div>
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        </td>
				      </tr>
				      <tr>
				      	<td class="col-md-2" rowspan="2"><h5>거래처 주소</h5></td>
				        <td class="col-md-4"><div class="col-md-5" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        					<div class="col-md-2" style="text-align:center"><h5>-</h5></div><div class="col-md-5" style="padding-left:0px; padding-right:0px;">
				        					<input type="password" class="form-control"></div></td>	 
				        <td class="col-md-6" colspan="2"><input type=button class="btn btn-primary" value="우편번호검색"></td>
				      </tr>
				      <tr>
				        <td class="col-md-10" colspan="3"><input type="text" class="form-control"></td>	
				      </tr>
				      <tr>
				        <td class="col-md-2"><h5>세금계산용 이메일</h5></td>
				        <td class="col-md-6" colspan="2">
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1" style="text-align:center">@</div>
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1" style="display:block"></div>
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;">
				        		<div class="dropdown">
									    <button class="btn btn-primary dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">직접입력
									    <span class="caret"></span></button>
									    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
									      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">naver.com</a></li>
									      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">google.com</a></li>
									      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">hanmail.net</a></li>
									      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">yahoo.co.kr</a></li>
									    </ul>
							  </div>	
				        	</div>
				        </td>
				        <td class="col-md-4"></td>
				      </tr>
		
				    </tbody>
				  </table>
				  <div class="row">
				  <button class="btn btn-success" type="submit">등록</button>
				  <button class="btn btn-danger" type="reset">취소</button>
				  </div>
			</div>
		</div>
	</div>	<!--/.main-->
</body>

</html>
