<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
            
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "javax.naming.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<%
	request.setCharacterEncoding("euc-kr");
	String id = (String)session.getAttribute("id");

	Connection conn = null;
	String sql = "select * from member where id =?";
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String name = "";
	String pass = "";
	int age = 0;
	String gender = "";
	String email = "";
	

	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
		
		while(rs.next()){
		pass = rs.getString("password");
		name =	rs.getString("name");
		age = rs.getInt("age");
		gender = rs.getString("gender");
		email =  rs.getString("email");
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		
		if(rs!=null){
		try{ 
			rs.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
		if(pstmt!=null){
			try{
			pstmt.close();
			}catch(SQLException se){
				se.printStackTrace();
			}
		}
		if(conn!=null){
			try{
				conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
}
%>
</head>
	<body>
	<form name = update action = updateProcess.jsp
      method = "post">
            <h1>회원 정보 수정 페이지</h1>
   <hr>
      <b>아이디</b>
      <input type=text name=id value=<%=id %> readonly><br>
      <b>비밀번호</b> <input type=password name=pass value=<%=pass %> readonly><br>
      <b>이름</b><input type = text name=name value=<%=name %> required="required"><br>
      <b>나이</b><input type = text name=age  value=<%=age %> required="required"><br>
      <b>성별</b>
      	<div>
      		<%
      		if(gender.equals("남")){
      		 %>      		
             <input type = radio name = gender value = 남 checked><span>남자</span>
             <input type = radio name = gender value = 여 ><span>여자</span>
           <%
      		}else{
           %>
            <input type = radio name = gender value = 남 ><span>남자</span>
            <input type = radio name = gender value = 여 checked ><span>여자</span>
            <%
      		}
            %>
            
            <%--
            var pandan = '<%=rs.getString("gender")%>';
            if(pandan == '남'){
            	$("input:radio").eq(0).attr('checked','checked');
            	}else{
            	$("input:radio").eq(1).attr('checked','checked');
            	}
            	
            	
            	$(".cancebtn").click(function(){
            		location.href="main.jsp";
            	});
            	
            
             --%>
       </div>
      <b>이메일 주소</b><input type = text name = email value=<%=email %> required="required"><br>
      <div class = clearfix>
      	<button type = submit class = submitbtn>수정</button>
      	<button type = reset class = canclebtn>다시작성</button> 
      </div>
      </form>
</body>
</html>