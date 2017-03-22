<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import = "java.util.*, board.model.vo.Board"  %>
	<%List<Board> bList = (List)request.getAttribute("bList"); %>
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
 div {
 	resize: none;
 }

</style>

</head>

<body>
	<%@ include file="../common/menubar.jsp" %>
<div class ="middle hidden-xs">
				<h1 align = "center">상세보기</h1>
		
					<table class="table table-bordered">
					
						<tbody>
							<tr class="success">
								<td>제     목</td>
								<td><%=bList.get(0).getPost_title() %></td>
							</tr>
							
							<tr class="danger">
								<td>작 성 자</td>
								<td><%=bList.get(0).getWriter_no() %></td>
							</tr>
							
							<tr class="info">
								<td>파일여부</td>
								<td><%if(bList.get(0).getOriginalFileName()!=null){ %>
								bList.get(0).getOriginalFileName()<%}else{ %>
								파일 없음<%} %></td>
							</tr>
							
							<tr class="warning">
								<td>내    용</td>
								<td>
									<textarea class="form-control" rows="10" id="comment">
									<%=bList.get(0).getPost_contents() %></textarea>
								</td>
							</tr>
							
							<tr class="active">
								<td colspan="2">
									<textarea class="form-control" rows="10" id="comment"></textarea>
								</td>
							</tr>														
						</tbody>
					</table>
	

	<div class="row">
		<div class="col-xs-0 col-md-5"></div>

		<div class="col-xs-12 col-md-3"></div>
		
		<div class="col-xs-0 col-md-4">
			<input type="submit" class="btn btn-primary" value="등록">
			<input type="submit" class="btn btn-primary" value="취소">			
		</div>
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


	<%@ include file="../common/footer.jsp" %>
</body>
</html>