<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String id = null;
id = (String) request.getAttribute("id");
%>

<%-- 	<div class="col-md-1 p-3 text-center">
		<a href="main.jsp">Main</a>
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
	</div> --%>
	
	
   <header class="p-3 text-bg-dark">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="main.jsp" class="nav-link px-2 text-secondary">Home</a></li>
        </ul>

        <div class="text-end">
			<c:choose>
				<c:when test="${empty id}">
		          <button type="button" class="btn btn-outline-light me-2" onclick = "location.href='login.do'">Login</button>
		          <button type="button" class="btn btn-warning" onclick = "location.href='memberRegister.do'">Sign-up</button>
		         </c:when>
				<c:otherwise>
					[${id}]님 안녕하세요^^ &nbsp
					<button type="button" class="btn btn-outline-light me-2" onclick = "location.href='logout.do'">Logout</button>
				</c:otherwise>
			</c:choose>
        </div>
      </div>
    </div>
  </header>
	