<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/headerSub.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<div class="row" id="studyList-thumbnail">
			<%-- <c:forEach items="${list}" var="studyVO">
				<div class="col-md-4">
					
						${studyVO.studyNo }
						<a href='/study/studyView${pageMaker.makeQuery(pageMaker.cri.page)}&studyNo=${studyVO.studyNo}'>${studyVO.studyName}</a>
						<%-- <td><a href='/board/read?bno=${boardVO.bno}'>${boardVO.title}</a></td> --%>
						<fmt:formatDate pattern="yy-MM-dd HH:mm"
								value="${studyVO.studyRegDate}" />
						<span class="badge bg-red">${studyVO.studyMaxMemCnt}</span>
				</div>
			</c:forEach>
		</div>
	</div>
	<div class="text-center">
		<ul class="pagination">
			<c:if test="${pageMaker.prev }">
				<li><a
					href="studyList${pageMaker.makeQuery(pageMaker.startPage -1) }">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li
					<c:out value="${pageMaker.cri.page == idx?'class =active':''}" />>
					<a href="studyList${pageMaker.makeQuery(idx) }">${idx }</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
				<li><a
					href="studyList${pageMaker.makeQuery(pageMaker.endPage + 1) }">&raquo;</a></li>
			</c:if>
		</ul>
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
				<fmt:formatDate value="${studyVO.studyStartDate}"
					pattern="yyyy-MM-dd" var="date" />
				var studyInfo="NO: ${studyVO.studyNo}</br>"+"Name: <a href='/study/studyView?studyNo=${studyVO.studyNo}'>${studyVO.studyName}</a></br>"+"RegDate: ${date}";
				$("#studyList-thumbnail").append(html+studyInfo+"</div>");
			  });
		}); 
	</c:forEach>; 
})
</script>
<%@include file="../include/footer.jsp"%>
