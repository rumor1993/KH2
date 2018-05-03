<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%-- <%@ page isELIgnored="true" %>  --%> <%-- isELIgnored 값이 true 이면 EL을 일반 문자열로 처리한다--%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%--empty 연산자
	 형식 ) empty 값
	 : 값이 비어 있거나 null인지를 조사할 때 사용하는 연산자 입니다.
	 	값이 null이면 true를 반환합니다.
	 	문자열과 배열의 크기가 0인 경우에도 true를 반환합니다.
 --%>
 
 <%
 	pageContext.setAttribute("food", "과자");
 %>
 	<H3>${pageScope.food}</H3>
 	<h3>${food}</h3>
 	
 	<h3>\${empty food}=${empty food}</h3>
 	<h3>\${empty food2}=${empty food2}</h3>
 	
 	<%--name 이라는 파라미터가 존재하지 않을 경우 아무것도 출력하지 않습니다. --%>
 	<h3>\${param.name } = ${param.name }</h3>
</body>
</html>