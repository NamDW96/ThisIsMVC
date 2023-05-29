<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String memberid = null;
memberid = (String) request.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<title>Hello World</title>
</head>
<body>
	<div class="wrapper text-center">
		<div class="container table border">
			<div class="row header border">
				<%@ include file="/views/header.jsp"%>
			</div>
			<div class="row main">
				<div class="col-md-2 border">
					<%@ include file="/views/left.jsp"%>
				</div>
				<div class="col-md-10 border">
					<c:choose>
						<c:when test="${empty id}">
							회원가입좀 해라
						</c:when>
						<c:otherwise>
							[${id}]님 방가방가
						</c:otherwise>
					</c:choose>
				</div>
			</div>
			<div class="row footer border">
				<%@ include file="/views/footer.jsp"%>
			</div>
		</div>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
</body>
</html>