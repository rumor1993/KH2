<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% request.setCharacterEncoding("euc-kr"); %>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>

<body>
	<h1>forwardTest2.jsp입니다. (제가 화면에 보일까요?)</h1>

<jsp:forward page='<%=request.getParameter("forwardPage") %>'>
	<jsp:param name ="tel" value="010-1234-4567"/>
	<jsp:param name ="alias" value="사랑이"/>
</jsp:forward>
<%="저는 출력이 될까요?" %>
</body>
</html>
