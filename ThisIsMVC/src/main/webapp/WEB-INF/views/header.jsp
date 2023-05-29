<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String id = null;
id = (String) request.getAttribute("id");
%>

	<div class="col-md-1 p-3 text-center">
		<a href="main.do">Main</a>
	</div>
	<div class="col-md-1 p-3 text-center">
		<a href="memberRegister.do">Register</a>
	</div>
	<div class="col-md-10 p-3 text-end">
		<c:choose>
			<c:when test="${not empty sessionScope.id}">
				<b>[ ${sessionScope.id} ]</b> 로그인 상태
	        <a href="logout.do">[ 로그아웃 ]</a>
			</c:when>
			<c:otherwise>
				<b>[로그인 하지 않으셨네요]</b>
				<a href="login.do">[ 로그인 ]</a>
			</c:otherwise>
		</c:choose>
		

		<c:choose>
			<c:when test="${empty id}">
				로그인 하세용
			</c:when>
			<c:otherwise>
				[${id}]님 방가방가
			</c:otherwise>
		</c:choose>
	</div>