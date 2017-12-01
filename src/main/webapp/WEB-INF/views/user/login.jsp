<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/headerSub.jsp"%>
<div class="login container inner">
	<a href="#"><img src="/resources/images/kakaoLogin.png" alt="kakaoLogin"></a> <a href="/login/naverLogin"><img src="/resources/images/naver.png" alt="naverLogin"></a> <a href="#"
		class="google-login">구글계정으로로그인</a>
	<form action="/login/loginPost" method="post">
		<div class="form-group">
			<label for="exampleInputEmail1">이메일 주소</label> <input name="userEmail" type="email" class="form-control" id="exampleInputEmail1" placeholder="이메일을 입력하세요" value="${cookie.rememberID.value}">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">암호</label> <input name="userPwd" type="password" class="form-control" id="exampleInputPassword1" placeholder="암호">
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
		<a class="" data-toggle="modal" href="#findId">아이디찾기</a>

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
					<div class="modal-body">
						<form>
							<div class="form-group">
								<label for="exampleInputEmail1">생년월일</label> <input type="email" class="form-control" id="exampleInputEmail1" placeholder="ex.000000">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">이름</label> <input type="password" class="form-control" id="exampleInputPassword1" placeholder="이름을 입력해주세요">
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
		<a class="m_l_10" data-toggle="modal" href="#findPwd">비밀번호찾기</a>

		<!-- Modal -->
		<div class="modal fade" id="findPwd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="login-modal-title" id="loginModalLabel">아이디찾기</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="exampleInputEmail1">전화번호</label>
							<div class="row">
								<div class="col-xs-2">
									<input type="text" class="form-control" placeholder="010">
								</div>
								<div class="col-xs-1">-</div>
								<div class="col-xs-2">
									<input type="text" class="form-control" placeholder="0000">
								</div>
								<div class="col-xs-1">-</div>
								<div class="col-xs-2">
									<input type="text" class="form-control" placeholder="0000">
								</div>
								<div class="col-xs-3">
									<button type="button" class="btn btn-default">인증하기</button>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">생년월일</label> <input type="email" class="form-control" id="exampleInputEmail1" placeholder="ex.000000">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">이름</label> <input type="password" class="form-control" id="exampleInputPassword1" placeholder="이름을 입력해주세요">
						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
							<button type="submit" class="btn btn-primary">완료</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp"%>
