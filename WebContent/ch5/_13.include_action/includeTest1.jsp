<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<style>
 h1{text-align: center}
 table{width:400px;margin:0 auto;}
 tr{height:50px;text-align:center}
 td:nth-child(2n){background:yellow; width:75%}
 td:nth-child(2n+1){background:orange;}
 input[type="text"]{width:96%;margin:0 1%;height:30px}
 tr:first-child > td  {background:#ef6b81}
</style>
<body>

<h1>포워드 액션 테스트</h1>
<form action="includeTest2.jsp" method="post">
<%--hidden 타입의 input으로 다음 페이지에서 사용할 주소값을 지정하였습니다. --%>
<input type="hidden" name="includePage" value="includeTest3.jsp">

	<table>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><input type="text" name="age"></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><input type="text" name="addr"></td>
		</tr>
		<tr>
			<td colspan="2"><input type ="submit" value="전송"></td>			
		</tr>		
	</table>
</form>
</body>
</html>