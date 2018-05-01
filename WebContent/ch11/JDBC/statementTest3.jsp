<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="javax.naming.*" %>
<%
	Connection conn = null;
	String sql = "select * from student order by num";
	PreparedStatement pstmt =null;
	ResultSet rs = null;
	
	try{
		// JDNI를 이용하여 연결된 Connection 객체를 가져옵니다.
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();

		// Statement 객체를 생성합니다.
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()){  
			
			
			
			
		//	int num = rs.getInt("num");
		//	String name = rs.getString("name");
			
			//out.println("<table border=1> <tr><td>번호</td><td>이름</td> </tr><tr> <td>"+ rs.getInt("num") + "</td><td>" + rs.getString("name") + "</td></tr>");
		} 

	}catch (Exception e){
		out.println("<h3>레코드 등록에 실패하였습니다.</h3>");
		e.printStackTrace();
	}finally{
		if(pstmt!=null)
			try{
				pstmt.close(); //객체를 사용하고 메모리에 반환합니다.
							  //메모리 낭비를 막을 수 있습니다.
			}catch(SQLException ex) {ex.printStackTrace();}
		if(conn!=null)
			try{conn.close();}
		catch(SQLException ex) {ex.printStackTrace();}
		
			}

%>
<!DOCTYPE html>
<html>
	<style>
		table{width:400px; text-align:center; margin:0 auto;}
	</style>
<head>
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>번호</td><td>이름</td>
		</tr>
		<tr>
			<td><%=rs.getInt(1) %></td><td><%=rs.getString(2) %></td>
		</tr>
	</table>
</body>
</html>