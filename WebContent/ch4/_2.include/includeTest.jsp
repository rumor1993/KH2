<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- include 지시어*(디렉티브)
	특정할 JSP 파일 또는 HTML 파일을 해당 JSP에서 삽입할 수 있도록 기능을 제공하는 제어입니다.
	include 지시어로 지정되어 현재 페이지에 포함되는 JSP파일들을 웹 컨테이너에 의해 
	따로따로 컴파일 되는 것이 아니라 그 소스가 include 지시어를 사용한 해당 페이지에 복사되어 더해지는
	것으로 웹 컨테이너는 전제 JSP파일들의 소스가 합쳐진 하나의 페이지만을 컴파일한다.
	
	여러 JSP 페이지에서 공통되는 부분이 많을 때 이러한 공통되는 부분을
	 파일로 만들어 include 지시어로 삽입합니다.--%>
<!DOCTYPE html>
<html>
<head>
<title>IncludeTest</title>
</head>
<body>
	<%@ include file ="header.jsp" %>
	<h1>includeTest</h1>
	<%@ include file ="footer.jsp" %>
</body>
</html>