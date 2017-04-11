<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보입력</title>

<link href="/jsmi/css/main2/bootstrap.min.css" rel="stylesheet">
<link href="/jsmi/css/main2/styles.css" rel="stylesheet">
<script src="/jsmi/js/main2/jquery-1.11.1.min.js"></script>
<script src="/jsmi/js/main2/bootstrap.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="/jsmi/js/main2/zipcode.js"></script>

<script>
	function nextpage(){
		location.href("/jsmi/views/main2/inputinfo2.html");
	}
</script>

<script>
    
    
    $(function(){
    	$('#edrop > li > a').click(function(){
    		$('#menu1').html($(this).text() + "<span class='caret'></span>");
    		if($(this).text()=="직접입력"){
    			$('#email2').val('');
    		} else {
    			$('#email2').val($(this).text());
    		} 		
    	})
    })
    
    $(function(){
    	$("li:eq(2)").attr("class", "active");
    });
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
				      <li class="active"><a href="/jsmi/views/main2/inputinfo.jsp">회원정보</a></li>
				      <li><a href="/jsmi/views/main2/inputinfo2.jsp">사업장 정보</a></li>
				      <li><a href="/jsmi/views/main2/inputinfo3.jsp">거래처 정보</a></li>
				    </ul>
				  </div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 col-lg-12">
				<form action="" method="post">
				<table class="table table-condensed">
				    <tbody>
				      <tr>
				        <td class="col-md-2"><h5>이름</h5></td>
				        <td class="col-md-4"><input type="text" class="form-control" value="<%=  %>"></td>
				        <td class="col-md-2"><h5>주민등록번호</h5></td>
				        <td class="col-md-4"><div class="col-md-5"><input type="text" class="form-control"></div><div class="col-md-1"><h5>-</h5></div><div class="col-md-5"><input type="password" class="form-control"></div></td>	    
				      </tr>
				      <tr>
				        <td class="col-md-2"><h5>아이디</h5></td>
				        <td class="col-md-4"><input type="text" class="form-control"></td>
				        <td class="col-md-6" colspan="2"></td>
				      </tr>
				      <tr>
				        <td class="col-md-2"><h5>비밀번호</h5></td>
				        <td class="col-md-4"><input type="password" class="form-control"></td>
				        <td class="col-md-6" colspan="2"></td>
				         
				      </tr>
				      <tr>
				      	<td class="col-md-2"><h5>비밀번호 확인</h5></td>
				        <td class="col-md-4"><input type="password" class="form-control"></td>	 
				        <td class="col-md-6" colspan="2"></td>
				      </tr>
				      <tr>
				      	<td class="col-md-2"><h5>사업주 주소</h5></td>
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
				        <td class="col-md-2"><h5>전화번호</h5></td>
				        <td class="col-md-6" colspan="2">
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1" style="text-align:center">-</div>
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1" style="text-align:center">-</div>
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1"></div> 	
				        </td>
				        <td class="col-md-4"></td>
				      </tr>
				      <tr>
				        <td class="col-md-2"><h5>휴대폰번호</h5></td>
				        <td class="col-md-6" colspan="2">
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1" style="text-align:center">-</div>
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1" style="text-align:center">-</div>
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1"></div> 	
				        </td>
				        <td class="col-md-4"></td>
				      </tr>
				      <tr>
				        <td class="col-md-2"><h5>이메일</h5></td>
				        <td class="col-md-6" colspan="2">
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1" style="text-align:center">@</div>
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control" id="email2"></div>
				        	<div class="col-md-1" style="display:block"></div>
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;">
				        		<div class="dropdown">
									    <button class="btn btn-primary dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">직접입력
									    <span class="caret"></span></button>
									    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1" id="edrop">
									      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">직접입력</a></li>
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
				  <button class="btn btn-primary" type="submit" onclick="nextpage();")>다음</button>
				  <button class="btn btn-danger" type="reset">취소</button>
				  </div>
				  </form>
			</div>
		</div>
		
	</div>	<!--/.main-->

	
</body>

</html>
