<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/jsmi/css/common/font.css" type="text/css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
.side {
	width:200px;
	height:600px;
	background:#101020;
}

a {
	display:block;
	text-decoration:none;
	//background:#101020;
	align:center;
	padding-left:30px;;
	padding-top:15px;;
	color:white;
}
.side a:hover {
	background:#1080ff;
	color:white;
	
}

a:hover {
	text-decoration:none;
}


img {
	margin-bottom:7px;
}

.selected {
	background:#1080ff;
}


</style>
<script type="text/javascript">
	$(function(){
		$('.side > a').click(function(){
			$('.side a').attr('class', 'block');
			$(this).css({
				"color" :"white",
				"text-decoration" : "none"
			})
			$(this).attr('class', 'block selected');
		})
	})
</script>
</head>

<body>
	
	<div class="side">
			<a class="block" href="/jsmi/views/main2/menu/main2.html"><img src="/jsmi/images/main2/main2icons/home.png" width="20px" height="20px"> &nbsp; &nbsp; &nbsp; 메인화면</a>
			<a class="block" href="/jsmi/views/main2/myinfo/myinfo1.jsp"><img src="/jsmi/images/main2/main2icons/input.png" width="20px" height="20px"> &nbsp; &nbsp; &nbsp; 정보입력</a>
			<a class="block" href="/jsmi/views/main2/daily/inputdaily.jsp"><img src="/jsmi/images/main2/main2icons/record.png" width="20px" height="20px"> &nbsp; &nbsp; &nbsp; 장부작성</a>
			<a class="block" href="/jsmi/views/main2/emp/emp1.jsp" href="#"><img src="/jsmi/images/main2/main2icons/employee.png" width="20px" height="20px"> &nbsp; &nbsp; &nbsp; 직원관리 </a>
			<a class="block" href="/jsmi/views/main2/tax/vatDetail.jsp"><img src="/jsmi/images/main2/main2icons/calc.png" width="20px" height="20px"> &nbsp; &nbsp; &nbsp; 세금계산</a>
			<a class="block" href="/jsmi/views/main2/settlement/salesncost.jsp"><img src="/jsmi/images/main2/main2icons/show.png" width="20px" height="20px"> &nbsp; &nbsp; &nbsp; 결산</a>
			
			

	</div>
</body>
</html>