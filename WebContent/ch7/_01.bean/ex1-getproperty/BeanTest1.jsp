<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="javabean.BeanTest" %>
<!DOCTYPE html>
<html>
<head>
<title>javabean test 1</title>
</head>
<body>
<h1>자바빈 예제</h1>
<% BeanTest bt = new BeanTest(); %>
<h3><%=bt.getName() %></h3>
</body>
</html>