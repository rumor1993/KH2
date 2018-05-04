<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c"
 				uri="http://java.sun.com/jsp/jstl/core" %>
 				
<%--url을 생성하는 기능을 합니다.
	이 태그를 사용하면 쉽게 매개변수를 포함한 URL을 손쉽게 만들 수 있습니다. --%>	
 <c:url var="ex" value="http://localhost:8088/JspProject/ch12/Expression_Language3/JSTL_core4.jsp">

 <%-- <c:param> 태그에 파라미터를 전달하기 위한 태그입니다. name 속성에 파라미터이름을 입력하고 value에 값을 입력하여 전달합니다. --%>
 	<c:param name="id" value="start"></c:param>
 	<c:param name="name" value="홍길동"></c:param>
 </c:url>
 	<a href="${ex }">이동</a>
 	
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

</body>
</html>