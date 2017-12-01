<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/headerSub.jsp"%>
<div class="login container inner">
	<a href="" class="kakao-login">카카오계정으로로그인</a> <a href="" class="google-login">구글계정으로로그인</a> <a href="" class="naver-login">네이버계정으로로그인</a>
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
						<form action="/user/findId" method="get">
							<div class="form-group">
								<label for="InputBirth">생년월일</label> <input name="userBirth" type="text" class="form-control" placeholder="ex.000000">
							</div>
							<div class="form-group">
								<label for="InputName">이름</label> <input name="userName" type="text" class="form-control" placeholder="이름을 입력해주세요">
							</div>

							<div class="form-group">
								<label for="InputEmail">받을 이메일</label> <input name="userEmail" type="text" class="form-control">
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
						<h4 class="login-modal-title" id="loginModalLabel">비밀번호찾기</h4>
					</div>

					<form action="/user/sendPwd" method="get">
						<div class="modal-body">
							<div class="form-group">
								<label for="exampleInputEmail1">이메일</label>
								<div class="row">
									<div class="col-xs-12">
										<input name="userEmail" type="text" class="form-control" placeholder="이메일입력">
									</div>
								</div>
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
	</div>
</div>


<%@include file="../include/footer.jsp"%>
