<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h1>보고싶은 페이지 선택</h1>
<form action="viewitem.jsp">
	<select name="code">
		<option value="new">신상</option>
		<option value="best">인기</option>
		<option value="used">중고</option>
	</select>
	<input type="submit" value="이동">
</form>
</body>
</html>