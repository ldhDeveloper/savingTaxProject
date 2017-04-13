<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<title>myinfo3 update</title>
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

.h3class {
	font-family: ssangmunDong !important;
	font-size: 25pt;
}

.tabletd {
	border-top : 3px solid #2a82a3;  
}
</style>

<script type="text/javascript">
	$(function() {
		$('#edrop > li > a').click(function() {
			console.log("Addfda");
			$('#menu1').html($(this).text() + "<span class='caret'></span>");
			if ($(this).text() == "직접입력") {
				$('#email2').val('');
			} else {
				$('#email2').val($(this).text());
			}
		})
	});
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
						<li><a class="tabmenu"
							href="/jsmi/views/main2/myinfo/myinfo2.jsp">사업장 정보</a></li>
						<li><a class="tabmenu lactive"
							href="/jsmi/views/main2/myinfo/myinfo3Update.jsp">거래처 정보</a></li>
						<li><a class="tabmenu"
							href="/jsmi/views/main2/myinfo/myinfo3.jsp">거래처 입력</a></li>
					</ul>
				</div>
			</div>
			
			<h3 align="center" class="h3class">거래처 목록 조회</h3>
			<div class="row">
				<div class="col-md-12">
					<table class="table table-condensed">
						<tbody class="tabletd" id="detaillist">
							<tr>
								<th>상호</th>
								<th>대표자명</th>
								<th>사업자 등록번호</th>
								<th>업태</th>
								<th>종목</th>
								<th>거래처 전화번호</th>
								<th>거래처주소</th>
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
				</div>
			</div>
			
			<br><br><br>
			<h3 align="center" class="h3class">거래처 정보 수정</h3>
			
		
			<table class="table table-condensed">
					<tbody class="tabletd">
						<tr>
							<td class="col-md-2"><h5>상호</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="cname" id="cname"></td>
							<td class="col-md-2"><h5>대표자명</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="president" id="president"></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>사업자 등록번호</h5></td>
							<td class="col-md-4">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno" id="cno" readonly>
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno2" id="cno2" readonly>
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="cno3" id="cno3" readonly>
								</div>
							</td>
							<td class="col-md-2"><h5>개인/법인사업자 여부</h5></td>
							<td class="col-md-4">
								<div class="row">
									<div class="col-md-12">
										<div class="radio col-md-6">
											<label><input type="radio" name="optradio"  id="individual">개인</label>
										</div>
										<div class="radio col-md-6" style="margin-top: 10px">
											<label><input type="radio" name="optradio"  id="corporate">법인</label>
										</div>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>업태</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="cstatus" id="cstatus"></td>
							<td class="col-md-2"><h5>종목</h5></td>
							<td class="col-md-4"><input type="text" class="form-control"
								name="ctype" id="ctype"></td>

						</tr>
						<tr>
							<td class="col-md-2"><h5>거래처 전화번호</h5></td>
							<td class="col-md-4">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel" id="tel">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel2" id="tel2">
								</div>
								<div class="col-md-1" style="text-align: center">-</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="tel3" id="tel3">
								</div>
							</td>
						</tr>
						<tr>
							<td class="col-md-2"><h5>거래처 주소</h5></td>
							<td class="col-md-2"><div
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" id="postnum"
										name="caddress" >
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
						<tr>
							<td class="col-md-2"><h5>세금계산용 이메일</h5></td>
							<td class="col-md-6" colspan="2">
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" name="email" id="email">
								</div>
								<div class="col-md-1" style="text-align: center">@</div>
								<div class="col-md-3"
									style="padding-left: 0px; padding-right: 0px;">
									<input type="text" class="form-control" id="email2"
										name="email2">
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
					<button class="btn btn-warning" type="submit" id="update">수정</button>
				</div>
			

		</div>

	</div>
	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>
	
	<script>
		$(function(){
				var pno = <%= loginUser.getPno()%>
				<% System.out.println("pno1: "+loginUser.getPno());%>
				 $.ajax({
					 url: "/jsmi/m3list",
					 data:{pno:pno},
					 type: "get",
					 dataType: "JSON",
		       		 contentType: "application/x-www-form-urlencoded; charset=UTF-8",
					 success: function(data){
							console.log("json 성공");
							console.log("data : " + data);
							var jsonObj = JSON.stringify(data);
							var jsonArr = JSON.parse(jsonObj);
							
						    $("#detaillist").html("<tr><th>번호</th><th>상호</th><th>대표자명</th><th>사업자 등록번호</th><th>업태</th><th>종목</th><th>거래처전화번호</th><th>거래처주소</th><th>이메일</th></tr>");
							for(var i in jsonArr.list){
								console.log(jsonArr.list[i].pno);
					
								$("#detaillist").html( $("#detaillist").html() 
										+ "<tr style='cursor:pointer' id='line" +  i + "' onclick='linecheck(" + i + ', ' + jsonArr.list[i].pno + ")'><td id='listpno'>"+ jsonArr.list[i].pno + "</td><td>" + decodeURIComponent(jsonArr.list[i].cname) + "</td><td>" + decodeURIComponent(jsonArr.list[i].president) 
										+ "</td><td>"+ decodeURIComponent(jsonArr.list[i].cno) + "</td><td>" + decodeURIComponent(jsonArr.list[i].cstatus) + "</td><td>" + decodeURIComponent(jsonArr.list[i].ctype) 
										+ "</td><td>" + decodeURIComponent(jsonArr.list[i].tel) + "</td><td>" + decodeURIComponent(jsonArr.list[i].caddress).split('+').join(" ") + "</td><td>" + decodeURIComponent(jsonArr.list[i].email) 
										+ "</td></tr><hr>" );
							}
						},
						error: function(request,status,error){
					        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					    }
				 })
			});
			
		
		$('#update').click(function(){
			var pno=<%=loginUser.getPno()%>;
			<% System.out.println("pno00000000: "+loginUser.getPno());%>
			var cname=$('#cname').val();
			var president=$('#president').val();
			var cno=$('#cno').val();
			var cno2=$('#cno2').val();
			var cno3=$('#cno3').val();
			var busitype=$("input[name=optradio]").val();
			var cstatus=$('#cstatus').val();
			var ctype=$('#ctype').val();
			var tel=$('#tel').val();
			var tel2=$('#tel2').val();
			var tel3=$('#tel3').val();
			var caddress=$('#postnum').val();
			var caddress2=$('#address1').val();
			var caddress3=$('#address2').val();
			var email=$('#email').val();
			var email2=$('#email2').val();
		    $.ajax({
		    	url:"/jsmi/update.info3",
				data: {pno:pno, cname:cname, president:president, cno:cno, cno2:cno2, cno3:cno3, busitype:busitype, cstatus:cstatus,
					ctype:ctype, tel:tel, tel2:tel2, tel3:tel3, caddress:caddress, caddress2:caddress2, caddress3:caddress3, email:email, email2:email2},	
				type:"post",
				dataType:"JSON",
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				success:function(data){
					console.log("data:"+data);
					var jsonObj = JSON.stringify(data);
					var jsonArr = JSON.parse(jsonObj);
					
					$("#detaillist").html("<tr><th>번호</th><th>상호</th><th>대표자명</th><th>사업자 등록번호</th><th>업태</th><th>종목</th><th>거래처전화번호</th><th>거래처주소</th><th>이메일</th></tr>");
					for(var i in jsonArr.list){
						console.log(jsonArr.list[i].atype);
						$("#detaillist").html( $("#detaillist").html() 
								+ "<tr style='cursor:pointer' class='line' 'id='line" +  i + "' onclick='linecheck(" + i + ', ' + jsonArr.list[i].pno + ")'><td id='listpno'>"+ jsonArr.list[i].pno + "</td><td>" + decodeURIComponent(jsonArr.list[i].cname) + "</td><td>" + decodeURIComponent(jsonArr.list[i].president) 
								+ "</td><td>"+ decodeURIComponent(jsonArr.list[i].cno) + "</td><td>" + decodeURIComponent(jsonArr.list[i].cstatus) + "</td><td>" + decodeURIComponent(jsonArr.list[i].ctype) 
								+ "</td><td>" + decodeURIComponent(jsonArr.list[i].tel) + "</td><td>" +decodeURIComponent(jsonArr.list[i].caddress).split('+').join(" ") + "</td><td>" + decodeURIComponent(jsonArr.list[i].email) 
								+ "</td></tr><hr>" );
					}
				},
				error: function(request,status,error){
			        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			       }
		    })
		
		});
		
		
		 function linecheck(index, listpno){
       	  var lineno="#line"+index;
       	  $.ajax({
       		  url:"/jsmi/selectinfo3",
       		  data:{pno:listpno},
       		  type:"post",
       		  dataType: "JSON",
       		  contentType: "application/x-www-form-urlencoded; charset=UTF-8",
       		  success: function(data){
       			  var jsonObj=JSON.stringify(data);
       			  var jsonArr=JSON.parse(jsonObj);
       			  
       			  $("input[name=optradio]").val();
       			  if(jsonArr.busiType == "개인"){
       				  $('#individual').attr("checked","checked");
       			  }else{
       				  $('#corporate').attr("checked", "checked");
       			  }
       			  $('#cname').val(decodeURIComponent(jsonArr.cname));
       			  $('#president').val(decodeURIComponent(jsonArr.president));
       			  $('#cno').val(decodeURIComponent(jsonArr.cno));
       			  $('#cno2').val(decodeURIComponent(jsonArr.cno2));
       			  $('#cno3').val(decodeURIComponent(jsonArr.cno3));
       			  $('#cstatus').val(decodeURIComponent(jsonArr.cstatus));
       			  $('#ctype').val(decodeURIComponent(jsonArr.ctype));
       			  $('#tel').val(decodeURIComponent(jsonArr.tel));
       			  $('#tel2').val(decodeURIComponent(jsonArr.tel2));
       			  $('#tel3').val(decodeURIComponent(jsonArr.tel3));
       			  $('#postnum').val(decodeURIComponent(jsonArr.caddress));
       			  $('#address1').val(decodeURIComponent(jsonArr.caddress2).split('+').join(" "));
       			  $('#address2').val(decodeURIComponent(jsonArr.caddress3).split('+').join(" "));
       			  $('#email').val(decodeURIComponent(jsonArr.email));
       			  $('#email2').val(decodeURIComponent(jsonArr.email2));
       		  }
       	  })
         }
		
		 
			
			
          
		
		</script>
</body>
</html>