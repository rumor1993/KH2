<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id ="beantest" class="javabean.BeanTest" scope="page"/>
<jsp:setProperty name="beantest" property="name" value="봄입니다!"/>
<%--beantest.setName("봄입니다!");를 의미한다. --%>
<h3><jsp:getProperty name ="beantest" property="name"/></h3>
</body>
</html>