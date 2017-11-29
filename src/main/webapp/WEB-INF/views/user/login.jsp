<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/headerSub.jsp" %>
<div class="login container inner">
	<a href="" class="kakao-login">카카오계정으로로그인</a>
	<a href="" class="google-login">구글계정으로로그인</a>
	<a href="" class="naver-login">네이버계정으로로그인</a>
	<form action="/login/loginPost" method="post">
	    <div class="form-group">
	        <label for="exampleInputEmail1">이메일 주소</label>
	        <input name="userEmail" type="email" class="form-control" id="exampleInputEmail1" placeholder="이메일을 입력하세요" value="${cookie.rememberID.value}">
	    </div>
	    <div class="form-group">
	        <label for="exampleInputPassword1">암호</label>
	        <input name="userPwd" type="password" class="form-control" id="exampleInputPassword1" placeholder="암호">
	    </div>
	    <div class="checkbox">
	        <label>
	            <input type="checkbox" name="rememberEmail"> 아이디저장
	        </label>
	        <label>
	            <input type="checkbox" name="useCookie"> 자동로그인
	        </label>
	    </div>
	
	    <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
	        <button type="submit" class="btn btn-primary">로그인</button>
	    </div>
	</form>
</div>
<%@include file="../include/footer.jsp" %> 
