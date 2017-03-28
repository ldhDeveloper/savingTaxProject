<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*, board.model.vo.Board"%>
<%-- 	<%List<Board> bList = (List)request.getAttribute("bList"); %> --%>
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
textarea {
resize : none;}
.tbody {
	position : absolute;	
	width: 800px;
	margin-left:25%;
	z-index : 4;
	opacity : 0.9;
	
}
.textbg {
	
position: absolute;
margin-left:25%;
margin-right:25%;
height:600px;
	height : 600px;
z-index : 0;
opacity : 0.5;
}
</style>

</head>

<body>
	<%@ include file="/views/common/main1/menubar.jsp"%>
	<br><br><br>
	<div class="tbody">
		<img src= "/jsmi/images/main1/notice.png">
		<br><br><br>
	<fieldset>

	<legend>제목</legend>
		<table class="table table-strap">
		<tr><th>글번호</th><th colspan = "5">작성자</th><th>작성일자</th><th>조회수</th> </tr>
			<tbody>
				<tr>
				</tr>
				<tr class="warning">
					<td colspan = "10"><textarea class="form-control" rows="10" id="comment">
								</textarea></td>
				</tr>
				<tr class="active">
					<td>덧글작성</td>
					<td colspan="6"><textarea style = "opacity:0.8" class="form-control" rows="3"
							id="comment"></textarea></td>
					<td style ="text-align:right"><input type="submit" class="btn btn-primary" value="등록">
						<input type="submit" class="btn btn-primary" value="취소"></td>
				</tr>
				<tr>
			</tbody>
		</table>
		</fieldset>
		</div>
	
	<img class= "textbg" width = "100%" height ="450px" src = "/jsmi/images/main1/legerpad.png">



		<br> <br> <br> <br> <br> <br> <br>
		<br>


	
</body>
</html>