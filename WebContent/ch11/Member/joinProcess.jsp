<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "javax.naming.*" %>
  
<%
   request.setCharacterEncoding("euc-kr");

   Connection conn = null;
   String sql = "INSERT INTO member(ID,PASSWORD,NAME,AGE,GENDER,EMAIL) VALUES (?,?,?,?,?,?)";
   String sql2 = "select * from member where ID = ?";
   PreparedStatement pstmt = null;
   ResultSet rs =null;
   
   
   
   
   String id = request.getParameter("id");
   String pass = request.getParameter("pass");
   String name = request.getParameter("name");
   String age = request.getParameter("age");
   String gender = request.getParameter("gender");
   String email = request.getParameter("email");
   
   int age2 = Integer.parseInt(age);
   try{
      Context init = new InitialContext();
      DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
      conn = ds.getConnection();
      
      pstmt = conn.prepareStatement(sql2);
      pstmt.setString(1, id);
      rs = pstmt.executeQuery();
      
      if(rs.next()){
    	  out.println("<script>");
    	  out.println("alert('�ߺ��� ���̵��Դϴ�.')");
    	  out.println("history.back();");
    	  out.println("</script>");
    
      }else{
    	  pstmt.close();
      }
      
      
      pstmt = conn.prepareStatement(sql);
      
      pstmt.setString(1,id);
      pstmt.setString(2,pass);
      pstmt.setString(3,name);
      pstmt.setInt(4,age2);
      pstmt.setString(5,gender);
      pstmt.setString(6,email);
      
      int result = pstmt.executeUpdate();
      
      if(result!=0){
      out.println("<script>");
      out.println("alert('ȸ�������� �����մϴ�.')");
      out.println("location.href='loginform.jsp'");
      out.println("</script>");
      
      }else{

         out.println("<script>");
         out.println("alert('ȸ�����Կ� �����߽��ϴ�.')");
         out.println("location.href='joinform.jsp'");
         out.println("</script>");
      }
      
   }catch(Exception e){
      e.printStackTrace();
   }finally{
      if(pstmt!=null){
         try{
            pstmt.close();
         }catch(SQLException ex) {ex.printStackTrace();}
         }
      }
   
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

</body>
</html>