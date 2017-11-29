<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/headerSub.jsp"%>

<style type="text/css">
.popup {
	position: absolute;
}

.back {
	background-color: gray;
	opacity: 0.5;
	width: 100%;
	height: 300%;
	overflow: hidden;
	z-index: 1101;
}

.front {
	z-index: 1110;
	opacity: 1;
	boarder: 1px;
	margin: auto;
}

.show {
	position: relative;
	max-width: 1200px;
	max-height: 800px;
	overflow: auto;
}
</style>
<div class='popup back' style="display: none;"></div>
<div id="popup_front" class='popup front' style="display: none;">
	<img id="popup_img">
</div>

<div class="container view inner">
	<!-- 밑에 썸네일 슬라이드야 -->
	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="/resources/images/view_sample.jpg" alt="">
			</div>
			<div class="item">
				<img src="/resources/images/view_sample1.jpg" alt="">
			</div>
			<div class="item">
				<img src="/resources/images/view_sample2.jpg" alt="">
			</div>
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span class="sr-only">Next</span>
		</a>
	</div>

	<!-- studyNo&page&perPageNum값 받아오기 -->
	<form role="form" action="studyModify" method="post">
		<input type="hidden" name='studyNo' value="${studyVO.studyNo }">
		<input type="hidden" name='page' value="${cri.page }">
		<input type="hidden" name='perPageNum' value="${cri.perPageNum }">
	</form>

	<div class="row">
		<div class="col-xs-12 view-tit">
			<h1>
				<input type="text" value="${studyVO.studyName }" readonly="readonly">
				<span class="view-category">영어</span><span class="view-category">it</span>
			</h1>
		</div>
		<div class="col-xs-12 view-user">
			<div class="user-img col-xs-1">
				<img src="/resources/images/user.jpg" alt="프로필사진">
			</div>
			<div class="col-xs-10 user-img-text">
				<h4>홍길동</h4>
				<p>2017.11.27</p>
			</div>
		</div>
		<div class="col-xs-12 view-info">
			<div class="col-md-1">카테고리</div>
			<div class="col-md-11">
				<input type="text" name="studyCategory"
					value="${studyVO.studyCategory }" readonly="readonly">
			</div>

			<div class="col-md-1">인원</div>
			<div class="col-md-11">
				<input type="text" name="studyCurMemCnt"
					value="${studyVO.studyCurMemCnt }" readonly="readonly"> / <input
					type="text" name="studyMaxMemCnt"
					value="${studyVO.studyMaxMemCnt }" readonly="readonly">
			</div>

			<div class="col-md-1">시작날짜</div>
			<div class="col-md-11">
				<!-- 날짜 형식을 년/월/일로 표시 -->
				<fmt:formatDate value="${studyVO.studyStartDate}"
					pattern="yyyy-MM-dd" var="date" />
				<input type="text" name="studyStartDate" value="${date }"
					readonly="readonly">
			</div>

			<div class="col-md-1">시간</div>
			<div class="col-md-11">15시 ~ 17시</div>

			<div class="col-md-1">지역</div>
			<div class="col-md-11">
				<input type="text" name="studyRegion"
					value="${studyVO.studyRegion }" readonly="readonly">
			</div>

			<div class="col-md-1">비용</div>
			<div class="col-md-11">
				<input type="text" name="studyMemFee"
					value="${studyVO.studyMemFee }" readonly="readonly">
			</div>

			<div class="col-md-1">일정</div>
			<div class="col-md-11">매주 월요일</div>

			<div class="col-md-1">대상</div>
			<div class="col-md-11">
				<input type="text" name="studyTargetAge"
					value="${studyVO.studyTargetAge }" readonly="readonly">
			</div>

			<div class="col-md-1">소개글</div>
			<div class="col-md-11">
				<input type="text" name="studyIntroduce"
					value="${studyVO.studyIntroduce }" readonly="readonly">
			</div>


			<ul class="mailbox-attachments clearfix uploadedList">
			</ul>

			<button id="modifyBtn" type="submit" class="view-btn">수정</button>
			<button id="deleteBtn" type="submit" class="view-btn">삭제</button>
			<button id="goListBtn" type="submit" class="view-btn">목록으로</button>

		</div>
	</div>
</div>
<script type="text/javascript" src="/resources/dist/js/upload.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>


<script id="templateAttach" type="text/x-handlebars-template">
	<li data-src='{{fullName}}'>
		<span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
		<div class="mailbox-attachment-info">
		<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
		</div>
	</li>
</script>
<script>
	$(document).ready(
			function() {
				var formObj = $("form[role='form']");

				console.log(formObj);

				/* 삭제버튼 클릭시  */
				$("#deleteBtn").on("click", function() {
					var arr = [];
					$(".uploadedList li").each(function(index) {
						arr.push($(this).attr("data-src"));
					});
					if (arr.length > 0) {
						$.post("/deleteAllFiles", {
							files : arr
						}, function() {

						});
					}
					formObj.attr("action", "/study/studyRemove");
					formObj.submit();
				});

				/* 수정버튼 클릭시  */
				$("#modifyBtn").on("click", function() {
					formObj.attr("action", "/study/studyModify");
					formObj.attr("method", "get");
					formObj.submit();
				});
				
				/* 목록으로버튼 클릭시  */
				$("#goListBtn").on("click", function() {
					formObj.attr("method", "get");
					formObj.attr("action", "/study/studyList");
					formObj.submit();
				});
				
				var studyNo = ${studyVO.studyNo};
				var template = Handlebars.compile($("#templateAttach").html());
				
				/* 제이슨으로 이미지 파일 불러오기  */
				$.getJSON("/study/getImg/" + studyNo, function(list) {
					$(list).each(function() {
						console.log(list);
						var fileInfo = getFileInfo(this);
						var html = template(fileInfo);
						$(".uploadedList").append(html);
					});
				});
				
				/* 이미지누르면 팝업창 뜨며 원본이미지 출력  */
				$(".uploadedList").on("click", ".mailbox-attachment-info a",
						function(event) {
							var fileLink = $(this).attr("href");

							if (checkImageType(fileLink)) {
								event.preventDefault();

								var imgTag = $("#popup_img");
								imgTag.attr("src", fileLink);

								console.log(imgTag.attr("src"));

								$(".popup").show('slow');
								imgTag.addClass("show");
							}
						});

				$("#popup_img").on("click", function(event) {
					$(".popup").hide('slow');
				});
			});
</script>

<%@include file="../include/footer.jsp"%>