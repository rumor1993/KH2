<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Session</title>
</head>
<body>
	request 加己蔼 : <%=request.getAttribute("food") %><br>
	session 加己蔼 : <%=session.getAttribute("food") %>
	
</body>
</html>