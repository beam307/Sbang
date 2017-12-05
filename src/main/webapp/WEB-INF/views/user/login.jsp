<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/headerSub.jsp"%>
<div class="login container inner">
	<a href="https://kauth.kakao.com/oauth/authorize?client_id=e28b842cf3d2e3343f9bf0556066bb85&redirect_uri=http://localhost/login/kakaoLogin&response_type=code"><img
		src="/resources/images/kakaoLogin.png" alt="kakaoLogin"></a>
	<a href="/login/naverLogin"><img src="/resources/images/naver.png" alt="naverLogin"></a>
	<form action="/login/loginPost" method="post" id="loginForm">
		<div class="form-group">
			<label for="exampleInputEmail1">이메일 주소</label> <input name="userEmail" type="email" class="form-control" id="exampleInputEmail1"
				placeholder="이메일을 입력하세요" value="${cookie.rememberID.value}">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">암호</label> <input name="userPwd" type="password" class="form-control" id="exampleInputPassword1"
				placeholder="암호">
		</div>
		<div class="checkbox">
			<label> <input type="checkbox" name="rememberEmail"> 아이디저장
			</label> <label> <input type="checkbox" name="useCookie"> 자동로그인
			</label>
		</div>
		<button type="submit" class="btn btn-default">로그인</button>
	</form>
	<div class="find-user">
		<!-- Button trigger modal -->
		<a class="" id="findIdBtn" data-toggle="modal" href="#findId">아이디찾기</a>

		<!-- Modal -->
		<div class="modal fade" id="findId" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="login-modal-title" id="loginModalLabel">아이디찾기</h4>
					</div>
					<form action="/user/findId" method="post" id="findIdForm">
						<div class="modal-body">
							<div class="form-group">
								<label for="InputName">이름</label> <input id="idName" name="userName" type="text" class="form-control" placeholder="이름을 입력해주세요">
							</div>
							<div class="form-group">
								<label for="InputBirth">생년월일</label> <input id="idBirth" name="userBirth" type="text" class="form-control" placeholder="ex.000000">
							</div>
							<div class="form-group">
								<label for="InputEmail">임시 이메일</label> <input id="idEmail" name="toEmail" type="text" class="form-control" placeholder="임시 이메일을 입력해주세요.">
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
								<button type="submit" class="btn btn-primary">완료</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

		<a class="m_l_10" id="findPwdBtn" data-toggle="modal" href="#findPwd">비밀번호찾기</a>

		<!-- Modal -->
		<div class="modal fade" id="findPwd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="login-modal-title" id="loginModalLabel">비밀번호찾기</h4>
					</div>
					<form action="/user/findPwd" method="post" id="findPwdForm">
						<div class="modal-body">
							<div class="form-group">
								<label for="InputEmail">이메일</label> <input id="pwdEmail" name="userEmail" type="text" class="form-control" placeholder="이메일을 입력해주세요.">
							</div>
							<div class="form-group">
								<label for="InputName">이름</label> <input id="pwdName" name="userName" type="text" class="form-control" placeholder="이름을 입력해주세요.">
							</div>
							<div class="form-group">
								<label for="InputBirth">생년월일</label> <input id="pwdBirth" name="userBirth" type="text" class="form-control" placeholder="ex.000000">
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
							<button type="submit" class="btn btn-primary">완료</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	jQuery(function($) {
		var chkEmail = /^([\w\.-]+)@([a-z\d\.-]+)\.([a-z\.]{2,6})$/; // 이메일 검사식
		var chkBirth = /^(?:[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))$/; // 생년월일 검사식
		var chkName = /^[가-힣]+$/; // 이름 검사식

		var loginForm = $('#loginForm');
		var userEmail = $('#exampleInputEmail1');
		var userPwd = $('#exampleInputPassword1');

		var idForm = $('#findIdForm');
		var idName = $('#idName');
		var idBirth = $('#idBirth');
		var idEmail = $('#idEmail');

		var pwdForm = $('#findPwdForm');
		var pwdName = $('#pwdName');
		var pwdBirth = $('#pwdBirth');
		var pwdEmail = $('#pwdEmail');

		loginForm.submit(function() {
			if (userEmail.val() == "") { // 아이디 NULL 유효성검사
				alert("아이디를 입력하십시요");
				userEmail.focus();
				return false;
			} else if (chkEmail.test(userEmail.val()) != true) { // 이메일 형식 유효성검사
				alert("이메일 형식이 아닙니다.");
				userEmail.focus();
				return false;
			} else if (userPwd.val() == "") { // 비밀번호 NULL 유효성검사
				alert("비밀번호를 입력하십시요.");
				userPwd.focus();
				return false;
			}
		});

		idForm.submit(function() {
			if (idName.val() == "") { // 이름 NULL 유효성검사
				alert("이름을 입력하십시요");
				idName.focus();
				return false;
			} else if (chkName.test(idName.val()) != true) { // 이름 형식 유효성검사
				alert("이름 형식이 아닙니다.");
				idName.focus();
				return false;
			} else if (idBirth.val() == "") { // 생년월일 NULL 유효성검사
				alert("생년 월일을 입력하십시요");
				idBirth.focus();
				return false;
			} else if (chkBirth.test(idBirth.val()) != true) { // 생년월일 형식 유효성검사
				alert("생년월일 형식이 아닙니다.");
				idBirth.focus();
				return false;
			} else if (idEmail.val() == "") { // 이메일 NULL 유효성검사
				alert("이메일을 입력하십시요");
				idEmail.focus();
				return false;
			} else if (chkEmail.test(idEmail.val()) != true) { // 이메일 형식 유효성검사
				alert("이름 형식이 아닙니다.");
				idEmail.focus();
				return false;
			}
		});

		pwdForm.submit(function() {
			if (pwdName.val() == "") { // 이름 NULL 유효성검사
				alert("이름을 입력하십시요");
				pwdName.focus();
				return false;
			} else if (chkName.test(pwdName.val()) != true) { // 이름 형식 유효성검사
				alert("이름 형식이 아닙니다.");
				pwdName.focus();
				return false;
			} else if (pwdBirth.val() == "") { // 생년월일 NULL 유효성검사
				alert("생년 월일을 입력하십시요");
				pwdBirth.focus();
				return false;
			} else if (chkBirth.test(pwdBirth.val()) != true) { // 생년월일 형식 유효성검사
				alert("생년월일 형식이 아닙니다.");
				pwdBirth.focus();
				return false;
			} else if (pwdEmail.val() == "") { // 이메일 NULL 유효성검사
				alert("이메일을 입력하십시요");
				pwdEmail.focus();
				return false;
			} else if (chkEmail.test(pwdEmail.val()) != true) { // 이메일 형식 유효성검사
				alert("이름 형식이 아닙니다.");
				pwdEmail.focus();
				return false;
			}
		});

	});

	var result = '${findUser}';

	if (result == 'findIdSuccess')
		alert("임시 이메일로 이메일(아이디)를 보내드렸습니다. 확인 하십시요");
	if (result == 'findIdFail') {
		alert("일치 하는 정보가 없습니다. 다시 입력하십시요.");
		$('#findIdBtn').trigger('click');
	}

	if (result == 'findPwdSuccess')
		alert("이메일로 임시 비밀번호를 보내드렸습니다. 확인 하십시요");
	if (result == 'findPwdFail') {
		alert("일치 하는 정보가 없습니다. 다시 입력하십시요.");
		$('#findPwdBtn').trigger('click');
	}
</script>
<%@include file="../include/footer.jsp"%>
