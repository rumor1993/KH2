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
		<span>�Ϲ�ȸ�� <%=id %>���� ȯ���մϴ�.</span> <a href = "update.jsp">(��������)</a> <a href = "logout.jsp">(�α׾ƿ�)</a><br>
	<%
	}else{
	%>
		<span>������ <%=id %>�� ȯ���մϴ�.</span> <a href = "update.jsp">(��������)</a> <a href = "logout.jsp">(�α׾ƿ�)</a><br>
	<%
	}
	%>
</body>
</html>

