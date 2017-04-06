<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/jsmi/css/main2/bootstrap.min.css" rel="stylesheet">
<link href="/jsmi/css/main2/styles.css" rel="stylesheet">
<script type="text/javascript " src="/jsmi/js/main2/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
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
</style>
<script type="text/javascript">
	$(function(){
		$.ajax({
			url: "/jsmi/dtsearch",
			type: "get",
			dataType: "json",
			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
			success: function(data){
				console.log("json 성공");
				console.log("data : " + data);
				var jsonObj = JSON.stringify(data);
				//변환된 제이슨 객체를 제이슨 배열로 변환
				var jsonArr = JSON.parse(jsonObj);
			
				$("#itablebody").html("<tr><th>거래구분</th><th>날짜</th><th>거래처</th><th>계정항목</th><th>품목</th>" +
						"<th>금액</th><th>결재방법</th><th>증빙자료</th></tr>");
				for(var i in jsonArr.list){
					console.log(jsonArr.list[i].atype);
					$("#itablebody").html($("#itablebody").html() +
							"<tr><td style='display:none'><div class='checkbox' style='margin: 0 auto;'> " + 
							"<input type='checkbox' style='margin: 3px  0 0 7px;' value='"+ jsonArr.list[i].dno + "' class='inputchk'></div></td>" +
							"<td>" + jsonArr.list[i].atype + "</td><td>" + jsonArr.list[i].ddate + "</td><td>" + decodeURIComponent(jsonArr.list[i].pname) + 
							"</td><td>" + decodeURIComponent(jsonArr.list[i].anm) + "</td><td>" + decodeURIComponent(jsonArr.list[i].product) + "</td><td>" + jsonArr.list[i].cost +
							"</td><td>" + decodeURIComponent(jsonArr.list[i].billing) + "</td><td>" + decodeURIComponent(jsonArr.list[i].proof_type) + "</td></tr>");
				}
			},
			error: function(request,status,error){
		        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		       }
		}); 
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
						<li><a class="tabmenu lactive"
							href="/jsmi/views/main2/settlement/salesncost.jsp">매출/비용 분석</a></li>
						<li><a class="tabmenu"
							href="/jsmi/views/main2/settlement/assets.jsp">자산 분석</a></li>
						<li><a class="tabmenu"
							href="/jsmi/views/main2/settlement/yield.jsp">수익률 분석</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-12">
				<div class="col-md-6">
					<div class="well" style="margin-bottom:0px;">bar chart</div>
					<div id="barchart" class="form-control">
							
					</div>
				</div>
				<div class="col-md-6">
					<div class="well" style="margin-bottom:0px;">circle chart</div>
					<div id="circlechart" class="form-control">			
				</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<%@ include file="/views/common/main2/main2footer.jsp"%>
</body>
</html>