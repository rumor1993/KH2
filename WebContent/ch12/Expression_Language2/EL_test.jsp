<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
 <%--
 	���ͷ� ǥ���� : EL ���(%{}) ���� ����� �� �ִ� ���� ���ڿ�, ����, �ε��Ҽ���, boolean, null �����մϴ�.
  --%>
<!DOCTYPE html>
<html>
<head>
<title>���ͷ� ǥ����</title>
</head>
<body>
	���ڿ� : ${"test"}<br>
	���ڿ� : ${'test'}<br>
	
	<%-- "\"�� ��� �ҷ��� �� �� ����մϴ�. --%>
	
	���ڿ� : ${'\\test'}<br>
	���� : ${20}<br>
	�ε��Ҽ��� : ${3.14}<br>
	boolean : ${true}<br>
	null : ${null}<br>
</body>
</html>