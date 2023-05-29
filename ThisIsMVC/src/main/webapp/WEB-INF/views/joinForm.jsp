<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h3>회원가입</h3>
<form action="register.do" method="post">
	<div class="container table">
	<div class="row">
		<div class="col-md-2">ID:</div>
		<div class="col-md-10">
			<input type="text" id="id" name="id" value="${requestScope.member.id}">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">PWD:</div>
		<div class="col-md-10">
			<input type="password" id="pwd" name="pwd" value="${requestScope.member.pwd}">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">Name:</div>
		<div class="col-md-10">
			<input type="text" id="name" name="name" value="${requestScope.member.name}">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">age:</div>
		<div class="col-md-10">
			<input type="text" id="age" name="age" placeholder="숫자만 입력하세요" value="${requestScope.member.age}">
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">Gender:</div>
		<div class="col-md-10">
			<input type="radio" name="gender" id="women" value="여" checked>여자 
			<input type="radio" name="gender" id="man" value="남">남자
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">Email:</div>
		<div class="col-md-10">
			<input type="text" id="email" name="email" value="${requestScope.member.email}">
		</div>
	</div>
	<div class="row">
		<input type="submit" value="회원가입">
		<input type="reset" value="취소">
	</div>
</div>
</form>

<script>
	const mode = "${requestScope.mode}";
	console.log(mode);
	
	if(mode == 'modify'){//수정모드
		//회원정보 세팅
		let form = document.querySelectorAll('form')[0];
		const gender = "${requestScope.member.gender.trim()}";		
		form.action = "/update.do";
		
		console.log(gender);
		console.log(typeof(gender));
		console.log(gender == '남');
		
		if(gender == "남"){
			document.getElementById("man").checked = true;
			document.getElementById("women").checked = false;
		}

		//버튼명 바꾸기
		let submitButton = document.querySelectorAll('input[type="submit"]')[0];
		submitButton.value = '수정하기'

		//input태그 막기
		let inputId = document.getElementById("id");
		inputId.readOnly = true;
		inputId.style.backgroundColor = "grey";
		let inputPwd = document.getElementById("pwd");
		inputPwd.readOnly = true;
		inputPwd.style.backgroundColor = "grey";
		let inputGender = document.getElementsByName("gender");
		inputGender[0].disabled = true;
		inputGender[1].disabled = true;
		
		document.getElementsByTagName("h3")[0].innerText = "회원정보수정"
		
	}else{//회원가입 모드 
		
	}
</script>