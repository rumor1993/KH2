<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
	<script src = "http://code.jquery.com/jquery-3.3.1.js"></script>
<script>
	$(document).ready(function(){
		$('.join').click(function(){
			location.href='join.net';
		});
	});
</script>
<body>
	<form name="loginform" action="loginProcess.net" method ="post">
		<h1>�α���</h1>
			<hr>
			<b>���̵�</b>
				<input type ="text" name="id" 
				placeholder="Enter id" required>
			<b>Password</b>
				<input type="password" name ="passwd"
				placeholder="Enter password" required>
			<div class = "clearfix">
				<button type="submit" class = "submitbtn">�α���</button>
				<button type="button" class = "join">ȸ������</button>
			</div>
	</form>
</body>
</html>