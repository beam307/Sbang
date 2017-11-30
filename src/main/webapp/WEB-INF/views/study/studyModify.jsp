<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="../include/headerSub.jsp"%>

<style>
.fileDrop {
   width: 80%;
   height: 100px;
   border: 1px dotted gray;
   background-color: lightslategrey;
   margin: auto;
}
</style>

<div class="container write inner">
   <form class="form-horizontal" id="registerForm"
      action="/study/studyModify" method="post">
      
      <!-- 쿼리스트링 값 받아오기 -->
      <input type="hidden" name='page' value="${cri.page }">
      <input type="hidden" name='perPageNum' value="${cri.perPageNum }">
      <input type="hidden" name='searchType' value="${cri.searchType }">
      <input type="hidden" name='keyword' value="${cri.keyword }">      
      <div class="step1">
         <h2>1단계</h2>
         <div class="row">
            <div class="form-group">
               <div class="col-sm-12">
                  <div class="col-md-4">
                     <!-- 카테고리들 체크박스로 바꿔줘용 -->
                     <div class="write-category">
                        <a href="">카테고리</a>
                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="write-category">
                        <a href="">카테고리</a>
                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="write-category">
                        <a href="">카테고리</a>
                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="write-category">
                        <a href="">카테고리</a>
                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="write-category">
                        <a href="">카테고리</a>
                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="write-category">
                        <a href="">카테고리</a>
                     </div>
                  </div>
               </div>
            </div>
            <div class="form-group">
               <label class="col-sm-2 control-label">스터디명</label>
               <div class="col-sm-10">
                  <div class="col-sm-12">
                     <input type="text" class="form-control" name="studyName"
                        value="${studyVO.studyName }">
                  </div>
               </div>
            </div>
            <div class="form-group">
               <label class="col-sm-2 control-label">지역</label>
               <div class="col-sm-10">
                  <div class="col-sm-6 step1-select1">
                     <select class="form-control" name="studyRegion">
                        <option>대분류</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                     </select>
                  </div>
                  <div class="col-sm-6 step1-select2">
                     <select class="form-control" name="studyRegion">
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
            <div class="col-sm-12">
               <button type="button" class="btn btn-default">Next</button>
            </div>
         </div>
      </div>
      <div class="step2">
         <h2>2단계</h2>
         <div class="row">
            <div class="form-group">
               <label class="col-sm-2 control-label">연령층</label>
               <!-- 연령층들 체크박스로 바꿔줘용 -->
               <div class="col-sm-10">
                  <div class="col-md-4">
                     <div class="write-category">
                        <a href="">10대</a>
                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="write-category">
                        <a href="">20대</a>
                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="write-category">
                        <a href="">30대</a>
                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="write-category">
                        <a href="">40대</a>
                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="write-category">
                        <a href="">50대</a>
                     </div>
                  </div>
                  <div class="col-md-4">
                     <div class="write-category">
                        <a href="">60대</a>
                     </div>
                  </div>
               </div>
            </div>
            <div class="form-group">
               <label class="col-sm-2 control-label">시작날짜</label>
               <div class="col-sm-10">
                  <div class="col-sm-12">
                     <!-- 날짜 형식을 년/월/일로 표시 -->
                     <fmt:formatDate value="${studyVO.studyStartDate}"
                        pattern="MM/dd/yyyy" var="date" />
                     <input type="text" id="testDatepicker" class="form-control"
                        name="studyStartDate" value="${date }">
                     <script>
                        $(function() {
                           $("#testDatepicker").datepicker({

                           });
                        });
                     </script>
                  </div>
               </div>
            </div>
            <div class="form-group">
               <label class="col-sm-2 control-label">요일</label>
               <div class="col-sm-10">
                  <div class="col-sm-12">
                     <label class="checkbox-inline"> <input type="checkbox"
                        id="inlineCheckbox1" value="월"> 월
                     </label> <label class="checkbox-inline"> <input type="checkbox"
                        id="inlineCheckbox2" value="화"> 화
                     </label> <label class="checkbox-inline"> <input type="checkbox"
                        id="inlineCheckbox3" value="수"> 수
                     </label> <label class="checkbox-inline"> <input type="checkbox"
                        id="inlineCheckbox4" value="목"> 목
                     </label> <label class="checkbox-inline"> <input type="checkbox"
                        id="inlineCheckbox5" value="금"> 금
                     </label> <label class="checkbox-inline"> <input type="checkbox"
                        id="inlineCheckbox6" value="토"> 토
                     </label> <label class="checkbox-inline"> <input type="checkbox"
                        id="inlineCheckbox7" value="일"> 일
                     </label>
                  </div>
               </div>
            </div>
            <div class="form-group">
               <label class="col-sm-2 control-label">시간</label>
               <div class="col-sm-10 time_box">
                  <input id="timepicker1" type="text" class="form-control"
                     name="timepicker1" />
                  <script>
                     $('#timepicker1').timepicki();
                  </script>
                  <div class="hyphen">~</div>
                  <input id="timepicker2" type="text" class="form-control"
                     name="timepicker1" />
                  <script>
                     $('#timepicker2').timepicki();
                  </script>
               </div>
            </div>
            <div class="form-group">
               <label class="col-sm-2 control-label">비용</label>
               <div class="col-sm-10">
                  <div class="col-sm-12">
                     <input type="text" class="form-control" name="studyMemFee"
                        value="${studyVO.studyMemFee }">
                  </div>
               </div>
            </div>
            <div class="form-group">
               <label class="col-sm-2 control-label">인원수</label>
               <div class="col-sm-10">
                  <div class="col-sm-12">
                     <input type="text" class="form-control" name="studyMaxMemCnt"
                        value="${studyVO.studyMaxMemCnt }">
                  </div>
               </div>
            </div>
            <div class="col-sm-12">
               <button type="button" class="btn btn-default">Next</button>
            </div>
         </div>
      </div>
      <div class="step3">
         <h2>3단계</h2>
         <div class="row">
            <div class="form-group">
               <label class="col-sm-2 control-label">자기소개</label>
               <div class="col-sm-10">
                  <div class="col-sm-12">
                     <textarea class="form-control" rows="10" name="studyIntroduce">${studyVO.studyIntroduce }</textarea>
                  </div>
               </div>
            </div>
            <div class="form-group">
               <label class="col-sm-2 control-label">소개</label>
               <div class="col-sm-10">
                  <div class="col-sm-12">
                     <label for="exampleInputFile">파일 업로드</label> <input type="file"
                        id="exampleInputFile">
                  </div>
               </div>
            </div>
            <div class="col-sm-12">
               <button id="confirmBtn" type="submit" class="btn btn-default">완료</button>
               <button id="cancelBtn" type="button" class="btn btn-default m_r_10">취소</button>
            </div>

         </div>
      </div>
      <!-- 파일 업로드 테스트 해보자!!!  -->
      <div class="form-group">
         <label for="exampleInputEmail">File DROP</label>
         <div class="fileDrop"></div>
      </div>


      <div class="box-footer">
         <div>
            <hr>
         </div>

         <ul class="mailbox-attachments clearfix uploadedList">
         </ul>
      </div>
      <input type="hidden" name='studyNo' value="${studyVO.studyNo }">

   </form>
