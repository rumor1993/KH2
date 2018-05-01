<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<style>
 table{width:400px;margin:0 auto;}
 tr{height:50px;text-align:center}
 td:nth-child(2n){background:yellow; width:75%}
 td:nth-child(2n+1){background:orange;}
 input[type="text"]{width:96%;margin:0 1%;height:30px}
 tr:first-child > td  {background:#ef6b81}
</style>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	if(name!=null && id!=null){
		application.setAttribute("name", name);
		application.setAttribute("id", id);
	}
%>
<h1>영역과 속성 테스트</h1>
<h2><%=name %>님 반갑습니다.<br>
<%=name%>님의 아이디는 <%=id %>입니다.</h2>
<form action="attributeTest2.jsp" method="post">
	<table border="1">
		<tr><td colspan="2">Session 영역에 저장할 내용들</td></tr>
		<tr>
			<td>E-mail 주소</td>
			<td><input type="text" name="email" required></td>
		</tr>
		<tr>
			<td>집 주소</td>
			<td><input type="text" name="addr" required></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" name="tel" required></td>
		</tr>
		<tr>
			<td colspan="2"><input type ="submit" value="전송"></td>			
		</tr>		
	</table>
</form>
</body>
</html>