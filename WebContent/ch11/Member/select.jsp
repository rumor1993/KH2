<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "javax.naming.*" %>
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
	<c:set var="member" value="${memberinfo }">	</c:set>
	<table border=1>
	<tr>
	<td colspan =2>ȸ�� ����</td>
	</tr>
	<tr>
		<td>
		���̵� : 
		</td>
		<td>
		${member.id }
		</td>
	</tr>
	
	<tr>
		<td>
		��й�ȣ : 
		</td>
		<td>
		${member.password }
		</td>
	</tr>
	
	<tr>
		<td>
		�̸� : 
		</td>
		<td>
		${member.name }
		</td>
	</tr>
	
	<tr>
		<td>
		���� : 
		</td>
		<td>
		${member.age }
		</td>
	</tr>
	
	<tr>
		<td>
		���� : 
		</td>
		<td>
		${member.gender }
		</td>
	</tr>
	
	<tr>
		<td>
		�̸��� : 
		</td>
		<td>
		${member.email }
		</td>
	</tr>

		
 		<tr>
		<td colspan=2>
		<a href='member_list.net'> ����Ʈ�� ���ư��� </a>
		</td>
		</tr>
		</table>

</body>
</html>

