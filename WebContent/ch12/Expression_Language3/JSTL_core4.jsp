<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c"
 				uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("euc-kr");
%>
	<h3>���̵� ���� : ${param.id }</h3>
	<h3>�̸��� : ${param.name }</h3>
</body>
</html>