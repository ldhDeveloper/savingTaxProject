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
<script src="/jsmi/js/main2/jquery-1.11.1.min.js"></script>
<script src="/jsmi/js/main2/bootstrap.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="/jsmi/js/main2/zipcode.js"></script>
<script>
    
</script>

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
				<h2 class="page-header">정보입력</h2>
			</div>
		</div><!--/.row-->
									
		<div class="row">
			<div class="col-md-8">
				<div class="navbar navbar-default">
				  <div class="container-fluid">
				    <ul class="nav navbar-nav">
				      <li><a href="/jsmi/views/main2/inputinfo.jsp">회원정보</a></li>
				      <li class="active"><a href="/jsmi/views/main2/inputinfo2.jsp">사업장 정보</a></li>
				      <li><a href="/jsmi/views/main2/inputinfo3.jsp">거래처 정보</a></li>
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
				        <td class="col-md-2"><h5>공동사업자 여부</h5></td>
				        <td class="col-md-4">
				        	<div class="row">
				        		<div class="col-md-12">
						        	<div class="radio col-md-6">
		  								<label><input type="radio" name="optradio">예</label>
									</div>
									<div class="radio col-md-6" style="margin-top:10px">
		  								<label><input type="radio" name="optradio">아니오</label>
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
				        <td class="col-md-2"><h5>사업장 전화번호</h5></td>
				        <td class="col-md-4">
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1" style="text-align:center">-</div>
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1" style="text-align:center">-</div>
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        </td>
				        <td class="col-md-2"><h5>개업일</h5></td>
				        <td class="col-md-4">
				        	<input type="date" class="form-control">
				        </td>
				      </tr>
				      <tr>
				      	<td class="col-md-2"><h5>사업장 주소</h5></td>
				        <td class="col-md-2"><div style="padding-left:0px; padding-right:0px;">
				        <input type="text" class="form-control" id="postnum"></div>
				        					</td>	 
				        <td class="col-md-8" colspan="2"><input type=button class="btn btn-primary" value="우편번호검색" onclick="sample4_execDaumPostcode();"></td>
				      </tr>
				      <tr>
				        <td class="col-md-2">&nbsp;</td>
				        <td class="col-md-4"><input type="text" class="form-control" id="address1"></td>
				        <td class="col-md-6" colspan="2"><input type="text" class="form-control" id="address2"></td>	
				        
				      </tr>
				      <tr>
				        <td class="col-md-2"><h5>업종코드</h5></td>
				        <td class="col-md-4"><input type="text" class="form-control"></td>
				        <td class="col-md-2"><h5>관할세무서</h5></td>
				        <td class="col-md-4"><input type="text" class="form-control"></td>
	   
				      </tr>
				       <tr>
				        <td class="col-md-2"><h5>과세유형</h5></td>
				        <td class="col-md-4">
				        	<div class="row">
				        		<div class="col-md-12">
						        	<div class="radio col-md-6">
		  								<label><input type="radio" name="optradio">일반과세자</label>
									</div>
									<div class="radio col-md-6" style="margin-top:10px">
		  								<label><input type="radio" name="optradio">간이과세자</label>
									</div>
								</div>
							</div>
				        </td>
				        <td class="col-md-2"><h5>면세여부</h5></td>
				        <td class="col-md-4">
				        	<div class="row">
				        		<div class="col-md-12">
						        	<div class="radio col-md-4">
		  								<label><input type="radio" name="optradio">과세</label>
									</div>
									<div class="radio col-md-4" style="margin-top:10px">
		  								<label><input type="radio" name="optradio">면세</label>
									</div>
									<div class="radio col-md-4" style="margin-top:10px">
		  								<label><input type="radio" name="optradio">과세+면세</label>
									</div>
								</div>
							</div>
				        </td>
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
