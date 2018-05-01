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
	<header>
		<h1>상품 목록입니다.</h1><br>
	</header>
	<nav>
		<jsp:include page="top.jsp"/><br><br>
	</nav>
	<div id="wrap">
		<aside>
			<jsp:include page="left.jsp"/>
		</aside>
		<section>
			<jsp:include page='<%=pagefile+".jsp" %>'/>
		</section>
	</div>
	<footer>
		<jsp:include page="bottom.jsp"/>
	</footer>
</body>
</html>