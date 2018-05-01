<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h1>Request 예제입니다.</h1>
	<form action="requestTest1.jsp" method="get">
		<table border="1">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" class="name"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
				남<input type="radio" name="gender" value="male">
				여<input type="radio" name="gender" value="female">
			</tr>			
			<tr>
				<td>취미</td>
				<td>
				독서<input type="checkbox" name="hobby" value="독서">
				게임<input type="checkbox" name="hobby" value="게임">
				운동<input type="checkbox" name="hobby" value="운동">
				영화<input type="checkbox" name="hobby" value="영화">
				기타<input type="checkbox" name="hobby" value="기타">
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="전송"></td>
			</tr>
		</table>
	</form>
</body>
</html>