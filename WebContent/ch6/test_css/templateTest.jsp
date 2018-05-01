<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>상품 목록</title>
<link href = "style.css" rel="stylesheet" type="text/css">
</head>
<%
	String pagefile = request.getParameter("page");
	if(pagefile==null){
		pagefile="new";
	}
%>
<body>
	<div id="header">
		<h1>상품 목록입니다.</h1><br>
	</div>
	<div id="navigation">
		<jsp:include page="top.jsp"/><br><br>
	</div>
	<div id="wrap">
		<div id="aside">
			<jsp:include page="left.jsp"/>
		</div>
		<div id="section">
			<jsp:include page='<%=pagefile+".jsp" %>'/>
		</div>
	</div>
	<div id="footer">
		<jsp:include page="bottom.jsp"/>
	</div>
</body>
</html>