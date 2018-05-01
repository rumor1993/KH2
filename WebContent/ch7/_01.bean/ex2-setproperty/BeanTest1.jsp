<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	javabean.BeanTest beantest = new javabean.BeanTest();
	pageContext.setAttribute("beantest",beantest);
	beantest.setName("º½ÀÔ´Ï´Ù.");
%>
<h3><%=beantest.getName() %></h3>
</body>
</html>