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
	<a href = "member_list.net">관리자모드 접속(회원 목록 보기)</a>	
	</c:if>
	
</body>
</html>