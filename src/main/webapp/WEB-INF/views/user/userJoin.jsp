<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/headerSub.jsp"%>
<div class="join container inner">
	<form action="/user/regUser" method="post">
		<div class="form-group">
			<label for="InputName">이름</label> <input name="userName" type="text" class="form-control" id="InputName" placeholder="실명을 입력하세요">
		</div>
		<div class="form-group">
			<label for="InputEmail">이메일 주소</label> <input name="userEmail" type="email" class="form-control" id="InputEmail" placeholder="사용하시는 이메일을 입력하세요">
		</div>
		<div class="form-group">
			<label for="InputPassword">비밀번호</label> <input name="userPwd" type="password" class="form-control" id="InputPassword" placeholder="비밀번호를 입력하세요">
		</div>
		<div class="form-group">
			<label for="InputBirthday">생년월일</label> <input name="userBirth" type="text" class="form-control" id="InputBirthday" placeholder="ex.990101">
		</div>
		<div class="form-group">
			<label for="InputGender">성별</label>
			<div class="radio">
				<label> <input type="radio" name="userGender" id="genderRadio1" value="man" aria-label="남성"> 남성
				</label> <label> <input type="radio" name="userGender" id="genderRadio2" value="woman" aria-label="여성"> 여성
				</label>
			</div>
		</div>
		<div class="form-group">
			<label for="InputGender">전화번호</label>
			<div class="row">
				<div class="col-xs-2">
					<input type="text" name="userPhoneNumber" class="form-control" placeholder="010">
				</div>
				<div class="col-xs-1">-</div>
				<div class="col-xs-2">
					<input type="text" name="userPhoneNumber" class="form-control" placeholder="0000">
				</div>
				<div class="col-xs-1">-</div>
				<div class="col-xs-2">
					<input type="text" name="userPhoneNumber" class="form-control" placeholder="0000">
				</div>
			</div>
		</div>

		<div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
			<button type="submit" class="btn btn-primary">회원가입</button>
		</div>
	</form>
</div>
<%@include file="../include/footer.jsp"%>
