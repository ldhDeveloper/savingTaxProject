<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
.
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
	})
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
		<% System.out.println("pno: "+loginUser.getPno());%>
		<script>
		$(function(){
			$('#detail').click(function(){
				var owner = <%= loginUser.getPno()%>
				 $.ajax({
					 url: "/jsmi/m3list" ,
					 data:{owner:owner},
					 type: "get",
					 datatype: "json",
					 success: function(data){
							console.log("json 성공");
							console.log("data : " + data);
							var jsonObj = JSON.stringify(data);
							var jsonArr = JSON.parse(jsonObj);
						    var no = 1;
							$("#detaillist").html("<tr><th>번호</th><th>상호</th><th>대표자명</th><th>사업자등록번호</th><th>업태</th><th>종목</th><th>전화번호</th><th>주소</th><th>이메일</th></tr>");
							
							for(var i in jsonArr.list){
								console.log(jsonArr.list[i].atype);
								$("#detaillist").html( $("#detaillist").html() 
										+ "<tr style='cursor:pointer' id='(\"" + jsonArr.list[i].pno + "\")'><td>"+ jsonArr.list[i].pno + "</td><td>" + decodeURIComponent(jsonArr.list[i].cname) + "</td><td>" + decodeURIComponent(jsonArr.list[i].president) 
										+ "</td><td>"+ decodeURIComponent(jsonArr.list[i].cno) + "</td><td>" + decodeURIComponent(jsonArr.list[i].cstatus) + "</td><td>" + decodeURIComponent(jsonArr.list[i].ctype) 
										+ "</td><td>" + decodeURIComponent(jsonArr.list[i].tel) + "</td><td>" +decodeURIComponent(jsonArr.list[i].caddress).split('&') + "</td><td>" + decodeURIComponent(jsonArr.list[i].email) 
										+ "</td></tr>" );
							}
						},
						error: function(request,status,error){
					        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					    }
				 })
			});
			
			$(function(){
				$('tr').click(function(){
					$.ajax({
						url: "/jsmi/detailupdate",
						data: {pno:$(this).filter(':first-child').val()},
						type: "get",
						datatype: "json",
						success: function(data){
							var jsonObj = JSON.stringify(data);
							
							$('#cname').text(data.cname);
							$('#president').text(data.president);
						},
						error: function(request,status,error){
					        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					    }
						
					})
					
				});
			}); 
			
		});

		
		</script>
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
							href="/jsmi/views/main2/myinfo/myinfo3.jsp">거래처 정보</a></li>
					</ul>
				</div>
			</div>
			
			
			

		</div>

	</div>
	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>
	
	<script>
	
	</script>
</body>
</html>