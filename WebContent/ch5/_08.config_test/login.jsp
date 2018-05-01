<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>로그인 화면</title>
</head>
<body>
	<form action="http://localhost:8088/JspProject/loginTest" method="post">
		<h1>로그인 </h1>
      <hr>
      <b>아이디</b>
        <input type="text" name="id" 
               placeholder="Enter id" required>
        <b>비밀번호</b>
        <input type="text" name="passwd" 
               placeholder="Enter password" required>
        <div class="clearfix">
          <button type="submit" class="submitbtn">Submit</button>
          <button type="reset" class="cancelbtn">Cancel</button>
        </div>
  </form>
</body>
</html>