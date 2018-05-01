<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	int sum =0;
	for(int i =1; i<=100; i++){
		sum +=i;
	}
	out.print("<h2>1. " + sum + "입니다.</h2>");
	System.out.println("<h2>2. " + sum + "입니다.</h2>");
%>
</body>
</html>