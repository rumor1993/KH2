<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%-- <%@ page isELIgnored="true" %>  --%> <%-- isELIgnored ���� true �̸� EL�� �Ϲ� ���ڿ��� ó���Ѵ�--%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%--empty ������
	 ���� ) empty ��
	 : ���� ��� �ְų� null������ ������ �� ����ϴ� ������ �Դϴ�.
	 	���� null�̸� true�� ��ȯ�մϴ�.
	 	���ڿ��� �迭�� ũ�Ⱑ 0�� ��쿡�� true�� ��ȯ�մϴ�.
 --%>
 
 <%
 	pageContext.setAttribute("food", "����");
 %>
 	<H3>${pageScope.food}</H3>
 	<h3>${food}</h3>
 	
 	<h3>\${empty food}=${empty food}</h3>
 	<h3>\${empty food2}=${empty food2}</h3>
 	
 	<%--name �̶�� �Ķ���Ͱ� �������� ���� ��� �ƹ��͵� ������� �ʽ��ϴ�. --%>
 	<h3>\${param.name } = ${param.name }</h3>
</body>
</html>