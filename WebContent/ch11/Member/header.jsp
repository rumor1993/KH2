<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
%>	
	<c:choose>
		<c:when test="${id!='admin' }">
			<span>�Ϲ�ȸ�� ${sessionScope.id }���� ȯ���մϴ�.</span> <a href = "member_update.net">(��������)</a> <a href = "logout.net">(�α׾ƿ�)</a><br>
		</c:when>
		
		<c:otherwise>
			<span>������ ${sessionScope.id }�� ȯ���մϴ�.</span> <a href = "member_update.net">(��������)</a> <a href = "logout.net">(�α׾ƿ�)</a><br>
		</c:otherwise>
	</c:choose>
	
<%-- 	<div id="header">
		<c:if test="${empty id }">
			<script>
				location.href="login.net";
			</script>
		</c:if>
		<c:if test="${!empty id }">
			<c:if test="${id=='admin' }">
				<span> ������ ${id } �� ȯ���մϴ�.></span>
			</c:if>
			<c:if test="${id!='admin' }">
				<span>�Ϲ�ȸ�� ${id } �� ȯ���մϴ�.</span>
			</c:if>
		</c:if> 
		</div>
--%>
		

	
	<%-- 
	<%
	if(!id.equals("admin")){
	%>
		<span>�Ϲ�ȸ�� <%=id %>���� ȯ���մϴ�.</span> <a href = "update.jsp">(��������)</a> <a href = "logout.jsp">(�α׾ƿ�)</a><br>
	<%
	}else{
	%>
		<%
	}
	%> --%>
</body>
</html>

