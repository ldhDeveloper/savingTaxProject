<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "board.member.vo.Board, java.util.*" %>
    <%List<Board> blist = (List)request.getAttribute("blist"); %>
<!DOCTYPE html >
<html>
<head>
<meta  charset="UTF-8">
<title>고객센터</title>
</head>
<body>
<h1 align = "center">고객센터 게시판</h1>
<table aligen ="center" border = "1px solid black"><tr><th>글 번호</th><th>글 제목</th><th>관리자 번호</th><th>조회수</th><th>글작성일</th> 
 <% if(blist !=null){ for(Board e : blist){ %>
 <tr><td><%= e.getPost_no()%></td>
 <td><%=e.getPost_title() %></td>
 <td><%=e.getWriter_no() %></td>
 <td></td>
 <td><%=e.getPost_date() %></td>
</tr>
 <%}} %>
</table>

</body>
</html>