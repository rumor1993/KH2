<%@page import="java.util.concurrent.ExecutionException"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "javax.naming.*" %>
    
<%
	request.setCharacterEncoding("euc-kr");
	
	Connection conn = null;
	String sql = "select * from member where id = ?";
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String id = request.getParameter("id");
	String pass = request.getParameter("passwd");
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			if(pass.equals(rs.getString("password"))){ // �Է��� ��й�ȣ�� DB�� ����� ��й�ȣ�� ��
				session.setAttribute("id", id); // ������ id�� �����մϴ�.
				
				// main.jsp�� �̵��մϴ�.
				out.println("<script>");
				out.println("alert('"+ id + "���� �α��� �ϼ̽��ϴ�.')");
				out.println("location.href = 'main.net'");
				out.println("</script>");
			}else{
				out.println("<script> alert('��й�ȣ�� Ʋ���ϴ�.')</script>");
				out.println("<h3>���ӽ���</h3>");
				out.println("<script>location.href='loginform.jsp'</script>");
		}
	
		}else{ //���̵� Ʋ�����
			out.println("<script> alert('���̵� �����ϴ�..')</script>");
			out.println("<h3>���ӽ���</h3>");
			out.println("<script>location.href='login.net'</script>");
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
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

</body>
</html>