<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c"
 				uri="http://java.sun.com/jsp/jstl/core" %>
 				
<%--url�� �����ϴ� ����� �մϴ�.
	�� �±׸� ����ϸ� ���� �Ű������� ������ URL�� �ս��� ���� �� �ֽ��ϴ�. --%>	
 <c:url var="ex" value="http://localhost:8088/JspProject/ch12/Expression_Language3/JSTL_core4.jsp">

 <%-- <c:param> �±׿� �Ķ���͸� �����ϱ� ���� �±��Դϴ�. name �Ӽ��� �Ķ�����̸��� �Է��ϰ� value�� ���� �Է��Ͽ� �����մϴ�. --%>
 	<c:param name="id" value="start"></c:param>
 	<c:param name="name" value="ȫ�浿"></c:param>
 </c:url>
 	<a href="${ex }">�̵�</a>
 	
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

</body>
</html>