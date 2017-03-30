<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->


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
  max-width: 430px;
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
</style>
  </head>


  <body>
		<div class="container">
   	 
    
      <form action="/jsmi/findid" method="post" class="form-signin">

      	<input type="button" class="btn close"  value="X닫기" onclick="location.href='/jsmi/main.jsp'"><br>

        <h2 class="form-signin-heading" align="center">아이디찾기</h2><br>
        <table width="100%">
        	<tr><td>이  름</td><td> <input type="text" id="inputid" class="form-control" name="username" placeholder="가입하신 이름을 입력하세요." required autofocus></td></tr>	
        	<tr><td>이메일</td><td><input type="text" id="inputemail" name="email" class="form-control" placeholder="가입하신 이메일주소를 입력하세요." required></td></tr>
        </table>
        
		<br>
        <input class="btn btn-lg btn-info btn-block" type="submit" value="입력 완료">
		<input class="btn btn-lg btn-success btn-block" type="button" value="로그인 화면으로" onclick="location.href='/jsmi/views/main1/member/loginForm.html'">
      </form>

    </div> <!-- /container -->  

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>