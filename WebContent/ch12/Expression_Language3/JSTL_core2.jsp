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
	<!-- �ڹ��� for���� �����մϴ�.
		
		items �Ӽ��� �÷����̳� �迭 ������ ��ü�� �����Ͽ�
		��ü�� �ε�����ŭ �ݺ��� �� �Ӥ����ϴ�.
		begin : �����ε���
		end : �� �ε���
		step : ������
		var : �ݺ� ���� ��� ���� �ݺ��ϰ� �ִ� ���� ����ϴ� �����Դϴ�.
	 -->
	 
	 <c:forEach var="test" begin="1" end="10" step="2">
	 	<b>${test }</b>&nbsp;
	 </c:forEach>
	 <hr>
	 
	 <%
	 	pageContext.setAttribute("nameList", new String[]{"�̼���","�Ż��Ӵ�","�������","�ҹ���"});
	 %>
	 <%--�迭�� ��� ������ ����մϴ�. --%>
	 <%-- items���� ${pageScope.nameList} �Ǵ� {nameList} ��밡�� --%>
		 <c:forEach var="name" items="${pageScope.nameList}">
	 		<li>${name }</li>
		 </c:forEach>
		 <hr>
	 
	 <%-- �迭�� �ε��� 2���� 3������ ������ ����մϴ�. ������ ������ ������ �����մϴ�. --%>
	 	<c:forEach var="name" items="${nameList }" begin="2" end="3">
	 		<li>${name }</li>
	 	</c:forEach>
	 	<hr>
	 	
	 	
	 <%--varStatus �Ӽ��� �ݺ� ������ ��� �ִ� ��ü(LoopTagStatus)�� ������ �������� ������ �����ϴ�.
	 	varStatus="stauts"�� ���
	 	status.index : �ݺ� ���࿡�� ������ �ε������� �ǹ��մϴ�.
	 	status.count : �ݺ� ������ Ƚ���� �ǹ��մϴ�.
	 --%>
	 
	 <c:forEach var="name" items="${nameList }" begin="2" end="3" varStatus="status" >
	 	<li>${status.count }��° -index[${status.index }]:${name }</li>
	 </c:forEach>
	 <hr>
	 
	 <%
	 	java.util.HashMap<String, Object> m = new java.util.HashMap<String, Object>();
	 	m.put("name", "ȫ�浿");
	 	m.put("today",new java.util.Date());
	 %>
	 
	 <c:set var="map" value="<%=m %>"/>
	 <c:forEach var="data" items="${map }">
	 	<li>${data.key } - ${data.value }</li>
	 </c:forEach>
	 <hr>
	 
	 <!-- �ڹ��� for���� StringTokenizer ��ü�� �����Ͽ��ٰ� �� �� �ֽ��ϴ�.
	 		items�� ������ ���� delims �Ӽ��� �����ڷ� ���� �� ������ ��ŭ �ݺ��� -->
	 		
	 <c:forTokens var="alphabet" 
	 			  items="a,b,c,d,e,f,g,h,i,j,k,l,m,n"
	 			  delims=",">
	 	<b>${alphabet }</b>&nbsp; 
	 </c:forTokens>
	 <hr>
	 
	 <!-- ���� data�� ���� �����մϴ�. -->
	 <c:set var="data" value="ȫ�浿,��浿,��浿"/>
	 <c:forTokens var="names" items="${ data}" delims=",">
	 <b>${names }</b>&nbsp;
	 </c:forTokens>
	 <hr>
</body>
</html>