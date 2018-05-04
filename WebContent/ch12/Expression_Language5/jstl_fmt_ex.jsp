<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- fmt: ����ȭ/����ȭ�� ����� ������ �ִ� JSTL ���̺귯�� �Դϴ�.
	fmt ���̺귯���� ����ϴ� �ڵ� �Դϴ�. --%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>JSTL fmt ���̺귯�� ����</title>
</head>
<body>
	<%-- <fmt:setLocale> �ٱ��� �������� ����� �� �� �����ϴ� �±��Դϴ�.
			value : � �� ����� �� �����ϴ� �Ӽ��Դϴ�.
			ko_KR���� ko�� �ѱ��� ����ڵ��̰� --
			KR�� �ѱ��� �����ڵ带 �ǹ��մϴ�.
			value ���� null �̸� �⺻ �������� ��� �˴ϴ�.
	--%>
	
	<%-- <fmt:setLocale value="en_US"/> --%>
	<fmt:setLocale value="en_US"/>
	
	<fmt:bundle basename="test">
	<%-- <fmt:bundle>
			properties Ȯ����� ���� ������ ���ҽ��� �ҷ��� �� ����մϴ�.
			basename���� properties Ȯ����� ���� ������ ������ �� �ֽ��ϴ�.
			
		��) <fmt:setLocale value="ko_KR"> �� ��� ���ϸ���
			"test" + "_" + "kr" + ".properties"
			==> "test_ko.properties" �̾�� �մϴ�.
			
		��) <fmt:setLocale value="en_US"> �� ��� ���ϸ���
			"test" + ".properties"
			==> "test.properties" �̾�� �մϴ�.
			
			��, ���ҽ� ���� ������ ������ ������ �����ϴ�.
			�����̸�_���_����.properties
			���⼭ ������ ���� �����մϴ�.
			
	 --%>
	 
	 <%-- ������ properties ������ ���ҽ� ������ ���� �� ����մϴ�]
	 		key�Ӽ��� �̿��Ͽ� Ű ������ ������ ������ �����ɴϴ�. --%>
	 		
	 		<fmt:message key="name"/><br>
	 		<fmt:message key="say"/><br>
	 		<fmt:message key="say2">
	 		
	 <%-- fmt:message �±׷� �о� �� ���ҽ� ���뿡 �Ķ���͸� �����ϴ� �±� 
	 		test.properties�� {0}�� ���޵˴ϴ�. (setLocale�� en_US�϶�)
	 		test_ko.properties�� {0}�� ���޵˴ϴ�.(setLocale�� ko_KR�϶�)
	 		 --%>
	 		 <fmt:param value="��浿"/>			
	 		 
	 		 <%-- fmt:message �±׷� �о� �� ���ҽ� ���뿡 �Ķ���͸� �����ϴ� �±� 
	 		test.properties�� {1}�� ���޵˴ϴ�. (setLocale�� en_US�϶�)
	 		test_ko.properties�� {1}�� ���޵˴ϴ�.(setLocale�� ko_KR�϶�)
	 		 --%>
	 		 <fmt:param value="����ġ"/>	 
	 	</fmt:message>
	</fmt:bundle>
	
</body>
</html>