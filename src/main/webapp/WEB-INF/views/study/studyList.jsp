<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
				<label class="col-sm-2 control-label">검색</label>
				<div class="col-sm-10">
					<select class="form-control" name="searchType">
						<option value="n" <c:out value="${cri.searchType == null?'selected':''}"/>>---</option>
						<option value="t" <c:out value="${cri.searchType eq 't'?'selected':''}"/>>Title</option>
						<option value="c" <c:out value="${cri.searchType eq 'c'?'selected':''}"/>>Content</option>
						<option value="w" <c:out value="${cri.searchType eq 'w'?'selected':''}"/>>Writer</option>
						<option value="tc" <c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>Title OR Content</option>
						<option value="cw" <c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>Content OR Writer</option>
						<option value="tcw" <c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>Title OR Content OR Writer</option>
					</select> <input type="text" class="form-control" name='keyword' id="keywordInput" value='${cri.keyword}'>
					<button id='searchBtn'>검색</button>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">지역</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="region" placeholder="지역을 입력해주세요" value="${cri.region}">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">카테고리</label>
				<div class="col-sm-10">
					<div class="col-sm-6 search-sub-select1">
						<select class="form-control" id="upCategory">
							<option value="studyList${pageMaker.makeUpCategory('n') }" <c:out value="${cri.upCategory eq 'n'?'selected':''}"/>>---</option>
							<option value="studyList${pageMaker.makeUpCategory('0') }" <c:out value="${cri.upCategory eq '0'?'selected':''}"/>>영어</option>
							<option value="studyList${pageMaker.makeUpCategory('1') }" <c:out value="${cri.upCategory eq '1'?'selected':''}"/>>외국어</option>
							<option value="studyList${pageMaker.makeUpCategory('2') }" <c:out value="${cri.upCategory eq '2'?'selected':''}"/>>컴퓨터</option>
							<option value="studyList${pageMaker.makeUpCategory('3') }" <c:out value="${cri.upCategory eq '3'?'selected':''}"/>>디자인/미술</option>
							<option value="studyList${pageMaker.makeUpCategory('4') }" <c:out value="${cri.upCategory eq '4'?'selected':''}"/>>국가고시/공무원</option>
							<option value="studyList${pageMaker.makeUpCategory('5') }" <c:out value="${cri.upCategory eq '5'?'selected':''}"/>>취업</option>
							<option value="studyList${pageMaker.makeUpCategory('6') }" <c:out value="${cri.upCategory eq '6'?'selected':''}"/>>음악/공연</option>
							<option value="studyList${pageMaker.makeUpCategory('7') }" <c:out value="${cri.upCategory eq '7'?'selected':''}"/>>스포츠</option>
							<option value="studyList${pageMaker.makeUpCategory('8') }" <c:out value="${cri.upCategory eq '8'?'selected':''}"/>>뷰티/미용</option>
							<option value="studyList${pageMaker.makeUpCategory('9') }" <c:out value="${cri.upCategory eq '9'?'selected':''}"/>>라이프스타일</option>
							<option value="studyList${pageMaker.makeUpCategory('10') }" <c:out value="${cri.upCategory eq '10'?'selected':''}"/>>게임</option>
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
	<!-- 정렬 -->
	<div class="btn-group">
		<select class="form-control" id="line-up">
			<option value="studyList${pageMaker.makeLineUp('n') }" <c:out value="${cri.lineUp == null?'selected':''}"/>>최신순</option>
			<option value="studyList${pageMaker.makeLineUp('v') }" <c:out value="${cri.lineUp eq 'v'?'selected':''}"/>>조회순</option>
			<option value="studyList${pageMaker.makeLineUp('p') }" <c:out value="${cri.lineUp eq 'p'?'selected':''}"/>>가격순</option>
			<option value="studyList${pageMaker.makeLineUp('r') }" <c:out value="${cri.lineUp eq 'r'?'selected':''}"/>>댓글순</option>
			<option>또뭐가있을까??</option>

		</select>
	</div>
	<div class="list-thumbnail">
		<div class="row" id="studyList-thumbnail"></div>
	</div>
	<div class="text-center">
		<ul class="pagination">
			<c:if test="${pageMaker.prev }">
				<li><a href="studyList${pageMaker.makeSearch(pageMaker.startPage -1) }">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
				<li <c:out value="${pageMaker.cri.page == idx?'class =active':''}" />><a href="studyList${pageMaker.makeSearch(idx) }">${idx }</a></li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
				<li><a href="studyList${pageMaker.makeSearch(pageMaker.endPage + 1) }">&raquo;</a></li>
			</c:if>
		</ul>
	</div>
</div>
<script type="text/javascript" src="/resources/dist/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>


<script id="templateList" type="text/x-handlebars-template">
	<div class="col-md-4" >
		<span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
		<div class="mailbox-attachment-info">
		</div>

</script>
<script>
	$(document)
			.ready(
					function() {
						/*스터디리스트 썸네일과같이 추력  */
						var template = Handlebars.compile($("#templateList").html());

						/*리스트 페이지 썸네일과 같이 출력  --> 콜백순서대로 출력되니 정렬이 안되네*/
						<c:forEach items="${list}" varStatus="listIdx" var="studyVO">
						if ("${studyVO.imagePath}") {
							var fileInfo = getFileInfo("${studyVO.imagePath}");
						} else {
							var fileInfo = getFileInfo(" ");
						}

						var html = template(fileInfo);
						<fmt:formatDate value="${studyVO.studyRegDate}"
					pattern="yyyy-MM-dd" var="date" />
						var studyInfo = "NO: ${studyVO.studyNo}</br>"
								+ "스터디명: <a href='/study/studyView${pageMaker.makeSearch(pageMaker.cri.page)}&studyNo=${studyVO.studyNo}'>${studyVO.studyName}</a></br>"
								+ "등록날짜: ${date}</br>" + "조회수: ${studyVO.studyViewCnt}</br>" + "댓글수:${studyVO.studyReplyCnt}";
						$("#studyList-thumbnail").append(html + studyInfo + "</div>");
						</c:forEach>

						/*정렬 출력  */
						/* $("#line-up").on("change",function({
							$.get("studyList${pageMaker.makeLineUp('v') }",function(event){
								alert('success');
							},'text');
						}) */
						$("#line-up").click(function() {
							var open = $(this).data("isopen");
							if (open) {
								window.location.href = $(this).val()
							}
							$(this).data("isopen", !open);
						});
						$("#upCategory").click(function() {
							var open = $(this).data("isopen");
							if (open) {
								window.location.href = $(this).val()
							}
							$(this).data("isopen", !open);
						});

					})
</script>
<%@include file="../include/footer.jsp"%>