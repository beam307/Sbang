<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>
<div class="container mypage inner">

        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation"><a href="/mypage">개인정보관리</a></li>
            <li role="presentation" class="active"><a href="/studyManage">스터디관리</a></li>
            <li role="presentation"><a href="/roomManage">룸관리</a></li>
        </ul>

        <!-- Tab panes -->
        <div role="tabpanel" class="tab-pane active" id="myinfo">
            <div class="tabpanel-in" role="tabpanel">

                <div role="tabpanel" class="tab-pane" id="study">
                    <div class="tabpanel-in" role="tabpanel">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#bookmark-study" aria-controls="bookmark-study" role="tab" data-toggle="tab">북마크</a></li>
                            <li role="presentation"><a href="#recruitment-study" aria-controls="recruitment-study" role="tab" data-toggle="tab">모집</a></li>
                            <li role="presentation"><a href="#progress-study" aria-controls="progress-study" role="tab" data-toggle="tab">진행</a></li>
                            <li role="presentation"><a href="#complete-study" aria-controls="complete-study" role="tab" data-toggle="tab">완료</a></li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="bookmark-study">
                                <div class="col-md-3">
                                    <div class="thumbnail">북마크스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">북마크스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">북마크스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">북마크스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">북마크스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">북마크스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">북마크스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">북마크스터디썸네일</div>
                                </div>
                                <div class="col-md-12">
                                    <button type="button" class="btn btn-default">더보기</button>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="recruitment-study">
                                <div class="col-md-3">
                                    <div class="thumbnail">모집스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">모집스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">모집스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">모집스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">모집스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">모집스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">모집스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">모집스터디썸네일</div>
                                </div>
                                <div class="col-md-12">
                                    <button type="button" class="btn btn-default">더보기</button>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="progress-study">
                                <div class="col-md-3">
                                    <div class="thumbnail">진행스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">진행스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">진행스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">진행스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">진행스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">진행스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">진행스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">진행스터디썸네일</div>
                                </div>
                                <div class="col-md-12">
                                    <button type="button" class="btn btn-default">더보기</button>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="complete-study">
                                <div class="col-md-3">
                                    <div class="thumbnail">완료스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">완료스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">완료스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">완료스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">완료스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">완료스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">완료스터디썸네일</div>
                                </div>
                                <div class="col-md-3">
                                    <div class="thumbnail">완료스터디썸네일</div>
                                </div>
                                <div class="col-md-12">
                                    <button type="button" class="btn btn-default">더보기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%@include file="../include/footer.jsp" %> 