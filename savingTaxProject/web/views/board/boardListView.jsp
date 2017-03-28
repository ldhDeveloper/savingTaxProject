<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import = "java.util.*,board.model.vo.Post" %>
	<%List<Post> plist = (List<Post>)request.getAttribute("plist");
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
.tbody {
  background:white;
   width:800px;
   margin-left:auto;
   margin-right:auto;

}
.thead{

	background: -webkit-linear-gradient( #ffffff, #b0e0e6);
	background: -o-linear-gradient( #ffffff, #b0e0e6);
	background: -moz-linear-gradient( #ffffff, #b0e0e6);
	background: linear-gradient( #ffffff, #b0e0e6);
	border: solid 1px #dcdcdc;
	height: 40px;
	border-radius: 4px;
	padding-top: 0.8%;
	font-size: 12pt;
	box-shadow: 3px 3px 6px #2a82a3;

}
tbody tr:hover {
background : #bbbbbb;

}
</style>

</head>

<body>
	<%@ include file="../common/menubar.jsp" %><br><br><br>


	<center><img src = "/jsmi/images/main1/notice.png"></center>
	<br><br>

	<div class="tbody">
	<fieldset>
	<legend> 공지사항</legend>
	 <h3 align = "left">절세미인의 모든 소식을 전해드립니다.</h3>
					<table class="table table-strap">
						<thead>
							<tr class="thead">
								<th>번     호</th>
								<th colspan = "6">제     목</th>
								<th>작 성 자</th>
								<th>작 성 일</th>
								<th>조 회 수</th>
								
							</tr>
						</thead>
					
						<%if(plist != null) for(Post p : plist) {%>
							<tr><td><%=p.getPostNo() %> </td>
							<td colspan ="6" ><%=p.getPostName() %></td>
							<td><%=p.getpNo() %></td>
							<td><%=p.getPostDate() %></td>
							<td><%=p.getReadCount() %></td></tr>
							<%} %>
					
					</table>
			<div style="float:right">
			<input type="text" name="search" placeholder="검색할 제목을 입력하세요.">
			<input type="submit" class="btn btn-primary" value="검색">		
			<a href = "/jsmi/views/board/boardDetailView.jsp" class = "btn btn-primary">글쓰기 </a>
		</div>
		</fieldset>
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


			
		


	<%@ include file="../common/footer.jsp" %>
</body>
</html>