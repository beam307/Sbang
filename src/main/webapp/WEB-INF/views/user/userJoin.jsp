<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/headerSub.jsp"%>
<div class="join container inner">
	<form action="/user/regUser" method="post" id="joinForm">
		<div class="form-group">
			<label for="InputName">이름</label> <input name="userName" type="text" class="form-control" id="InputName" placeholder="실명을 입력하세요">
		</div>
		<div class="form-group">
			<label for="InputEmail">이메일 주소</label> <input name="userEmail" type="email" class="form-control" id="InputEmail"
				placeholder="사용하시는 이메일을 입력하세요">
		</div>
		<div class="form-group">
			<label for="InputPassword">비밀번호</label> <input name="userPwd" type="password" class="form-control" id="InputPassword"
				placeholder="비밀번호를 입력하세요">
<<<<<<< HEAD
			<p>영문, 숫자만 포함된 8~18자리를 입력해주세요</p>
		</div>
		<div class="form-group">
			<label for="InputPassword">비밀번호확인</label> <input name="userPwdCheck" type="password" class="form-control" id="InputPasswordChk"
				placeholder="비밀번호를 확인합니다.">
=======
>>>>>>> branch 'user' of https://github.com/beam307/Sbang.git
		</div>
		<div class="form-group">
			<label for="InputBirthday">생년월일</label> <input name="userBirth" type="text" class="form-control" id="InputBirthday" placeholder="ex.990101">
		</div>
		<div class="form-group">
			<label for="InputGender">성별</label>
			<div class="radio">
				<label> <input type="radio" name="userGender" class="genderRadio" value="M" aria-label="남성">남성
				</label> <label> <input type="radio" name="userGender" class="genderRadio" value="W" aria-label="여성">여성
				</label>
			</div>
		</div>
		<div class="form-group">
			<label for="InputGender">전화번호</label>
			<div class="row">
				<div class="col-xs-2">
					<input type="text" name="userPhoneNumber" class="form-control" placeholder="010" id="userPhoneNumber1">
				</div>
				<div class="col-xs-1">-</div>
				<div class="col-xs-2">
					<input type="text" name="userPhoneNumber" class="form-control" placeholder="0000" id="userPhoneNumber2">
				</div>
				<div class="col-xs-1">-</div>
				<div class="col-xs-2">
					<input type="text" name="userPhoneNumber" class="form-control" placeholder="0000" id="userPhoneNumber3">
				</div>
			</div>

		</div>

		<div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
			<button type="submit" class="btn btn-primary">회원가입</button>
		</div>
	</form>
</div>
<<<<<<< HEAD
<script>
	jQuery(function($) {
		var chkEmail = /^([\w\.-]+)@([a-z\d\.-]+)\.([a-z\.]{2,6})$/; // 이메일 검사식
		var chkBirth = /^(?:[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))$/; // 생년월일 검사식
		var chkName = /^[가-힣]+$/; // 이름 검사식
		var chkPwd = /^[a-zA-Z0-9]{8,18}$/; // 비밀번호 검사식
		var chkPhone1 = /^[0-9]{2,3}$/; // 전화번호 앞 검사식
		var chkPhone2 = /^[0-9]{3,4}$/; // 중간자리 검사식
		var chkPhone3 = /^[0-9]{4}$/; // 마지막자리 검사식
=======
>>>>>>> branch 'user' of https://github.com/beam307/Sbang.git

<<<<<<< HEAD
		var form = $('#joinForm');
		var userEmail = $('#InputEmail');
		var userName = $('#InputName');
		var userPwd = $('#InputPassword');
		var userPwdChk = $('#InputPasswordChk');
		var userBirth = $('#InputBirthday');
		var userGender = $('.genderRadio');
		var userPhone1 = $('#userPhoneNumber1');
		var userPhone2 = $('#userPhoneNumber2');
		var userPhone3 = $('#userPhoneNumber3');

		function validator() { // 비밀번호 값 비교
			if (userPwd.val() == userPwdChk.val())
				return true;
			else
				return false;
		}
		function checkedRadio() {
			if ($('input:radio[name=userGender]').is(':checked'))
				return true;
			else
				return false;
		}

		form.submit(function() {
			if (userName.val() == "") { // 이름 NULL 유효성검사
				alert("이름을 입력하십시요");
				userName.focus();
				return false;
			} else if (chkName.test(userName.val()) != true) { // 이름 형식 유효성검사
				alert("이름 형식이 아닙니다.");
				userName.focus();
				return false;
			} else if (userEmail.val() == "") { // 이메일 NULL 유효성검사
				alert("이메일을 입력하십시요");
				userEmail.focus();
				return false;
			} else if (chkEmail.test(userEmail.val()) != true) { // 이메일 형식 유효성검사
				alert("이메일 형식이 아닙니다.");
				userEmail.focus();
				return false;
			} else if (userPwd.val() == "") { // 비밀번호 NULL 유효성검사
				alert("비밀번호를 입력하십시요");
				userPwd.focus();
				return false;
			} else if (chkPwd.test(userPwd.val()) != true) { // 비밀번호 유효성 검사
				alert("비밀번호 형식이 아닙니다.");
				userPwd.focus();
				return false;
			} else if (userPwdChk.val() == "") { // 비밀번호확인 NULL 유효성검사
				alert("비밀번호 확인을 입력하십시요");
				userPwdChk.focus();
				return false;
			} else if (validator() != true) { // 비밀번호 확인 검사
				alert("비밀번호확인 값이 틀립니다.");
				userPwdChk.focus();
				return false;
			} else if (userBirth.val() == "") { // 생년월일 NULL 유효성 검사
				alert("생년월일을 입력하십시요");
				userBirth.focus();
				return false;
			} else if (chkBirth.test(userBirth.val()) != true) { // 생년월일 유효성 검사
				alert("생년월일 형식이 아닙니다.");
				userBirth.focus();
				return false;
			} else if (checkedRadio() != true) { // 성별 NULL 유효성 검사
				alert("성별을 선택하세요");
				userGender.focus();
				return false;
			} else if (userPhone1.val() == "") { // 전화번호 NULL 검사
				alert("전화번호를 입력하십시요");
				userPhone1.focus();
				return false;
			} else if (chkPhone1.test(userPhone1.val()) != true) { // 전화번호 유효성 검사
				alert("전화번호 형식이 아닙니다.");
				userPhone1.focus();
				return false;
			} else if (userPhone2.val() == "") { // 전화번호 NULL 검사
				alert("전화번호를 입력하십시요");
				userPhone2.focus();
				return false;
			} else if (chkPhone2.test(userPhone2.val()) != true) { // 전화번호 유효성 검사
				alert("전화번호 형식이 아닙니다.");
				userPhone2.focus();
				return false;
			} else if (userPhone3.val() == "") { // 전화번호 NULL 검사
				alert("전화번호를 입력하십시요");
				userPhone3.focus();
				return false;
			} else if (chkPhone3.test(userPhone3.val()) != true) { // 전화번호 유효성 검사
				alert("전화번호 형식이 아닙니다.");
				userPhone3.focus();
				return false;
			}

		});

	});
</script>
=======
>>>>>>> branch 'user' of https://github.com/beam307/Sbang.git
<%@include file="../include/footer.jsp"%>
