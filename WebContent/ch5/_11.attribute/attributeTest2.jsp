<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	String email = request.getParameter("email");
	String addr = request.getParameter("addr");
	String tel =request.getParameter("tel");
	session.setAttribute("email", email);
	session.setAttribute("addr", addr);
	session.setAttribute("tel", tel);
	
	String name = (String)application.getAttribute("name");
%>
<h1>영역과 속성 테스트</h1>
<%=name %>님의 정보가 모두 저장되었습니다.
<a href = "attributeTest3.jsp">확인하기</a>

</body>
</html>