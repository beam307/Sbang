<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/headerSub.jsp"%>
<div class="container mypage inner">

	<ul class="nav nav-tabs" role="tablist">
		<li role="presentation" class="active"><a href="/user/myPage">개인정보관리</a></li>
		<li role="presentation"><a href="/user/studyManage">스터디관리</a></li>
		<li role="presentation"><a href="/user/roomManage">룸관리</a></li>
	</ul>

	<!-- Tab panes -->
	<div role="tabpanel" class="tab-pane active" id="myinfo">
		<div class="tabpanel-in" role="tabpanel">
			<!-- Nav tabs -->
			<ul class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a href="#profile" aria-controls="home" role="tab" data-toggle="tab">프로필</a></li>
				<c:if test="${empty login.getUserNaver() && empty login.getUserKakao()}">
					<li role="presentation"><a href="#password" aria-controls="password" role="tab" data-toggle="tab">비밀번호변경</a></li>
				</c:if>
				<li role="presentation"><a href="#withdrawal" aria-controls="withdrawal" role="tab" data-toggle="tab">회원탈퇴</a></li>
			</ul>

			<!-- Tab panes -->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="profile">
					<div class="col-xs-12 tab-content-in">
						<h4>프로필 사진</h4>
						<div class="col-xs-12">
							<div class="user-img col-xs-2">
								<img src="/resources/images/user.jpg" alt="프로필사진">
							</div>
							<div class="col-xs-10 user-img-text">
								회원님의 정면 사진을 올려주세요! <br /> 상대방이 신뢰를 갖고 연락 할 확률이 높아질 거예요. <br /> ※ 정사각형 사이즈의 사진으로 올려주세요
								<p>
									<button type="button" class="btn btn-default user-img-upload">사진업로드하기</button>
								</p>
							</div>
						</div>
					</div>
					<div class="col-xs-12 tab-content-in">
						<h4>계정정보</h4>
						<form class="form-horizontal" action="/user/myPage" method="post" id="modifyForm">
							<div class="form-group">
								<label for="id" class="col-sm-2 control-label">아이디</label>
								<div class="col-sm-10 m_t_5">
									<input type="text" class="form-control" name="userEmail" value="${UserVO.getUserEmail()}" readonly>
								</div>
							</div>
							<div class="form-group">
								<label for="name" class="col-sm-2 control-label">이름</label>
								<div class="col-sm-10 m_t_5">
									<input type="text" id="userName" class="form-control" name="userName" value="${UserVO.getUserName()}">
								</div>
							</div>
							<c:set var="phoneArray" value="${fn:split(UserVO.getUserPhoneNumber(),',')}" />
							<div class="form-group">
								<label for="number" class="col-sm-2 control-label">전화번호</label>
								<div class="row">
									<div class="col-xs-2">
										<input type="text" id="userPhone1" name="userPhoneNumber" class="form-control" value="${phoneArray[0]}">
									</div>
									<div class="col-xs-1">-</div>
									<div class="col-xs-2">
										<input type="text" id="userPhone2" name="userPhoneNumber" class="form-control" value="${phoneArray[1]}">
									</div>
									<div class="col-xs-1">-</div>
									<div class="col-xs-2">
										<input type="text" id="userPhone3" name="userPhoneNumber" class="form-control" value="${phoneArray[2]}">
									</div>
								</div>
							</div>

							<div class="form-group">
								<label for="birth" class="col-sm-2 control-label">생년월일</label>
								<div class="col-sm-10 m_t_5">
									<input type="text" id="userBirth" class="form-control" name="userBirth" value="${UserVO.getUserBirth()}">
								</div>
							</div>
							<button type="submit" class="btn btn-default f_right">저장하기</button>

						</form>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="password">
					<div class="col-xs-12 tab-content-in">
						<h4>비밀번호변경</h4>
						<form class="form-horizontal" action="/user/changePwd" method="post" id="changePwdForm">
							<div class="form-group">
								<label class="col-sm-2 control-label">현재비밀번호</label>
								<div class="col-sm-10 m_t_5">
									<input id="userPwd" name="userPwd" type="password" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">새비밀번호</label>
								<div class="col-sm-10 m_t_5">
									<input id="newPwd" name="userNewPwd" type="password" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">새비밀번호확인</label>
								<div class="col-sm-10 m_t_5">
									<input id="newPwdChk" name="userCheckPwd" type="password" class="form-control">
								</div>
							</div>
							<button type="submit" class="btn btn-default f_right">변경하기</button>
						</form>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane" id="withdrawal">
					<div class="col-xs-12 tab-content-in">
						<h4>회원탈퇴</h4>
						<form action="/user/delete" method="post">
							<div class="form-group">
								<label for="id" class="col-sm-12 control-label">정말 탈퇴하시겠습니까?</label>
								<div class="col-sm-12 m_t_5">
									<button type="submit" class="btn btn-default">탈퇴하기</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	jQuery(function($) {
		var chkBirth = /^(?:[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))$/; // 생년월일 검사식
		var chkName = /^[가-힣]+$/; // 이름 검사식
		var chkPhone1 = /^[0-9]{2,3}$/; // 전화번호 앞 검사식
		var chkPhone2 = /^[0-9]{3,4}$/; // 중간자리 검사식
		var chkPhone3 = /^[0-9]{4}$/; // 마지막자리 검사식

		var chkPwd = /^[a-zA-Z0-9]{8,18}$/; // 비밀번호 검사식

		var ModiForm = $('#modifyForm'); // 프로필변경 폼 선택자
		var PwdForm = $('#changePwdForm'); // 비밀번호 변경 폼 선택자
		var userName = $('#userName'); // 이름 선택자
		var userBirth = $('#userBirth'); // 생년월일 선택자
		var userPhone1 = $('#userPhone1'); // 폰 첫번째 선택자
		var userPhone2 = $('#userPhone2'); // 폰 두번째 선택자
		var userPhone3 = $('#userPhone3'); // 폰 세번째 선택자

		var userPwd = $('#userPwd'); // 현재 비밀번호 선택자
		var userNewPwd = $('#newPwd'); // 새로운 비밀번호 선택자
		var userNewPwdChk = $('#newPwdChk'); // 새로운 비밀번호 선택자

		function validator() { // 새로운 비밀번호 값 비교
			if (userNewPwd.val() == userNewPwdChk.val())
				return true;
			else
				return false;
		}

		ModiForm.submit(function() { // 프로필 변경 유효성 검사
			if (chkName.test(userName.val()) != true) { // 이름 유효성 검사
				alert("이름 형식이 아닙니다.");
				userName.focus();
				return false;
			} else if (chkPhone1.test(userPhone1.val()) != true) { // 전화번호앞 유효성 검사
				alert("전화번호 형식이 아닙니다.");
				userPhone1.focus();
				return false;
			} else if (chkPhone2.test(userPhone2.val()) != true) { // 전화번호중간 유효성 검사
				alert("전화번호 형식이 아닙니다.");
				userPhone2.focus();
				return false;
			} else if (chkPhone3.test(userPhone3.val()) != true) { // 전화번호뒤 유효성 검사
				alert("전화번호 형식이 아닙니다.");
				userPhone3.focus();
				return false;
			} else if (chkBirth.test(userBirth.val()) != true) { // 생년월일 유효성 검사
				alert("생년월일 형식이 아닙니다.");
				userBirth.focus();
				return false;
			}
		});

		PwdForm.submit(function() { // 비밀번호 변경 유효성 검사
			if (userPwd.val() == "") {
				alert("현재 비밀번호를 입력하십시요.")
				userPwd.focus();
				return false;
			} else if (chkPwd.test(userPwd.val()) != true) { // 현재 비밀번호 유효성 검사
				alert("비밀번호 형식이 아닙니다.");
				userPwd.focus();
				return false;
			} else if (userNewPwd.val() == "") { // 새로운 비밀번호 유효성 검사
				alert("새로운 비밀번호를 입력하십시요.");
				userNewPwd.focus();
				return false;
			} else if (chkPwd.test(userNewPwd.val()) != true) { // 새로운 비밀번호 유효성 검사
				alert("비밀번호 형식이 아닙니다.");
				userNewPwd.focus();
				return false;
			} else if (userNewPwdChk.val() == "") { // 새로운 비밀번호 유효성 검사
				alert("새로운 비밀번호를 입력하십시요.");
				userNewPwdChk.focus();
				return false;
			} else if (validator() != true) { // 비밀번호 일치 검사
				alert("새로운 비밀번호가 일치하지 않습니다.");
				userNewPwdChk.focus();
				return false;
			}
		});

	});
</script>
<%@include file="../include/footer.jsp"%>