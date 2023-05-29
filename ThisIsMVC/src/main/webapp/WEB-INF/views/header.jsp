<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
	String id = null;
	id = (String) request.getAttribute("id");
%>
	    
<div class="col-md-1 align-middle">
	<a href="main.do">Main</a>
</div>
<div class="col-md-1">
	<a href="login.do">Login</a>
</div>
<div class="col-md-1">
	<a href="WEB-INF/views/joinForm.jsp">Register</a>
</div>
<div class="col-md-6"></div>
<div class="col-md-2"></div>
<div class="col-md-1">
	<c:choose>
		<c:when test="${empty id}">
			로그인 하세용
		</c:when>
		<c:otherwise>
			[${id}]님 방가방가
		</c:otherwise>
	</c:choose>
	
	
	
</div>