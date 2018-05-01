<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<style>
div{background:green; color:white; text-align:right}
</style>
<body>
	
<%
	String id ="";
	id =(String)session.getAttribute("id");
	if(id != null && !id.equals("")){
%>
<div>
	<h3><%=session.getAttribute("id") %>님이 로그인하셨습니다. 
	<a href ="../_2.include_ex/logout.jsp">로그아웃 </a></h3>
	</div>
	
<%
	} else{ 
%>
	<div>
	<h3><a href ="../_2.include_ex/login.jsp">로그인</a></h3>
	</div>
<%
	} 
%>
</body>
</html>


