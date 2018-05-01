<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>

<html>
<head>
<%
  Calendar c = Calendar.getInstance();
  int hour = c.get(Calendar.HOUR_OF_DAY);
  int minute = c.get(Calendar.MINUTE);
  int second = c.get(Calendar.SECOND);
%>
<meta charset="EUC-KR">
<title>Servlet Test</title>
</head>
<style>
h3{color:red}
</style>
<body>
<h1>현재시간은 <%=hour %>시 <%=minute %>분 <%=second %>초 입니다.</h1>
<h3>나는 JSP입니다</h3>
</body>
</html>