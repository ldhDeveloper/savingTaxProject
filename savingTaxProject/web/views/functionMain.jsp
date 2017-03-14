<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	// 새창열기
	/* $(function(){
		window.open("http://127.1.1.0:7660/jsmi", "", "postwindow");
	}); */
	/* function newBrowser(){
		window.open("http://127.0.0.1:7660/jsmi/views/functionExecute.html", "", "location=no, toolbar=no, memberbar=no, scrollbars=yes, resizable=yes");
	} */
	
	
	
	
	
</script>
<style type="text/css">
	#background {
		
	}
	body{
		background-image : url(../images/mainbg.jpg);
	}
	
	table {
	
	}
	
	#main {
		position : absolute;
		top: 15%;
		left : 10%;
		z-index: 1000;
		width: 1500px;
		height: 700px;
		background: #10aaff;
	}
	
	img {
		width: 100px;
		height: 100px;
		padding: 5px;
		border: 1px solid navy;
		margin: 100px;
		position: relative;
		top: 30px;
		left: 30px;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<div id="background" align="center">
		<div id="main">
			<table>
				<tr>
					<td><a href="functionExecute1.html">
					<img src="../images/info.png"></a></td>
					<td><a href="functionExecute2.html">
					<img src="../images/ledger.png"></a></td>
					<td><a href="functionExecute3.html">
					<img src="../images/employee.png"></a></td>

				</tr>
				<tr>
					<td><a href="functionExecute4.html">
					<img src="../images/cal.png"></a></td>
					<td><a href="functionExecute5.html">
					<img src="../images/tax.png"></a></td>
					<td><a href="functionExecute6.html">
					<img src="../images/help.png"></a></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>