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
	String id = (String)session.getAttribute("id");
%>
	<%
	if(!id.equals("admin")){
	%>
		<span>일반회원 <%=id %>님이 환영합니다.</span> <a href = "update.jsp">(정보수정)</a> <a href = "logout.jsp">(로그아웃)</a><br>
	<%
	}else{
	%>
		<span>관리자 <%=id %>님 환영합니다.</span> <a href = "update.jsp">(정보수정)</a> <a href = "logout.jsp">(로그아웃)</a><br>
	<%
	}
	%>
</body>
</html>

