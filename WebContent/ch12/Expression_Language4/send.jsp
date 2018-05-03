<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr");  %>
 <%@ taglib prefix="c"
 				uri="http://java.sun.com/jsp/jstl/core" %>
<html>
 <head>
 <link href="../../../css/send.css" rel="stylesheet" type="text/css">
 <title>send2.jsp</title>
 </head>

 <body>
	<h1> ȸ�� ������ ������</h1>
	<table border='1'>
		<tr>
			<th> ID </th>
			<td>${param.id }</td>
		</tr>
		<tr>
			<th> ��й�ȣ </th>
			<td>${param.pass }</td>
		</tr>
		<tr>
			<th> �ֹι�ȣ </th>
			<td>
				${param.jumin1 } -
				${param.jumin2 }
			</td>
		</tr>
		<tr>
			<th> E-Mail </th>
			<td>
				${param.email } @
				<c:choose>
					<c:when test="${param.sel==null }">
						${domain }
					</c:when>
					
					<c:otherwise>
						${param.sel }
					</c:otherwise>
				</c:choose>  
			</td>
		</tr>
		<tr>
			<th> ���� </th>
			<td>
				<c:choose>
					<c:when test="${param.gender=='man' }">
						����
					</c:when>
					
					<c:otherwise>
						����
					</c:otherwise>
				</c:choose>
			</td>
		</tr>
		<tr>
			<th> ��� </th>
			<td>
				<c:forEach var="hobbys" items="${paramValues.hobby }">
					<c:out value="${hobbys }"/>
				</c:forEach>
			</td>
		</tr>
		<tr>
			<th> �����ȣ </th>
			<td>${param.post1 } - ${param.post2 }</td>
		</tr>
		<tr>
			<th> �ּ� </th>
			<td>${param.address }</td>
		</tr>
		<tr>
			<th> �ڱ�Ұ� </th>
			<td>${param.intro }</td>
		</tr>
	</table>
</body>
</html>