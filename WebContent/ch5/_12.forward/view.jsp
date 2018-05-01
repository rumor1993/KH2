<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	String code = request.getParameter("code");
	String gopage = "/ch5/_12.forward/"+ code +"page.jsp";
%>
	<jsp:forward page='<%=gopage %>'/>
</body>
</html>