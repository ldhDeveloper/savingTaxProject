<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->


    <title>Join us</title>

    <!-- Bootstrap core CSS -->
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

<!-- <script type="text/javascript">
	function checkValue(){
		if($("input[name=userpwd]").val() == $("input[name=userpwd2]").val())
			return true;
		
		else{
			alert("암호와 암호 확인의 값이 일치 하지 않습니다.");
			$("input[name=userpwd]").focus();
			return false;
		}
	}
</script> -->
  </head>


  <body>

    <div class="container">
      <form action="/jsmi/signup" class="form-signin">

      	<input type="button" class="btn close" value="x 닫기" onclick="location.href='/jsmi/views/main1/main1.jsp'"><br>

        <h2 class="form-signin-heading" align="center">회원가입</h2><br>
        <table style="cellspacing:5px">
			<tr><td width="5%"></td><td width="30%">이름</td><td width="60%"><input type="text" id="" class="form-control" name="username" placeholder="이름을 입력하세요." required autofocus></td><td width="5%"></td><td></td><td></td><td width="5%"></td></tr>
			<tr><td></td><td >아이디</td><td><input type="text" id="" class="form-control" name="userid" placeholder="아이디를 입력하세요." required ></td><td></td><td></td><td><button class="btn btn-warning">중복확인</button></td><td></td></tr>   
			<tr><td></td><td >비밀번호</td><td><input type="password" id="" class="form-control" name="userpwd" placeholder="비밀번호를 입력하세요." required></td><td></td><td></td><td></td><td></td></tr>   
			<tr><td></td><td >비밀번호확인</td><td><input type="password" id="" class="form-control" name="userpwd2" placeholder="비밀번호를 다시 입력하세요." required ></td><td></td><td></td><td></td><td></td></tr>   
			<tr><td></td><td >이메일주소</td><td><input type="text" id="" class="form-control" name="email" placeholder="이메일주소를 입력하세요." required ></td><td></td><td></td><td></td><td></td></tr>           
        </table>
        
		<br>
        <input class="btn btn-lg btn-info btn-block" type="submit" value="가입 완료">
        <input class="btn btn-lg btn-default btn-block" type="reset" value="작성 취소" onclick="location.href='/jsmi/views/main1/main1.jsp'">

      </form>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>