<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String id = (String) session.getAttribute("id");
	request.setAttribute("id", id);	
%> 
<div>${sessionScope.id} 님, 방갑습니다.</div>

<c:choose>
	<c:when test="${requestScope.id == 'admin'}"> 
		<a href="memberlist.do">멤버목록보기</a>
	</c:when>
	<c:otherwise></c:otherwise>
</c:choose>

<script>
	console.log("${sessionScope.id}");
	console.log(typeof("${sessionScope.id}"));
	console.log("${sessionScope.id}" == "admin");
	
	
</script>