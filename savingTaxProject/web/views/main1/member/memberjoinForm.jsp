<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
<script type="text/javascript" src="/jsmi/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	var idcheck = false;
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
		
		//$('#idchk').click(function(){
		$('#userid').focusout(function(){
			var chkId = "id=" + $('#userid').val();
			console.log(chkId);
	        $.ajax({
	            url: '/jsmi/idchk',
	            type: 'post',
	            data: chkId,
	            success:function(data){
	            	console.log(data);
	                if(data == "true"){
	                	$('#noid').css("display","none");
	    				$('#conid').css("display", "");
	    				idcheck = true;
	                } else {
	                	$('#noid').css("display","");
	    				$('#conid').css("display", "none");
	    				idcheck = false;
	                }
	            }
	        })
		})
	})
	
	function formchk(){
		if(idcheck == false){
			alert("아이디 체크를 하셔야 합니다.");
			return false;
		} else if(pwdcheck == false) {
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		} else if(idcheck == true && pwdcheck == true){
			return true;
		}
	}
		function send(){
			var re=/^[가-힣]+$/;
			var re2 = /^[a-zA-Z0-9]{4,8}$/; 
			var re3=/^[a-zA-Z0-9]{8,10}$/;
			 
			var name =$('input[name=username]');
			var id=$('input[name=userid]');
			var pwd=$('input[name=userpwd]');
			var pwd2=$('input[name=userpwd2]');
			
			if (!re.test(name.val())) {
			      alert("잘못된 이름입니다.한글을 입력해주세요.");
			      name.value="";
			      $('#username').focus();
			      return false;
			}else if (!re2.test(id.val()) ) {
			      alert("잘못된 아이디입니다.숫자 영문자조합의 4~8자리를 입력해주세요.");
			      id.value="";
			      $('#userid').focus();
			      return false;
			}else if(!re3.test(pwd.val())){
				alert('비밀번호는 숫자와 영문자 조합으로 8~10자리를 사용해야 합니다.');
				pwd.value=" ";
				$('#pwd1').focus();
				return false;
				}
			
			if(!re3.test(pwd2.val())){
				alert('비밀번호는 숫자와 영문자 조합으로 8~10자리를 사용해야 합니다.');
				pwd2.value="";
				$('#pwd2').focus();
				return false;
				}
		    alert("회원가입 성공");
		}
</script>
  </head>


  <body>

    <div class="container">
      <form action="/jsmi/signup" class="form-signin" onsubmit="return send();">

      	<input type="button" class="btn close" value="x 닫기" onclick="location.href='/jsmi/main.jsp'"><br>

        <h2 class="form-signin-heading" align="center">회원가입</h2><br>
        <table style="cellspacing:5px">
			<tr><td width="5%"></td><td width="30%">이름</td><td width="60%"><input type="text" id="username" class="form-control" name="username"  placeholder="이름을 입력하세요." required autofocus></td><td width="5%"></td><td></td><td></td><td width="5%"></td></tr>
			<tr><td></td><td >아이디</td><td><input type="text" id="userid" class="form-control" name="userid"  placeholder="아이디를 입력하세요." required >숫자 영문자조합의 4~8자리</td><td></td><td></td><td><a class="btn btn-warning" id="idchk" style="display:none">중복확인</a></td><td></td></tr>   
			<tr id="conid" style="display:none"><td></td><td ></td><td><span class="label label-success">아이디가 사용가능합니다</span></td><td></td><td></td><td></td><td></td></tr>
			<tr id="noid" style="display:none"><td></td><td ></td><td><span class="label label-danger">이미 존재하는 아이디입니다</span></td><td></td><td></td><td></td><td></td></tr>   
			<tr><td></td><td >비밀번호</td><td><input type="password" id="pwd1" class="form-control" name="userpwd" placeholder="비밀번호를 입력하세요." required>숫자 영문자조합의 8~10자리</td><td></td><td></td><td></td><td></td></tr>   
			<tr><td></td><td >비밀번호확인</td><td><input type="password" id="pwd2" class="form-control" name="userpwd2" placeholder="비밀번호를 다시 입력하세요." required >숫자 영문자조합의 8~10자리</td><td></td><td></td><td></td><td></td></tr>   
			<tr id="conpwd" style="display:none"><td></td><td ></td><td><span class="label label-success">비밀번호가 일치합니다</span></td><td></td><td></td><td></td><td></td></tr>
			<tr id="nopwd" style="display:none"><td></td><td ></td><td><span class="label label-danger">비밀번호가 일치하지않습니다</span></td><td></td><td></td><td></td><td></td></tr>   
			<tr><td></td><td >이메일주소</td><td><input type="email" id="" class="form-control" name="email" placeholder="이메일주소를 입력하세요." required ></td><td></td><td></td><td></td><td></td></tr>           
        </table>
        
		<br>
        <input class="btn btn-lg btn-info btn-block" type="submit" value="가입 완료">
        <input class="btn btn-lg btn-default btn-block" type="reset" value="작성 취소" onclick="location.href='/jsmi/main.jsp'">

      </form>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>