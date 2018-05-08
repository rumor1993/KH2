<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "javax.naming.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	
		Connection conn = null;
		String sql = "select * from member where id = ?";
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		String id = request.getParameter("id");

try{
	Context init = new InitialContext();
	DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
	conn = ds.getConnection();
	pstmt =  conn.prepareStatement(sql);
	
	pstmt.setString(1,id);
	
	rs = pstmt.executeQuery();
	
	
	out.println("<table border=1>");
	out.println("<tr>");
	out.println("<td colspan =2>ȸ�� ����");
	out.println("</tr>");
	while(rs.next()){
		out.println("<tr>");
		out.println("<td>");
		out.println("���̵� : ");
		out.println("</td>");
		out.println("<td>");
		out.println(rs.getString("id"));
		out.println("</td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td>");
		out.println("��й�ȣ : ");
		out.println("</td>");
		out.println("<td>");
		out.println(rs.getString("password"));
		out.println("</td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td>");
		out.println("�̸� : ");
		out.println("</td>");
		out.println("<td>");
		out.println(rs.getString("name"));
		out.println("</td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td>");
		out.println("���� : ");
		out.println("</td>");
		out.println("<td>");
		out.println(rs.getString("age"));
		out.println("</td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td>");
		out.println("email : ");
		out.println("</td>");
		out.println("<td>");
		out.println(rs.getString("email"));
		out.println("</td>");
		out.println("</tr>");
		
 		out.println("<tr>");
		out.println("<td colspan=2>");
		out.println("<a href='member_list.jsp'> ����Ʈ�� ���ư��� </a>");
		out.println("</td>");
		out.println("</tr>"); 
		out.println("</table>"); 
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
</body>
</html>