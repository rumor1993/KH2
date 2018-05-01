<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
<head>
<title>회원가입정보</title>
<link href ="check.css" rel="stylesheet" type="text/css">
</head>
<body>
<h2>회원 가입 정보</h2>
<jsp:useBean id ="join" class="javabean.Join"/>
<jsp:setProperty name="join" property="*"/>
<table>
		<tr>
			<td><font size=2>아이디</font></td>
			<td><%=join.getId() %></td>
		</tr>
		<tr>
			<td><font size=2>비밀번호</font></td>
			<td><%=join.getPass() %></td>
		</tr>
		<tr>
			<td><font size=2>이름</font></td>
			<td><%=join.getName() %></td>
		</tr>
		<tr>
			<td><font size=2>성별</font></td>
			<td><%=join.getGender() %></td>
		</tr>
		<tr>
			<td><font size=2>나이</font></td>
			<td><%=join.getAge() %></td>
		</tr>
		<tr>
			<td><font size=2>E-Mail</font></td>
			<td><%=join.getEmail() %></td>
		</tr>
		
		<tr>
			<td><font size=2>주소</font></td>
			<td><%=join.getAddr() %></td>
		</tr>
	</table>
</body>
</html>