<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h3>�Ѿ�� �̸��� : ${param.name=="ȫ�浿" ? "����" : "ȣȣ"} </h3>
</body>
</html>