<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%-- JSTL (JSP Standard Tag Library)
	-자주 사용되는 기능을 모아둔 커스텀 태그(개발자가 직접 정의할수 있는 태그)
	
	JSTL 다운로드
	1) - https://mvnrepository.com/ 접속
		검색어 = jstl 입력
		
		-https://mvnrepository.com/artifact/javax.servlet/jstl/1.2
		jstl-1.2.jar 다운로드합니다.
		
		이클립스에서 파일 붙여넣기
		WebContent - WEB_INF - lib - jstl -1.2.jar
 --%>
 
 <%--
 	* taglib 지시어 : JSTL이나 커스텀 태그 등 태그 라이브러리를 JSP에서 사용할 때 접두사를 지정하기 위해 사용합니다.
 		- prefix 속성은 사용할 커스텀 태그의 네임스페이스를 지정합니다.
 			명시된 값은 태그 라이브러리를 호출할 때 사용할 접두사를 의미합니다.
 		- uri 속성은 태그라이브러리에 정의한 태그와 속성정보를 저장한 파일이
 			존재하는 위치를 지정합니다.
 			
 	* taglib 장정 : 사용하면 코드의 길이가 줄어들고 인식성이 좋아집니다.
  --%>
 
 <%-- JSP페이지에 core 라이브러리를 등록합니다. --%>
 <%@ taglib prefix="c"
 				uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<!-- 자바의 for문과 유사합니다.
		
		items 속성에 컬렉션이나 배열 형태의 객체를 지정하여
		객체의 인덱스만큼 반복할 수 ㅣㅆ습니다.
		begin : 시작인덱스
		end : 끝 인덱스
		step : 증감식
		var : 반복 중일 경우 현재 반복하고 있는 값을 기억하는 변수입니다.
	 -->
	 
	 <c:forEach var="test" begin="1" end="10" step="2">
	 	<b>${test }</b>&nbsp;
	 </c:forEach>
	 <hr>
	 
	 <%
	 	pageContext.setAttribute("nameList", new String[]{"이순신","신사임당","세종대왕","소문혁"});
	 %>
	 <%--배열의 모든 내용을 출력합니다. --%>
	 <%-- items에는 ${pageScope.nameList} 또는 {nameList} 사용가능 --%>
		 <c:forEach var="name" items="${pageScope.nameList}">
	 		<li>${name }</li>
		 </c:forEach>
		 <hr>
	 
	 <%-- 배열의 인덱스 2부터 3까지의 내용을 출력합니다. 참조할 변수의 개수를 제한합니다. --%>
	 	<c:forEach var="name" items="${nameList }" begin="2" end="3">
	 		<li>${name }</li>
	 	</c:forEach>
	 	<hr>
	 	
	 	
	 <%--varStatus 속성은 반복 정보를 담고 있는 객체(LoopTagStatus)를 저장할 변수명을 값으로 갖습니다.
	 	varStatus="stauts"인 경우
	 	status.index : 반복 실행에서 현재의 인덱스값을 의미합니다.
	 	status.count : 반복 실행의 횟수를 의미합니다.
	 --%>
	 
	 <c:forEach var="name" items="${nameList }" begin="2" end="3" varStatus="status" >
	 	<li>${status.count }번째 -index[${status.index }]:${name }</li>
	 </c:forEach>
	 <hr>
	 
	 <%
	 	java.util.HashMap<String, Object> m = new java.util.HashMap<String, Object>();
	 	m.put("name", "홍길동");
	 	m.put("today",new java.util.Date());
	 %>
	 
	 <c:set var="map" value="<%=m %>"/>
	 <c:forEach var="data" items="${map }">
	 	<li>${data.key } - ${data.value }</li>
	 </c:forEach>
	 <hr>
	 
	 <!-- 자바의 for문과 StringTokenizer 객체를 결합하였다고 볼 수 있습니다.
	 		items에 지정한 값을 delims 속성의 구분자로 나눈 후 나눠진 만큼 반복을 -->
	 		
	 <c:forTokens var="alphabet" 
	 			  items="a,b,c,d,e,f,g,h,i,j,k,l,m,n"
	 			  delims=",">
	 	<b>${alphabet }</b>&nbsp; 
	 </c:forTokens>
	 <hr>
	 
	 <!-- 변수 data에 값을 설정합니다. -->
	 <c:set var="data" value="홍길동,김길동,고길동"/>
	 <c:forTokens var="names" items="${ data}" delims=",">
	 <b>${names }</b>&nbsp;
	 </c:forTokens>
	 <hr>
</body>
</html>