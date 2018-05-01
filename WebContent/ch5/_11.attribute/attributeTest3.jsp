<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import ="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<title>Attribute Test</title>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	String name = (String)application.getAttribute("name");
	String  id = (String)application.getAttribute("id");

	
%>
<h1>영역과 속성 테스트</h1>
<table border="1">
		<tr><td colspan="2">Application 영역에 저장할 내용들</td></tr>
		<tr>
			<td>이름</td>
			<td><%=name %></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><%=id %></td>
		</tr>	
	</table>
	
<table border="1">
<tr><td colspan="2">Session 영역에 저장할 내용들</td></tr>
<%
	Enumeration<String> e = session.getAttributeNames();
	while(e.hasMoreElements()){
		String attributeName = e.nextElement();
		String attributeValue = (String)session.getAttribute(attributeName);
	
%>
	<tr>
		<td><%=attributeName %></td>
		<td><%=attributeValue %></td>
	</tr>
<%} %>
</table>

</body>
</html>