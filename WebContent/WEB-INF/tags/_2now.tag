
<%@ tag language="java" pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="date" class="java.util.Date"></jsp:useBean>
<fmt:formatDate value="${date}" type="both" timeStyle="long" dateStyle="long"/>
