<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<%
	boolean isIDShow = false;
	String id ="";
	
	Cookie[] cookies = request.getCookies();
	if(cookies !=null){
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("id")){
				isIDShow = true;
				id=cookies[i].getValue();
			}
		}
	}
%>
	<script src = "http://code.jquery.com/jquery-3.3.1.js"></script>
	<script src = "login.js"></script>
	<script>
		$(function(){
			var isIDShow = <%=isIDShow%>;
			if(isIDShow){
				$("#id").val('<%=id%>');
				$("#id + input").attr('checked','checked');
			}
			
		})
	</script>
</head>
<script>
</script>
<body>

<fieldset>
<form action="loginprocess.jsp" method="post">
	<div>ID :</div>
	 <input type="text" name="id" id="id" class="length">
	<input type="checkbox" name="idstore" value="store">ID 기억하기
	<div>password :</div>
	<input type="password" name="pass" id="pass" class="length"> 
	<input type="submit" value="전송">
</form>
</fieldset>
</body>
</html>