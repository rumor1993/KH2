<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
	body{text-align:center}
</style>
</head>
<body>
	<%@ include file = "header.jsp" %>
	<c:if test= "${id=='admin'}">
	<a href = "member_list.net">�����ڸ�� ����(ȸ�� ��� ����)</a>	
	</c:if>
	
</body>
</html>