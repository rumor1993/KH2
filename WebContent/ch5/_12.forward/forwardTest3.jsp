<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%request.setCharacterEncoding("euc-kr"); %>
    <%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<style>
 h1{text-align: center}
 table{width:400px;margin:0 auto;}
 tr{height:50px;text-align:center}
 td:nth-child(2n){background:yellow; width:75%}
 td:nth-child(2n+1){background:orange;}
 input[type="text"]{width:96%;margin:0 1%;height:30px}
 tr:first-child > td  {background:#ef6b81}
</style>
<body>
	<h2>포워드된 페이지 (forwardTest3.jsp)입니다.</h2>
<table>
	<%
		Enumeration<String> e = request.getParameterNames();
		while(e.hasMoreElements()){
			String name = e.nextElement();
			String value = request.getParameter(name);
		
	%>
	<tr>
		<td><%=name %></td>
		<td><%=value %></td>
	</tr>
	<%} %>
</table>
</body>
</html>