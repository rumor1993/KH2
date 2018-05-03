<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%-- JSTL (JSP Standard Tag Library)
	-���� ���Ǵ� ����� ��Ƶ� Ŀ���� �±�(�����ڰ� ���� �����Ҽ� �ִ� �±�)
	
	JSTL �ٿ�ε�
	1) - https://mvnrepository.com/ ����
		�˻��� = jstl �Է�
		
		-https://mvnrepository.com/artifact/javax.servlet/jstl/1.2
		jstl-1.2.jar �ٿ�ε��մϴ�.
		
		��Ŭ�������� ���� �ٿ��ֱ�
		WebContent - WEB_INF - lib - jstl -1.2.jar
 --%>
 
 <%--
 	* taglib ���þ� : JSTL�̳� Ŀ���� �±� �� �±� ���̺귯���� JSP���� ����� �� ���λ縦 �����ϱ� ���� ����մϴ�.
 		- prefix �Ӽ��� ����� Ŀ���� �±��� ���ӽ����̽��� �����մϴ�.
 			��õ� ���� �±� ���̺귯���� ȣ���� �� ����� ���λ縦 �ǹ��մϴ�.
 		- uri �Ӽ��� �±׶��̺귯���� ������ �±׿� �Ӽ������� ������ ������
 			�����ϴ� ��ġ�� �����մϴ�.
 			
 	* taglib ���� : ����ϸ� �ڵ��� ���̰� �پ��� �νļ��� �������ϴ�.
  --%>
 
 <%-- JSP�������� core ���̺귯���� ����մϴ�. --%>
 <%@ taglib prefix="c"
 				uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%-- <c:set> ������ ���� �����ϴ� �±� �Դϴ�. 
			var : ��
			value : ������ ��
	--%>
	
	<c:set var = "test" value ="Hello JSTL"/>
	<h3>
		&lt;c:set&gt; ��� �� : <c:out value="${test}"/> <!-- ������ ���� ����ϴ� �±� -->
	</h3>
	
	<c:remove var="test"/><!-- ������ �Ӽ��� �����ϴ� �±��Դϴ�. -->
	<h3>
		&lt;c:remove&gt; ��� �� :
		<c:out value="${test}"/>
	</h3>
	<c:catch var = "err">	<!-- ���� ó����  ���� �±��Դϴ�. ���ܰ� �߻��ϸ� var ������ ���� ��ü�� �Ҵ�˴ϴ�.-->
	<%=10/0 %>
	</c:catch>

	<h3>
		&lt;c:catch&gt; �� ��Ƴ� ���� : <c:out value="${err}"/>
	</h3>
	
	<!-- ���� ó���� ���� �±��Դϴ�.
			if �� ���������� else�� �������� �ʽ��ϴ�. -->
	<c:if test="true">
		���ǽ��� ���̾ ������ �����մϴ�.<br>
	</c:if>
	
	<c:if test="${5<10}">
		<h3>5�� 10���� �۴�.</h3>
	</c:if>
	
	<c:if test ="${6+3==8}">
		<h3>6 + 3 �� 9�̴�.</h3>
	</c:if>
	
	<%-- 
		1. <c:choose>, <c:when>, <c:otherwise> �±�
			- �������� �������� ��� ���
			  switch ���� ������ ���.
			  - �����߿� �����ϴ� ���� ������ �����ϰ� ����ϴ�.
			  (�� �Ѱ��� ���� -if~else if ~ else ���� ����)
			  	�ϳ��� choose �±׿��� �������� when �±װ� ����
			  	
		2. ����
			<c:choose>
				body content (<when> and <otherwise> subtags)
				// ������ �����ϸ� ���� - ���� �� �ۼ��� �� �ֽ��ϴ�.
				<c:when test="testCondition">
					body content
				</c:when>
				<c:otherwise> // ������ �������� ������ ����
					conditional block
				</c:otherwise>
			</c:choose>
	
	--%>
	
	<c:choose>
		<c:when test="${5+10==50}">
			<h3>5+10�� 50�̴�.</h3>
		</c:when>
		
		<c:otherwise>
			<h3>5+10�� 50�� �ƴϴ�.</h3>
		</c:otherwise>
	</c:choose>
	
	<c:set var="a" value="2"/>
	<c:choose>
		<c:when test="${a==1}">
			<h3>1�Դϴ�.</h3>
		</c:when>
		
		<c:when test="${a==2}">
			<h3>2�Դϴ�.</h3>
		</c:when>
		
		<c:otherwise>
			<h3>1�Ǵ� 2�� �ƴմϴ�.</h3>
		</c:otherwise>
	</c:choose>
	

	<c:set var="a" value="${a+1}"/>
	<c:out value="${a}"/>

	
</body>
</html>