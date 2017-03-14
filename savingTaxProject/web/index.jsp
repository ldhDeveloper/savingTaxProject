<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지시작</title>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	// 새창열기
	 /* $('h2').click(function(){
		window.open("http://127.0.0.1:7660/jsmi/views/functionMain.jsp", null, "postwindow");
	}); */ 
	/* function newBrowser(){
		window.open("http://127.0.0.1:7660/jsmi/views/functionMain.jsp", "", "location=no, toolbar=no, memberbar=no, scrollbars=yes, resizable=yes");
	} */
	
	function newBrowser(){
		location.href = "views/functionMain.jsp";
	}
	
</script>
</head>
<body>
<h1>시작페이지</h1>
<h2 onclick="newBrowser();">기능페이지</h2>
</body>
</html>