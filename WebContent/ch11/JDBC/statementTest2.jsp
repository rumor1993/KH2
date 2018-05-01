<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="javax.naming.*" %>
<%
	Connection conn = null;
	String sql = "INSERT INTO student(num,name) VALUES (?,'홍길동')";
	PreparedStatement pstmt =null;
	
	try{
		// JDNI를 이용하여 연결된 Connection 객체를 가져옵니다.
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		// Statement 객체를 생성합니다.
		pstmt = conn.prepareStatement(sql);
		
		for(int i=0; i<=10; i++){
		pstmt.setInt(1, i); // 첫번째 인수 (num필드)에 i값을 설정합니다.
		if(pstmt.executeUpdate()!= 0){ // SQL문 실행합니다.  executeUpdate 결과는 실행 수
			out.println("<h3> "+ i +" 레코드가 등록되었습니다.</h3>");
			}
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
<head>
<title>Insert title here</title>
</head>
<body>

</body>
</html>