<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script>
	alert('로그아웃 되었습니다.');
	history.back();
</script>

<%
	session.invalidate();
%>
