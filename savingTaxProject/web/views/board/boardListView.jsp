<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import = "java.util.*,board.model.vo.Board" %>
	<%List<Board> bList = (List<Board>)request.getAttribute("blist");
	int listCount = ((Integer)request.getAttribute("listCount")).intValue();
	int currentPage = ((Integer)request.getAttribute("currentPage")).intValue();
	int maxPage = ((Integer)request.getAttribute("maxPage")).intValue();
	int startPage = ((Integer)request.getAttribute("startPage")).intValue();
	int endPage = ((Integer)request.getAttribute("endPage")).intValue();
	%>
	
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>기본 게시판 틀</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
	position: relative;
	left: 10px;
}
</style>

</head>

<body>
	<%@ include file="../common/menubar.jsp" %>
	
	<form action=""></form>
				<h1 align ="center">게 시 판</h1>
	<br><br>

	<div class="middle hidden-xs">
					<table width="970" class="table table-bordered">
						<thead>
							<tr class="warning">
								<th>번     호</th>
								<th>제     목</th>
								<th>작 성 자</th>
								<th>작 성 일</th>
								<th>조 회 수</th>
								<th>파일여부</th>
							</tr>
						</thead>
						<% if(bList !=null){  for(Board b : bList){%>
						<tbody>
							<tr class="success">
								<td><%=b.getPost_no() %></td>
								<td><a href="/jsmi/postdetail?post_no=<%=b.getPost_no()%>&board_no=<%=b.getBoard_no()%>"><%=b.getPost_title() %></a></td>
								<td><%=b.getWriter_no() %></td>
								<td><%=b.getPost_date() %></td>
								<td><%=b.getReadCount() %></td>
								<td><%=b.getOriginalFileName()%></td>
							</tr>
							<tr><td colspan ="6" >&nbsp; 
							
							</td></tr>
						</tbody>
						<%}} %>
					</table>

		
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
		<div class="col-xs-0 col-md-7"></div>

		<div class="col-xs-12 col-md-2">
			<input type="text" name="search" placeholder="검색할 제목을 입력하세요.">
		</div>
		<div class="col-xs-0 col-md-3">
			<input type="submit" class="btn btn-primary" value="검색">		
		</div>
	</div>
	
		<br>
	
		<div class="row">
		<div class="col-xs-0 col-md-6"></div>

		<div class="col-xs-12 col-md-3">
			
		</div>

		<div class="col-xs-0 col-md-3">
			<input type="submit" class="btn btn-primary" value="글쓰기">		
		</div>

	</div>


	<%@ include file="../common/footer.jsp" %>
</body>
</html>