<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
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
		<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span class="sr-only">Next</span>
		</a>
	</div>

	<!-- 쿼리스트링 값 받아오기 -->
	<form role="form" action="studyModify" method="post">
		<input type="hidden" name='studyNo' value="${studyVO.studyNo }"> <input type="hidden" name='page' value="${cri.page }"> <input
			type="hidden" name='perPageNum' value="${cri.perPageNum }"> <input type="hidden" name='searchType' value="${cri.searchType }">
		<input type="hidden" name='keyword' value="${cri.keyword }"> <input type="hidden" name='lineUp' value="${cri.lineUp}" />
	</form>

	<div class="row">
		<div class="col-xs-12 view-tit">
			<h1>
				<input type="text" value="${studyVO.studyName }" readonly="readonly"> <span class="view-category">영어</span><span
					class="view-category">it</span>
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
				<input type="text" name="studyCategory" value="${studyVO.studyCategory }" readonly="readonly">
			</div>

			<div class="col-md-1">인원</div>
			<div class="col-md-11">
				<input type="text" name="studyCurMemCnt" value="${studyVO.studyCurMemCnt }" readonly="readonly"> / <input type="text"
					name="studyMaxMemCnt" value="${studyVO.studyMaxMemCnt }" readonly="readonly">
			</div>

			<div class="col-md-1">시작날짜</div>
			<div class="col-md-11">
				<!-- 날짜 형식을 년/월/일로 표시 -->
				<fmt:formatDate value="${studyVO.studyStartDate}" pattern="yyyy-MM-dd" var="date" />
				<input type="text" name="studyStartDate" value="${date }" readonly="readonly">
			</div>

			

			<div class="col-md-1">지역</div>
			<div class="col-md-11">
				<input type="text" name="studyRegion" value="${studyVO.studyRegion }" readonly="readonly">
			</div>

			<div class="col-md-1">비용</div>
			<div class="col-md-11">
				<input type="text" name="studyMemFee" value="${studyVO.studyMemFee }" readonly="readonly">
			</div>
			
			<div class="col-md-1">일정</div>
			<div class="col-md-11">
				<c:forEach var="weekVO" items="${weekList}">
				<div>요일: ${weekVO.weekDay}, 시작시간: ${weekVO.weekStartDate}, 끝나는시간:${weekVO.weekEndDate} </div>
				</c:forEach> 
			</div>
			<div class="col-md-1">대상</div>
			<div class="col-md-11">
				<input type="text" name="studyTargetAge" value="${studyVO.studyTargetAge }" readonly="readonly">
			</div>

			<div class="col-md-1">소개글</div>
			<div class="col-md-11">
				<input type="text" name="studyIntroduce" value="${studyVO.studyIntroduce }" readonly="readonly">
			</div>


			<ul class="mailbox-attachments clearfix uploadedList">
			</ul>

			<button id="modifyBtn" type="submit" class="view-btn">수정</button>
			<button id="deleteBtn" type="submit" class="view-btn">삭제</button>
			<button id="goListBtn" type="submit" class="view-btn">목록으로</button>
		</div>
	</div>
	<div class="box-header">
		<h3 class="box-title">ADD NEW REPLY</h3>
	</div>
	<!--댓글 추가  -->
	<%-- <c:if test="${not empty login }"> --%>
	<div class="box-body">
		<label for="exampleInputEmail1">Writer</label> <input class="form-control" placeholder="USER ID" type="text" value="${login.uid }"
			 id="newReplyWriter"> <label for="exampleInputEmail1">Reply Text</label> <input class="form-control" type="text"
			placeholder="REPLY TEXT" id="newReplyText">
	</div>
	<!-- /.box-body -->
	<div class="box-footer">
		<button type="button" class="btn btn-primary" id="replyAddBtn">ADD REPLY</button>
	</div>
	<%-- </c:if> --%>
	<!-- 댓글 리스트 -->
	<ul class="timeline">
		<!-- timeline time label -->
		<li class="time-label" id="repliesDiv"><span class="bg-green"> Replies List <small id='replycntSmall'></small>
		</span></li>
	</ul>

	<div class='text-center'>
		<ul id="pagination" class="pagination pagination-sm no-margin ">
		</ul>
	</div>
</div>

