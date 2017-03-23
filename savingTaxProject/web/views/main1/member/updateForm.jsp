<!-- 회원가입form에 다시 작성하겠습니다. 이건 mypageForm을 보기 위한 것입니다. -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="member.model.vo.Member"%>
    
<%
	Member m = (Member)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/common.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	background: white;
}

#border1, #border2, #border3, #border4, #border5, #border6, #border7,
	#border8 {
	border: 1px solid white;
}

#border1, #border3, #border4, #border6, #border7 {
	background: #10aaff;
}

p {
	font-family: google;
	font-size: 0.8em;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	margin: auto;
}

table {
	position: relative;
	z-index: 1000;
	top: 10%;
	left: 80%;
}

button {
	float: right;
	margin: 2px;
}

#bar {
	padding: 0px;
	margin-top: 3px;
}

#viewOn {
	width: 50px;
	height: 50px;
	position: absolute;
	left: 85%;
	top: 50%;
	z-index: 1;
}

.table {
	position : absolute;
	left : 10px;
}


</style>

</head>

<body>
	<header>
		<div class="container-fluid" id="bar"></div>
		
		<div class="row">
			<div class="col-xs-0 col-md-2"></div>
			
			<div class="col-xs-6 col-md-4" style="background: white;">
				<img src="/jsmi/images/logo4.png" class="img-responsive" id="logo">
				<img src="/jsmi/images/menubar/logosize.png" class="img-responsive">
			</div>
			
			<div class="col-xs-3 col-md-3"></div>
			
			<div class="col-xs-2 col-md-1"></div>
			
			<div class="col-xs-0 col-md-2"></div>
		</div>
	</header>
	
	<form action="/jsmi/mupdate"></form>
	
	<div class="container">
		<div class="row">
		<div class="col-xs-0 col-md-4"></div>
		<div class="col-xs-0 col-md-4"><h1>회원정보 수정</h1></div>
		<div class="col-xs-0 col-md-4"></div>
		
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-xs-0 col-md-4"></div>

			<div class="col-xs-12 col-md-4">
				<%-- <h2>회원정보<%  %></h2><br> --%>
				
				<table class="table">
					<!-- <thead>
						<tr colspan="3">
							<th>분류</th>
							<th>내용</th>
						</tr>
					</thead> -->
					
					<tbody>
						<tr class="success">
							<td>이름</td>
							
							<td>
								<input type="text" name="username" size="20" readonly 
								value="<%= m.getUserName() %>">
							</td>
						</tr>
						<tr class="danger">
							<td>아이디</td>
							
							<td>
								<input type="text" name="userid" size="20" readonly 
								value="<%= m.getUserId() %>">
							</td>
						</tr>
						<tr class="info">
							<td>비밀번호</td>
							
							<td>
								<input type="text" name="userpwd" size="20" readonly 
								value="<%= m.getUserPwd() %>">
							</td>
						</tr>
						<tr class="warning">
							<td>이메일</td>
							
							<td>
								<input type="text" name="email" size="20" readonly 
								value="<%= m.getUserEmail() %>">
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			
			<div class="col-xs-0 col-md-4"></div>
		</div>
	</div>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<div class="row">
		<div class="col-xs-0 col-md-4"></div>
		
		<div class="col-xs-12 col-md-4">
			<!-- 수정하기 버튼  //일단은 버튼 이동 말고 링크로 해놓을 게요--> 
			<a href="/jsmi/mdelete?userid + <%= m.getUserId() %>">회원탈퇴</a>
			<br>
			
			<!-- 시작페이지로 이동 //일단은 버튼 이동 말고 링크로 해놓을 게요--> 
			<a href="/jsmi/views/main1/member/fakeIntroduce.jsp">시작페이지로 이동</a>
			<br>
		</div>
		
		<div class="col-xs-0 col-md-4"></div>
	
	</div>
	

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	

	
	<footer style="background: white; padding: 10px;">

		<div class="row">
			<div class="col-xs-0 col-md-2"></div>
			<div class="col-xs-12 col-md-8">
				<p>R&D사 서울시 구로구 구로3동 코오롱디지털타워빌란트2차 1405-1호 | 대표자 : 이종태 TEL. 02
					6925 0202 | FAX. 0303 0123 6389 통신판매등록번호 : 제2013-서울구로-0669호 |
					사업자등록번호 : 211-87-17024 COPYRIGHTS (c) (주)성공닷컴 ALL RIGHTS RESERVED.</p>
			</div>
			<div class="col-xs-0 col-md-2"></div>
		</div>
	</footer>
</body>
</html>


<!-- <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags


    <title>Join us</title>

    Bootstrap core CSS
    <link href="/jsmi/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
body {
  padding-top: 40px;
  padding-bottom: 40px;
  background:rgba(0,0,0,0.7);
}

.form-signin {
  max-width: 630px;
  padding-top:0%;
  padding: 3%;
  margin: 0 auto;
  margin-top:0%;
  background-color: #eee;
  box-shadow:7px 10px 5px black;
}
.form-signin .form-signin-heading,
.form-signin .checkbox {
  margin-bottom: 10px;
}
.form-signin .checkbox {
  font-weight: normal;
}
.form-signin .form-control {
  position: relative;
  height: auto;
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
.form-control {
	margin-top:10px;
	height:80%;
}
#joinbtn {
	margin-top:5px;
}

.btn-danger {
	float:right;
		
}


</style>

<script type="text/javascript">
	function checkValue(){
		if($("input[name=userpwd]").val() == $("input[name=userpwd2]").val())
			return true;
		
		else{
			alert("암호와 암호 확인의 값이 일치 하지 않습니다.");
			$("input[name=userpwd]").focus();
			return false;
		}
	}
</script>
  </head>


  <body>

    <div class="container">
      <form action="/jsmi/signup" class="form-signin">
      	<button type="button" class="btn btn-danger" onclick="location.href='/jsmi/views/main1/main1.html'">x 닫기</button><br>
        <h2 class="form-signin-heading" align="center">회원가입</h2><br>
        <table style="cellspacing:5px">
			<tr><td width="5%"></td><td width="30%">이름</td><td width="60%"><input type="text" id="" class="form-control" name="username" placeholder="이름을 입력하세요." required autofocus></td><td width="5%"></td><td></td><td></td><td width="5%"></td></tr>
			<tr><td></td><td >아이디</td><td><input type="text" id="" class="form-control" name="userid" placeholder="아이디를 입력하세요." required ></td><td></td><td></td><td><button class="btn btn-warning">중복확인</button></td><td></td></tr>   
			<tr><td></td><td >비밀번호</td><td><input type="password" id="" class="form-control" name="userpwd" placeholder="비밀번호를 입력하세요." required></td><td></td><td></td><td></td><td></td></tr>   
			<tr><td></td><td >비밀번호확인</td><td><input type="password" id="" class="form-control" name="userpwd2" placeholder="비밀번호를 다시 입력하세요." required ></td><td></td><td></td><td></td><td></td></tr>   
			<tr><td></td><td >이메일주소</td><td><input type="text" id="" class="form-control" name="email" placeholder="이메일주소를 입력하세요." required ></td><td></td><td></td><td></td><td></td></tr>           
        </table>
        
		<br>
        <button class="btn btn-lg btn-info btn-block" type="submit">가입 완료</button>
        <button class="btn btn-lg btn-default btn-block" type="reset">작성 취소</button>

      </form>

    </div> /container


    IE10 viewport hack for Surface/desktop Windows 8 bug
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html> -->