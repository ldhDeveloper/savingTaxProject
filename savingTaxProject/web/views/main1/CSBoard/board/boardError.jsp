<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String errorMessage = (String)request.getAttribute("message"); %>
<!DOCTYPE html PUBLIC >
<html>
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1><%= errorMessage %></h1>
</body>
</html>