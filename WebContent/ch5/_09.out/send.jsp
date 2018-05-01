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
	String id=request.getParameter("id");
	String pass=request.getParameter("pass");
	String jumin1=request.getParameter("jumin1");
	String jumin2=request.getParameter("jumin2");
	String email=request.getParameter("email");
	String domain=request.getParameter("domain");
	String gender=request.getParameter("gender");
	String hobby[] =request.getParameterValues("hobby");
	String post1=request.getParameter("post1");
	String post2=request.getParameter("post2");
	String address=request.getParameter("address");
	String intro=request.getParameter("intro");

	out.print("<p>아이디 = " + id + "</p><br>");
	out.print("<p>비밀번호 = " + pass+"</p><br>");
	out.print("<p>주민번호 = " + jumin1+"-"+jumin2+"</p><br>");
	out.print("<p>e-mail = " +email+"@"+domain +"</p><br>");		
	out.print("<p성별 = " +gender +"</p><br>");
	for(int i=0; i<hobby.length; i++){
	out.print("<p>취미 = " +hobby[i] +"</p><br>");}
	out.print("<p>우편 = " +post1+"-"+post2 +"</p><br>");
	out.print("<p>주소 = " +address +"</p><br>");
	out.print("<p>자기소개 = " +intro +"</p><br>");
	

%>
</body>
</html>