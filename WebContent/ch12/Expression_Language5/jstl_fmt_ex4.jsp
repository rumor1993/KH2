<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>

<%-- 
	prefix �Ӽ� : ��õ� ���� �±� ���̺귯���� ȣ���� �� ����� ���ξ �ǹ��մϴ�.
	
	tagdir �Ӽ� : �� ���ø����̼� ��Ʈ�� �������� �±� ������ ��ġ�� ���丮 ��θ� ǥ���մϴ�.
	
	Ŀ���� �±� ���� :
		"<" + taglib ��Ƽ���� prefix + ":" + �±� ���ϸ� + ">"
		<tf:_1now/> ��ġ�� �±� ����(_1now.tag)���� ����� ������ ���Ե˴ϴ�.
 --%>
<!DOCTYPE html>
<html>
<head>
<title>now</title>
</head>
<body>
	������ <b><tf:_2now/></b> �Դϲ�~?.
	<%-- _1now�� �±����� �̸� �Դϴ�. --%>
</body>
</html>