<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	request.setCharacterEncoding("euc-kr");
%>
 <%@ taglib prefix="c"
 				uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h3>�Ѿ�� �̸��� : ${param.name}</h3>
	
	<h3>�Ѿ�� ��̴� :
	<c:forEach var="hobbys" items="${paramValues.hobby }">
		<c:out value="${hobbys}"/>
	</c:forEach>
	</h3>
	
</body>
</html>