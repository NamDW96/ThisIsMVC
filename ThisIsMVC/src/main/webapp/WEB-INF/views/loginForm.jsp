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
					아이디 : <input type="text" id="id" name="id">
				</td>
				<td class="col-md-4"></td>
			</tr>
		<tr>
			<td class="col-md-4"></td>
			<td class="col-md-4">
				비밀번호 : <input type="password" id="pwd" name="pwd">
			</td>
			<td class="col-md-4"></td>
		</tr>
	
		<tr>
			<td></td>
			<td>
				<input type="submit" value="로그인">
				<input type="reset" value="뭘 취소하는거지?">
				<input type="reset" value="회원가입">
			</td>

		</tr>
		</tbody>
	</table>
</form>