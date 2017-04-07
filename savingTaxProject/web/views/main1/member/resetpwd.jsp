<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<script type="text/javascript" src="/jsmi/js/jquery-3.1.1.min.js"></script>

    <title>Signin Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="/jsmi/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
body {
  padding-top: 40px;
  padding-bottom: 40px;
  background:rgba(0,0,0,0.7);
}

.form-signin {
  max-width: 550px;
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
}
#joinbtn {
	margin-top:5px;
}

.btn-danger {
	float:right;
		
}
td {
	line-height:10px;
}
.close {
	position:relative;
	top:-20px;
	left:20px;
}
.sendemail {
	margin-top:10px;
	margin-left:20px;
	margin-right:auto;
}
</style>
<script>
	
</script>
  </head>


  <body>
		<div class="container">
   	 
    
      <form action="/jsmi/sendpwd" method="post" class="form-signin">
      	

      	<input type="button" class="btn close"  value="X닫기" onclick="location.href='/jsmi/main.jsp'"><br>

        <h2 class="form-signin-heading" align="center">비밀번호 변경</h2><br>
        <table width="530">
        	<tr><td>아이디</td><td> <input type="text" id="inputid" class="form-control" name="userid" placeholder="가입하신 아이디를 입력하세요." required autofocus></td><td></td></tr>
        	<tr><td>이메일</td><td><input type="text" id="inputemail" name="email" class="form-control" placeholder="가입하신 이메일주소를 입력하세요." required></td><td><button class="btn btn-success sendemail" type="submit">인증메일발송</button></td></tr>
        </table>
        
		<br>
		<input class="btn btn-lg btn-success btn-block" type="button" value="로그인 화면으로" onclick="location.href='/jsmi/views/main1/member/loginForm.html'">
      </form>

    </div> <!-- /container -->  

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>