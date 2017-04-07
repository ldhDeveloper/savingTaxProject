<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String userid = request.getParameter("userid"); %>
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
<script type="text/javascript" src="/jsmi/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	var pwdcheck = false;
	
	$(function(){
		$('#pwd2').focusout(function(){
			if($('#pwd1').val() == $('#pwd2').val()){
				$('#nopwd').css("display","none");
				$('#conpwd').css("display", "");
				pwdcheck = true;
			} else {
				$('#nopwd').css("display","");
				$('#conpwd').css("display", "none");
				pwdcheck = false;
			}
		})
	})
	
		
		function formchk(){
	
			if(pwdcheck == false) {
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			} else if(pwdcheck == true){
				return true;
			}
		}
</script>
  <body>
		<div class="container">
   	 
    
      <form action="/jsmi/resetpwd" method="post" class="form-signin">
		<input type="hidden" name="userid" value="<%= userid %>">
      	<input type="button" class="btn close"  value="X닫기" onclick="location.href='/jsmi/main.jsp'"><br>

        <h2 class="form-signin-heading" align="center">비밀번호변경</h2><br>
        <table width="100%">
        	<tr><td>변경할 비밀번호</td><td> <input type="password" id="temppwd" class="form-control" name="temppwd" placeholder="임시 비밀번호를 입력하세요." required autofocus></td></tr>	
        	<tr><td>변경할 비밀번호</td><td> <input type="password" id="pwd1" class="form-control" name="pwd1" placeholder="변경할 비밀번호를 입력하세요." required ></td></tr>	
        	<tr><td>변경할 비밀번호 확인</td><td><input type="password" id="pwd2" name="pwd2" class="form-control" placeholder="한번더 변경할 비밀번호를 입력하세요." required></td></tr>
        	<tr id="conpwd" style="display:none"><td><span class="label label-success">비밀번호가 일치합니다</span></td></tr>
			<tr id="nopwd" style="display:none"><td><span class="label label-danger">비밀번호가 일치하지않습니다</span></td></tr>
        </table>
        
		<br>
        <input class="btn btn-lg btn-info btn-block" type="submit" value="입력 완료"  onclick="return formchk()">
		<input class="btn btn-lg btn-success btn-block" type="button" value="로그인 화면으로" onclick="location.href='/jsmi/views/main1/member/loginForm.html'">
      </form>

    </div> <!-- /container -->  

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>