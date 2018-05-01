<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	내가 좋아하는 음식은 <%=request.getAttribute("food") %>
	<p>request 속성값</p>
</body>
</html>