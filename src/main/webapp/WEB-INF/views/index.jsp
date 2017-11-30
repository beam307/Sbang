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
				id="searchBox">
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
		<div class="row" id="studyList-thumbnail">
			
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
<script type="text/javascript" src="/resources/dist/js/upload.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>


<script id="templateList" type="text/x-handlebars-template">
	<div class="col-md-4" data-src='{{fullName}}'>
		<span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
		<div class="mailbox-attachment-info">
		<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
		</div>
</script>
<script>
$(document).ready(function(){
	/*스터디리스트 썸네일과같이 추력  */ 
	var template = Handlebars.compile($("#templateList").html());
		
	 /*  */
	 <c:forEach items="${list}" varStatus="listIdx" var="studyVO">
		  $.getJSON("/study/getImgOne/" + ${studyVO.studyNo}, function(list) {
			  $(list).each(function() {
				var fileInfo = getFileInfo(this);
				var html = template(fileInfo);
				<fmt:formatDate value="${studyVO.studyRegDate}"
					pattern="yyyy-MM-dd" var="date" />
				var studyInfo="NO: ${studyVO.studyNo}</br>"+"Name: <a href='/study/studyView?${pageMaker.makeQuery(pageMaker.cri.page)}&studyNo=${studyVO.studyNo}'>${studyVO.studyName}</a></br>"+"RegDate: ${date}";
				$("#studyList-thumbnail").append(html+studyInfo+"</div>");
			  });
		}); 
	</c:forEach>; 
})
</script>
<%@include file="include/footer.jsp"%>