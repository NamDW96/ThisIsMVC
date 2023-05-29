<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h3>회원가입</h3>
<form action="register.do" method="post">
	<div class="container table">
	<div class="row">
		<div class="col-md-2">ID:</div>
		<div class="col-md-10">
			<input type="text" id="id" name="id">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">PWD:</div>
		<div class="col-md-10">
			<input type="password" id="pwd" name="pwd">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">Name:</div>
		<div class="col-md-10">
			<input type="text" id="name" name="name">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">age:</div>
		<div class="col-md-10">
			<input type="text" id="age" name="age" placeholder="숫자만 입력하세요">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">Gender:</div>
		<div class="col-md-10">
			<input type="radio" name="gender" id="gender" value="여" checked>여자 
			<input type="radio" name="gender" id="gender" value="남">남자
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">Email:</div>
		<div class="col-md-10">
			<input type="text" id="email" name="email">
		</div>
	</div>
	<div class="row">
		<input type="submit" value="회원가입">
		<input type="reset" value="취소">
	</div>
</div>
</form>