</div>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<!-- 업로드된 리스트 템플릿  -->
<script id="template" type="text/x-handlebars-template">

   <li>
      <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
      <div class="mailbox-attachment-info">
         <a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
         <a data-src="{{fullName}}"  class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a>
      </div>
   </li>
</script>
<script type="text/javascript" src="/resources/dist/js/upload.js"></script>
<script>
   $(document)
         .ready(
               function() {
                  /* 핸들바 탬플릿 컴파일 */
                  var template = Handlebars
                        .compile($("#template").html());

                  var formObj = $("form[role='form']");

                  console.log(formObj);

                  /* 취소버튼 클릭시  */
                  $("#cancelBtn").on("click", function() {
                	 self.location = "/study/studyList?page=${cri.page}&perPageNum=${cri.perPageNum}&searchType=${cri.searchType}&keyword=${cri.keyword}";
                  });

                  /* 완료버튼 클릭시  */
                  $("#confirmBtn").on("click", function() {
                     formObj.submit();
                  });
                  /*업로드된 이미지 출력  */
                  var studyNo = ${studyVO.studyNo};
                  $.getJSON("/study/getImg/" + studyNo, function(list) {
                     $(list).each(function() {
                        var fileInfo = getFileInfo(this);
                        var html = template(fileInfo);
                        $(".uploadedList").append(html);
                     });
                  });
                  
                  /*파일 드랍시 업로드(ajax)  */
                  $(".fileDrop").on("dragenter dragover",
                        function(event) {
                           event.preventDefault();
                        });

                  $(".fileDrop").on("drop", function(event) {
                     event.preventDefault();

                     var files = event.originalEvent.dataTransfer.files;

                     var file = files[0];

                     //console.log(file);

                     var formData = new FormData();
                     formData.append("file", file);

                     $.ajax({
                        url : '/uploadAjax',
                        data : formData,
                        dataType : 'text',
                        processData : false,
                        contentType : false,
                        type : 'POST',
                        success : function(data) {

                           var fileInfo = getFileInfo(data);

                           var html = template(fileInfo);

                           $(".uploadedList").append(html);
                        }
                     });
                  });
                  
                  /*x버튼 클릭시 로컬에서 파일제거  */
                  $(".uploadedList").on(
                        "click",
                        "a",
                        function(event) {
                           var that = $(this);

                           $.ajax({
                              url : "/deleteFile",
                              type : "post",
                              data : {
                                 fileName : $(this).attr("data-src")
                              },
                              dataType : "text",
                              success : function(result) {
                                 if (result == 'deleted') {
                                    alert("deleted");
                                    that.parent("div").parent("li")
                                          .remove();
                                 }
                              }
                           });
                        });
                  
                  /* 완료 버튼 클릭시 소스 보냄  */
                  $("#registerForm")
                        .submit(
                              function(event) {
                                 event.preventDefault();

                                 var that = $(this);

                                 var str = "";

                                 $(".uploadedList .delbtn")
                                       .each(
                                             function(index) {
                                                str += "<input type='hidden' name='files["
                                                      + index
                                                      + "]' value='"
                                                      + $(
                                                            this)
                                                            .attr(
                                                                  "data-src")
                                                      + "'>";
                                             });
                                 that.append(str);
                                 that.get(0).submit();
                              });
               });
</script>
<%@include file="../include/footer.jsp"%>