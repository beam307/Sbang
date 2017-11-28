<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="include/header.jsp"%>
<!-- 밑에는 메인검색부분이야 -->
<div class="main-search">
	<form class="form-inline">
		<div class="radio">
			<label> <input type="radio" name="optionsRadios"
				id="optionsRadios1" value="option1" checked>스터디검색
			</label>
		</div>
		<div class="radio">
			<label> <input type="radio" name="optionsRadios"
				id="optionsRadios2" value="option2"> 룸검색
			</label>
		</div>
		<div class="form-group">
			<input type="text" class="form-control" placeholder="검색어입력하는곳"
				id="searchBox" />
		</div>
		<button type="submit" class="btn btn-default">검색</button>
	</form>
</div>
<!-- 밑에는 썸네일부분이야 -->
<div class="container list-thumbnail">
	<h1>
		스터디목록 <a href="/studyList" class="more">더보기</a>
	</h1>
	<div class="study-thumbnail">
		<div class="row">
			<div class="col-md-4">
				<div class="thumbnail">
					<a href="/studyView">스터디썸네일</a>
				</div>
			</div>
			<div class="col-md-4">
				<div class="thumbnail">스터디썸네일</div>
			</div>
			<div class="col-md-4">
				<div class="thumbnail">스터디썸네일</div>
			</div>
			<div class="col-md-4">
				<div class="thumbnail">스터디썸네일</div>
			</div>
			<div class="col-md-4">
				<div class="thumbnail">스터디썸네일</div>
			</div>
			<div class="col-md-4">
				<div class="thumbnail">스터디썸네일</div>
			</div>
		</div>
	</div>
	<h1>
		방목록 <a href="" class="more">더보기</a>
	</h1>
	<div class="room-thumbnail">
		<div class="row">
			<div class="col-md-4">
				<div class="thumbnail">방썸네일</div>
			</div>
			<div class="col-md-4">
				<div class="thumbnail">방썸네일</div>
			</div>
			<div class="col-md-4">
				<div class="thumbnail">방썸네일</div>
			</div>
			<div class="col-md-4">
				<div class="thumbnail">방썸네일</div>
			</div>
			<div class="col-md-4">
				<div class="thumbnail">방썸네일</div>
			</div>
			<div class="col-md-4">
				<div class="thumbnail">방썸네일</div>
			</div>
		</div>
	</div>
</div>
<%@include file="include/footer.jsp"%>