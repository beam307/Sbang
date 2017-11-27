<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/headerSub.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="container list inner">
	<div class="col-md-12 search-sub">
		<div class="search-typebtn">
			<button type="button" class="btn btn-default">스터디</button>
			<button type="button" class="btn btn-default">방</button>
		</div>
		<form class="form-horizontal">
			<div class="form-group">
				<label class="col-sm-2 control-label">지역</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" placeholder="지역을 입력해주세요">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">카테고리</label>
				<div class="col-sm-10">
					<div class="col-sm-6 search-sub-select1">
						<select class="form-control">
							<option>대분류</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</div>
					<div class="col-sm-6 search-sub-select2">
						<select class="form-control">
							<option>소분류</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- Single button -->
	<div class="btn-group">
		<button type="button" class="btn btn-default dropdown-toggle"
			data-toggle="dropdown" aria-expanded="false">
			정렬 <span class="caret"></span>
		</button>
		<ul class="dropdown-menu" role="menu">
			<li><a href="#">인원순</a></li>
			<li><a href="#">최신순</a></li>
		</ul>
	</div>
	<div class="list-thumbnail">
		<div class="row">
			<c:forEach items="${list}" var="studyVO">
				<div class="col-md-4">
					
						${studyVO.studyNo }
						<a href='/study/studyView?studyNo=${studyVO.studyNo}'>${studyVO.studyName}</a>
						<%-- <td><a href='/board/read?bno=${boardVO.bno}'>${boardVO.title}</a></td> --%>
						<fmt:formatDate pattern="yy-MM-dd HH:mm"
								value="${studyVO.studyRegDate}" />
						<span class="badge bg-red">${studyVO.studyMaxMemCnt}</span>
					
				</div>
			</c:forEach>
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
</div>
<%@include file="../include/footer.jsp"%>
