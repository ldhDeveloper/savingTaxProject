<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>직원관리</title>

<link href="/jsmi/css/main2/bootstrap.min.css" rel="stylesheet">
<link href="/jsmi/css/main2/datepicker3.css" rel="stylesheet">
<link href="/jsmi/css/main2/styles.css" rel="stylesheet">

<!--Icons-->
<script src="/jsmi/js/main2/lumino.glyphs.js"></script>
<script src="/jsmi/js/main2/jquery-1.11.1.min.js"></script>
<script>
	function nextpage(){
		location.href("/jsmi/views/main2/inputinfo2.html");
	}
</script>

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>

<body>

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">		
		<div class="row">
			<div class="col-lg-12">
				<h2 class="page-header">직원관리</h2>
			</div>
		</div><!--/.row-->
									
		<div class="row">
			<div class="col-md-8">
				<div class="navbar navbar-default">
				  <div class="container-fluid">
				    <ul class="nav navbar-nav">
				      <li class="active"><a href="/jsmi/views/main2/empinfo.jsp">직원정보입력</a></li>
				      <li><a href="/jsmi/views/main2/inputinfo2.html">직원급여관리</a></li>
				    </ul>
				  </div>
				</div>
			</div>
		</div>
		<div class="row">
		<div class="col-md-12">
					<table class="table table-condensed">
				    <tbody>
				      <tr>
				      <th>직원명</th>
				      <th>직원구분</th>
				      <th>직급</th>
				      <th>입사년월일</th>
				      <th>연락처</th>
				      <th>직원 주소지</th>
				      <th>이메일</th>
			
				      </tr>
				      <tr>
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
				      
				      </tr>
				      <tr>
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
				     
				      </tr>
				      <tr>
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
		<div class="row">
			<div class="col-md-12 col-lg-12">
				<table class="table table-condensed">
				    <tbody>
				      <tr>
				        <td class="col-md-2"><h5>직원명</h5></td>
				        <td class="col-md-4"><input type="text" class="form-control"></td>
				        <td class="col-md-2"><h5>직원구분</h5></td>
				        <td class="col-md-4">
				        	<div class="row">
				        		<div class="col-md-12">
						        	<div class="radio col-md-4">
		  								<label><input type="radio" name="optradio">정규직</label>
									</div>
									<div class="radio col-md-4" style="margin-top:10px">
		  								<label><input type="radio" name="optradio">비정규직</label>
									</div>
									<div class="radio col-md-4" style="margin-top:10px">
		  								<label><input type="radio" name="optradio">일용직</label>
									</div>
								</div>
							</div>
				        </td>
				
				      </tr>
				      <tr>
				        <td class="col-md-2"><h5>주민등록번호</h5></td>
				        <td class="col-md-4">
				        	<div class="col-md-5" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-2" style="text-align:center">-</div>
				        	<div class="col-md-5" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div> 	
				        </td>
				        <td class="col-md-2"><h5>직급</h5></td>
				        <td class="col-md-4"><input type="text" class="form-control"></td>
				      </tr>
				      <tr>
				        <td class="col-md-2"><h5>입사년월일</h5></td>
				        <td class="col-md-4"><input type="date" class="form-control"></td>
				        <td class="col-md-2"><h5>연락처</h5></td>
				        <td class="col-md-4">
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1" style="text-align:center">-</div>
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        	<div class="col-md-1" style="text-align:center">-</div>
				        	<div class="col-md-3" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        </td>
				         
				      </tr>
				      <tr>
				      	<td class="col-md-2" rowspan="2"><h5>직원 주소지</h5></td>
				        <td class="col-md-4"><div class="col-md-5" style="padding-left:0px; padding-right:0px;"><input type="text" class="form-control"></div>
				        					<div class="col-md-2" style="text-align:center"><h5>-</h5></div><div class="col-md-5" style="padding-left:0px; padding-right:0px;">
				        					<input type="password" class="form-control"></div></td>	 
				        <td class="col-md-6" colspan="2"><input type=button class="btn btn-primary" value="우편번호검색"></td>
				      </tr>
				      <tr>
				        <td class="col-md-10" colspan="3"><input type="text" class="form-control"></td>	
				      </tr>
				      <tr>
				        <td class="col-md-2"><h5>이메일</h5></td>
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
		  

	<script src="/jsmi/js/main2/jquery-1.11.1.min.js"></script>
	<script src="/jsmi/js/main2/bootstrap.min.js"></script>
	<script src="/jsmi/js/main2/chart.min.js"></script>
	<script src="/jsmi/js/main2/chart-data.js"></script>
	<script src="/jsmi/js/main2/easypiechart.js"></script>
	<script src="/jsmi/js/main2/easypiechart-data.js"></script>
	<script src="/jsmi/js/main2/bootstrap-datepicker.js"></script>
	<script>
		$('#calendar').datepicker({
		});

		!function ($) {
		    $(document).on("click","ul.nav li.parent > a > span.icon", function(){          
		        $(this).find('em:first').toggleClass("glyphicon-minus");      
		    }); 
		    $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
</body>

</html>
