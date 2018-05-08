<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "javax.naming.*" %>

<%
	request.setCharacterEncoding("euc-kr");
	
		Connection conn = null;
		String sql = "select id from member";
		PreparedStatement pstmt = null;
		ResultSet rs = null;


try{
	Context init = new InitialContext();
	DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
	conn = ds.getConnection();
	pstmt =  conn.prepareStatement(sql);
	
	rs = pstmt.executeQuery();
	
	
	out.println("<table border=1>");
	out.println("<tr>");
	out.println("<td colspan =2>ȸ�� ���");
	out.println("</tr>");
	while(rs.next()){
		String id = rs.getString("id");
		out.println("<tr>");
		out.println("<td>");
		out.println("<a href ='select.net?id="+ rs.getString("id") +"'>" +rs.getString("id"));
		out.println("</td>");
		out.println("<td>");
		out.println("<a href ='delete.net?id="+ rs.getString("id") +"'>����");
		out.println("</td>");
		out.println("</tr>");
	}
		out.println("<tr>");
	out.println("<td colspan=2>");
	out.println("<a href='main.net'> �������� ���ư��� </a>");
	out.println("</td>");
	out.println("</tr>"); 
	out.println("</table>");
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
	
	<style>
		table{width:200px; margin: 0 auto}
		td{text-align:center; }
		tr:nth-child(1) {background:pink}
		
	
}
	</style>
<title>Insert title here</title>
</head>
<body>

</body>
</html>
