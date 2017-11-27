<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>
<div class="container mypage inner">

        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation"><a href="/mypage">개인정보관리</a></li>
            <li role="presentation"><a href="/studyManage">스터디관리</a></li>
            <li role="presentation" class="active"><a href="/roomManage">룸관리</a></li>
        </ul>


        <div role="tabpanel" class="tab-pane" id="room">
            <div class="tabpanel-in" role="tabpanel">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#bookmark-room" aria-controls="bookmark-room" role="tab" data-toggle="tab">북마크</a></li>
                    <li role="presentation"><a href="#recruitment-room" aria-controls="recruitment-room" role="tab" data-toggle="tab">모집</a></li>
                    <li role="presentation"><a href="#progress-room" aria-controls="progress-room" role="tab" data-toggle="tab">진행</a></li>
                    <li role="presentation"><a href="#complete-room" aria-controls="complete-room" role="tab" data-toggle="tab">완료</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="bookmark-room">
                        <div class="col-md-3">
                            <div class="thumbnail">북마크룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">북마크룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">북마크룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">북마크룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">북마크룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">북마크룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">북마크룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">북마크룸썸네일</div>
                        </div>
                        <div class="col-md-12">
                            <button type="button" class="btn btn-default">더보기</button>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="recruitment-room">
                        <div class="col-md-3">
                            <div class="thumbnail">모집룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">모집룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">모집룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">모집룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">모집룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">모집룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">모집룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">모집룸썸네일</div>
                        </div>
                        <div class="col-md-12">
                            <button type="button" class="btn btn-default">더보기</button>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="progress-room">
                        <div class="col-md-3">
                            <div class="thumbnail">진행룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">진행룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">진행룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">진행룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">진행룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">진행룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">진행룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">진행룸썸네일</div>
                        </div>
                        <div class="col-md-12">
                            <button type="button" class="btn btn-default">더보기</button>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="complete-room">
                        <div class="col-md-3">
                            <div class="thumbnail">완료룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">완료룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">완료룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">완료룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">완료룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">완료룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">완료룸썸네일</div>
                        </div>
                        <div class="col-md-3">
                            <div class="thumbnail">완료룸썸네일</div>
                        </div>
                        <div class="col-md-12">
                            <button type="button" class="btn btn-default">더보기</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%@include file="../include/footer.jsp" %> 