<!-- 댓글 수정 Modal -->
<div id="modifyModal" class="modal modal-primary fade" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title"></h4>
			</div>
			<div class="modal-body" data-rno>
				<p>
					<input type="text" id="replyText" class="form-control">
				</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-info" id="replyModBtn">Modify</button>
				<button type="button" class="btn btn-danger" id="replyDelBtn">DELETE</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="/resources/dist/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script id="template" type="text/x-handlebars-template">
{{#each .}}
<li class="replyLi" data-rno={{replyNo}}>
<i class="fa fa-comments bg-blue"></i>
 	<div class="timeline-item" >
			<span class="time">
				<i class="fa fa-clock-o"></i>{{prettifyDate replyRegDate}}
			</span>
			<h3 class="timeline-header"><strong>{{rno}}</strong> -{{userEmail}}</h3>
		<div class="timeline-body">{{replyText}} </div>
		<div class="timeline-footer">
			<a class="btn btn-primary btn-xs" 
			data-toggle="modal" data-target="#modifyModal">Modify</a>
		</div>
	</div>   
</li>
{{/each}}
</script>

<script id="templateAttach" type="text/x-handlebars-template">
	<li data-src='{{fullName}}'>
		<span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
		<div class="mailbox-attachment-info">
		<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
		</div>
	</li>
</script>
<script>
	$(document).ready(function() {
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
		$(".uploadedList").on("click", ".mailbox-attachment-info a", function(event) {
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

		/*댓글 구현  */
		/*댓글 시간  */
		Handlebars.registerHelper("prettifyDate", function(timeValue) {
			var dateObj = new Date(timeValue);
			var year = dateObj.getFullYear();
			var month = dateObj.getMonth() + 1;
			var date = dateObj.getDate();
			return year + "/" + month + "/" + date;
		});

		/*템플릿에 적용  */
		var printData = function(replyArr, target, templateObject) {
			var template = Handlebars.compile(templateObject.html());
			var html = template(replyArr);
			$(".replyLi").remove();
			target.after(html);
		}

		var replyPage = 1;

		/*댓글 페이징처리된 리스트 출력  */
		function getPage(pageInfo) {
			$.getJSON(pageInfo, function(data) {

				printData(data.list, $("#repliesDiv"), $('#template'));
				printPaging(data.pageMaker, $(".pagination"));

				$("#modifyModal").modal('hide');
				$("#replycntSmall").html("[ " + data.pageMaker.totalCount + " ]");
			});
		}

		/*댓글 페이징 처리  */
		var printPaging = function(pageMaker, target) {
			var str = "";
			if (pageMaker.prev) {
				str += "<li><a href='" + (pageMaker.startPage - 1) + "'> << </a></li>";
			}
			for (var i = pageMaker.startPage, len = pageMaker.endPage; i <= len; i++) {
				var strClass = pageMaker.cri.page == i ? 'class=active' : '';
				str += "<li "+strClass+"><a href='"+i+"'>" + i + "</a></li>";
			}
			if (pageMaker.next) {
				str += "<li><a href='" + (pageMaker.endPage + 1) + "'> >> </a></li>";
			}
			target.html(str);
		};

		/*jsp에 댓글 출력  */
		$("#repliesDiv").on("click", function() {
			if ($(".timeline li").size() > 1) {
				return;
			}
			getPage("/replies/" + studyNo + "/1");
		});

		/*댓글  페이징출력*/
		$(".pagination").on("click", "li a", function(event) {
			event.preventDefault();
			replyPage = $(this).attr("href");
			getPage("/replies/" + studyNo + "/" + replyPage);
		});

		/*댓글 추가 */
		$("#replyAddBtn").on("click", function() {

			var replyerObj = $("#newReplyWriter");
			var replytextObj = $("#newReplyText");
			var replyer = replyerObj.val();
			var replyText = replytextObj.val();

			$.ajax({
				type : 'post',
				url : '/replies/',
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : 'text',
				data : JSON.stringify({
					studyNo : studyNo,
					userEmail : replyer,
					replyText : replyText
				}),
				success : function(result) {
					console.log("result: " + result);
					if (result == 'SUCCESS') {
						replyPage = 1;
						getPage("/replies/" + studyNo + "/" + replyPage);
						replyerObj.val("");
						replytextObj.val("");
					}
				}
			});
		});

		/*댓글 수정창 출력  */
		$(".timeline").on("click", ".replyLi", function(event) {
			var reply = $(this);
			$("#replyText").val(reply.find('.timeline-body').text());
			$(".modal-title").html(reply.attr("data-rno"));
		});

		/*댓글 수정 */
		$("#replyModBtn").on("click", function() {

			var replyNo = $(".modal-title").html();
			var replyText = $("#replyText").val();

			$.ajax({
				type : 'put',
				url : '/replies/' + replyNo,
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "PUT"
				},
				data : JSON.stringify({
					replyText : replyText
				}),
				dataType : 'text',
				success : function(result) {
					console.log("result: " + result);
					if (result == 'SUCCESS') {
						getPage("/replies/" + studyNo + "/" + replyPage);
					}
				}
			});
		});

		/*댓글 삭제  */
		$("#replyDelBtn").on("click", function() {
			var replyNo = $(".modal-title").html();

			$.ajax({
				type : 'delete',
				url : '/replies/' + replyNo,
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "DELETE"
				},
				data : JSON.stringify({
					studyNo : studyNo
				}),
				dataType : 'text',
				success : function(result) {
					console.log("result: " + result);
					if (result == 'SUCCESS') {
						alert("삭제 되었습니다.");
						getPage("/replies/" + studyNo + "/" + replyPage);
					}
				}
			});
		});
	});
</script>

<%@include file="../include/footer.jsp"%>