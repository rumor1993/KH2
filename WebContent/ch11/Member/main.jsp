<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
	body{text-align:center}
</style>
</head>
<body>
	<%@ include file = "header.jsp" %>
	<%
		if(id.equals("admin")){
	%>
	<a href = "member_list.jsp">�����ڸ�� ����(ȸ�� ��� ����)</a>
	<%
	}
	%>
</body>
</html>