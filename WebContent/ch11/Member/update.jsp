<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
            
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "javax.naming.*" %>

<%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<%
	request.setCharacterEncoding("euc-kr");
%>
<script src = "http://code.jquery.com/jquery-3.3.1.js"></script>

	<script>
                /*  �Ϻη� ���Ʒ����ϴ°Ŵ� �������а� �̰� �ԷµǶ��*/
	 
	 $(document).ready(function(){

	   $(".canclebtn").click(function(){
	      location.href = "main.net";
	   });
	   $('form').submit(function(){
	      if(!$.isNumeric($("input[name='age']").val())){
	         alert("���̴� ���ڸ� �Է��ϼ���");
	         return false;
	      }
	   })
	 })
	   </script>
	

<c:set var="m" value="${Memeberinfo }"/>
</head>
	<body>
	<form name = update action = member_updateProcess.net
      method = "post">
            <h1>ȸ�� ���� ���� ������</h1>
   <hr>
      <b>���̵�</b>
      <input type=text name=id value=${m.id } readonly><br>
      <b>��й�ȣ</b> <input type=password name=pass value=${m.password } readonly><br>
      <b>�̸�</b><input type = text name=name value=${m.name } required="required"><br>
      <b>����</b><input type = text name=age  value=${m.age } required="required"><br>
      <b>����</b>
      	<div>
  			<c:if test="${m.gender=='��' }">
  			 <input type = radio name = gender value = �� checked><span>����</span>
             <input type = radio name = gender value = �� ><span>����</span>
  			</c:if>
      		
 			 <c:if test="${m.gender=='��' }">	
            <input type = radio name = gender value = �� ><span>����</span>
            <input type = radio name = gender value = �� checked ><span>����</span>
           </c:if>
            
            <%--
            var pandan = '<%=rs.getString("gender")%>';
            if(pandan == '��'){
            	$("input:radio").eq(0).attr('checked','checked');
            	}else{
            	$("input:radio").eq(1).attr('checked','checked');
            	}
            	
            	
            	$(".cancebtn").click(function(){
            		location.href="main.jsp";
            	});
            	
            
             --%>
       </div>
      <b>�̸��� �ּ�</b><input type = text name = email value=${m.email } required="required"><br>
      <div class = clearfix>
      	<button type = submit class = submitbtn>����</button>
      	<button type = reset class = canclebtn>���</button> 
      </div>
      </form>
      
</body>
</html>