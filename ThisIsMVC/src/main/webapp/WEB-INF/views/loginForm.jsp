<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form action="${pageContext.request.contextPath}/loginok.do" method="post">
	<table class="table table-borderless">
		<thead class="text-center">
				<h3>로그인</h3>
		</thead>
		<tbody>
			<tr>
				<td class="col-md-4"></td>
				<td class="col-md-4">
					<div class="form-floating">
					  <input type="text" class="form-control" id="id" name="id" placeholder="name@example.com">
					  <label for="floatingInput">ID</label>
					</div>
				</td>
				<td class="col-md-4"></td>
			</tr>
		<tr>
			<td class="col-md-4"></td>
			<td class="col-md-4">
				<div class="form-floating mb-3">
				  <input type="password" class="form-control" id="pwd" name="pwd" placeholder="name@example.com">
				  <label for="floatingInput">Password</label>
				</div>
			</td>
			<td class="col-md-4"></td>
		</tr>
	
		<tr>
			<td></td>
			<td>
				<input type="submit" value="로그인">
				<input type="reset" value="뭘 취소하는거지?">
				<input type="reset" value="회원가입" onclick = "location.href='memberRegister.do'">
			</td>

		</tr>
		</tbody>
	</table>
</form>