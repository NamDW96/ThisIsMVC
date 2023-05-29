<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<div class="table">
	<c:set var="memberList" value="${requestScope.memberList }"></c:set>
		<c:forEach var="member" items="${memberList}">
			<div class="row">	
				<div class="col-md-3">${member.id}</div>
				<div class="col-md-3">${member.ip}</div>
				<div class="col-md-3">
					<a href="edit.do?id=${memeber.id}">수정</a>
				</div>
				<div class="col-md-3">
					<a href="delete.do?id=${member.id}">삭제</a>
				</div>
			</div>	
		</c:forEach>		
</div>