<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
    <% request.setCharacterEncoding("euc-kr"); %>
<body>

	<h1>Request 예제입니다.</h1>
	<table border="1">
		<tr>
			<th>이름</th>
			<td><%=request.getParameter("name") %></td>
		</tr>
		<tr>
			<th>성별</th>
			<td><%if(request.getParameter("gender").equals("male")){ %>남자
			<%}else{ %>여자<%} %></td>
		</tr>
		<tr>
			<th>취미</th>
			<td>
			<%String[] hobby = request.getParameterValues("hobby");
			for(String i : hobby){%>
			<%=i%>&nbsp;&nbsp;
			<%}%></td>
		</tr>
	</table>
</body>
</html>