<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

			<div class="col-md-1">소개글</div>
			<div class="col-md-11">
				<input type="text" name="studyIntroduce"
					value="${studyVO.studyIntroduce }" readonly="readonly">
			</div>
			
			
			<ul class="mailbox-attachments clearfix uploadedList"> </ul>

			<button id="modifyBtn" type="submit" class="view-btn">수정</button>
			<button id="deleteBtn" type="submit" class="view-btn">삭제</button>


		</div>
	</div>
</div>
<script type="text/javascript" src="/resources/dist/js/upload.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

			$(document).ready(function(){
				var formObj = $("form[role='form']");
				
				console.log(formObj);
				
				/* 삭제버튼 클릭시  */
				$("#deleteBtn").on("click", function(){
					formObj.attr("action", "/study/studyRemove");
					formObj.submit();
				});
				
				/* 수정버튼 클릭시  */
				$("#modifyBtn").on("click", function(){
					formObj.attr("action", "/study/studyModify");
					formObj.attr("method", "get");
					formObj.submit();
				});
			});
        </script>



        <div class="row">
            <div class="col-xs-12 view-tit">
                <h1><input type="text" value="${studyVO.studyName }" readonly="readonly">
                <span class="view-category">영어</span><span class="view-category">it</span></h1>
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
                <div class="col-md-11"><input type="text" name="studyCategory" value="${studyVO.studyCategory }" readonly="readonly"></div>
                
                <div class="col-md-1">인원</div>
                <div class="col-md-11"><input type="text" name="studyCurMemCnt" value="${studyVO.studyCurMemCnt }" readonly="readonly"> / <input type="text" name="studyMaxMemCnt" value="${studyVO.studyMaxMemCnt }" readonly="readonly"></div>
                
                <div class="col-md-1">시작날짜</div>
                <div class="col-md-11">
              		<!-- 날짜 형식을 년/월/일로 표시 -->
					<fmt:formatDate value="${studyVO.studyStartDate}" pattern="yyyy-MM-dd" var="date" />
					<input type="text" name="studyStartDate" value="${date }" readonly="readonly">
				</div>
                
                <div class="col-md-1">시간</div>
                <div class="col-md-11">15시 ~ 17시</div>
                
                <div class="col-md-1">지역</div>
                <div class="col-md-11"><input type="text" name="studyRegion" value="${studyVO.studyRegion }" readonly="readonly"></div>
                
                <div class="col-md-1">비용</div>
                <div class="col-md-11"><input type="text" name="studyMemFee" value="${studyVO.studyMemFee }" readonly="readonly"></div>
               
                <div class="col-md-1">일정</div>
                <div class="col-md-11">매주 월요일</div>
               
                <div class="col-md-1">대상</div>
                <div class="col-md-11"><input type="text" name="studyTargetAge" value="${studyVO.studyTargetAge }" readonly="readonly"></div>
               
                <div class="col-md-1">소개글</div>
                <div class="col-md-11"><input type="text" name="studyIntroduce" value="${studyVO.studyIntroduce }" readonly="readonly"></div>

                <button id="modifyBtn" type="submit" class="view-btn">수정</button>
                <button id="deleteBtn" type="submit" class="view-btn">삭제</button>
                
            </div>
        </div>

    </div>
<%@include file="../include/footer.jsp" %> 
