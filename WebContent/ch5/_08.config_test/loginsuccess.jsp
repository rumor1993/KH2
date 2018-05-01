<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<title>성공?실패?</title>
</head>
<body>
<%	String save_id=config.getInitParameter("id");
	String save_pw=config.getInitParameter("pass");
	
	String id = request.getParameter("id");
	String pass = request.getParameter("passwd");
		if(save_id.equals(id)&&save_pw.equals(pass)){%>
			로그인에 성공하셨습니다.
		<%}else{ %>
			로그인에 실패했습니다.
<%} %>	
</body>
</html>