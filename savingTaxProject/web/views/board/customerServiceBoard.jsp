<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import = "java.util.*, board.member.vo.Board" %> 
	<%List<Board> blist = (List)request.getAttribute("blist"); 
	Board b = (Board)request.getAttribute("b");%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body class="">
	<%if(b !=null){ %>
	<table class = "content">
	<tr><td>글 번 호</td><td><%=b.getPost_no() %></td></tr>
	<tr><td>작성 일자</td><td><%=b.getPost_date() %></td></tr>
	<tr><td>작 성 자</td><td><%=b.getWriter_no() %></td></tr>
	<tr><td>글 제 목</td><td><%=b.getPost_title()%> </td></tr>
	<tr><td colspan = "2" height = "300"><%=b.getPost_contents() %> </td></tr>
	
	</table>
	<br>	
	<br>
	<% } %>
	
	
	<br><table aligen ="center" border = "1px solid black"><tr><th>글 번호</th><th>글 제목</th><th>관리자 번호</th><th>조회수</th><th>글작성일</th> 
 <% if(blist !=null){ for(Board e : blist){ %>
 <tr><td><%int postNo =e.getPost_no();%><%=postNo %></td>
 <td><a href ="/jsmi/boardcontent?postNo=<%=postNo%>" ><%=e.getPost_title() %></a></td>
 <td><%=e.getWriter_no() %></td>
 <td></td>
 <td><%=e.getPost_date() %></td>
</tr>
 <%}} %>
</table>


<div align = "center"><input style = "width : 50%" type = "search" name = "searchtitle" size = "50">

<form action = "/jsmi/selecttitle" method ="post">
&nbsp; <input type = "submit" value = "검색"> 
</form>
<button onclick ="location.href ='/jsmi/views/board/writingForm.jsp'">글 작성</button></div>
	

</body>
</html>