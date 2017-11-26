<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="include/header.jsp" %>
<!-- 메인검색부분 -->
    <div class="main-search">
        <form class="form-inline">
            <div class="form-group">
                <input type="text" class="form-control" id="searchbox" placeholder="검색어입력하는곳">
            </div>
            <button type="submit" class="btn btn-default">검색</button>
        </form>
    </div>
    <!-- 밑에는 썸네일부분이야 -->
    <div class="container list-thumbnail">
        <h1>스터디목록</h1>
        <div class="study-thumbnail">
            <div class="row">
                <div class="col-md-4 thumbnail">스터디썸네일</div>
                <div class="col-md-4 thumbnail">스터디썸네일</div>
                <div class="col-md-4 thumbnail">스터디썸네일</div>
                <div class="col-md-4 thumbnail">스터디썸네일</div>
                <div class="col-md-4 thumbnail">스터디썸네일</div>
                <div class="col-md-4 thumbnail">스터디썸네일</div>
                <div><a href="/list">더보기</a></div>
            </div>
        </div>
        <h1>방목록</h1>
        <div class="study-thumbnail">
            <div class="row">
                <div class="col-md-4 thumbnail">방썸네일</div>
                <div class="col-md-4 thumbnail">방썸네일</div>
                <div class="col-md-4 thumbnail">방썸네일</div>
                <div class="col-md-4 thumbnail">방썸네일</div>
                <div class="col-md-4 thumbnail">방썸네일</div>
                <div class="col-md-4 thumbnail">방썸네일</div>
                <div><a href="/list">더보기</a></div>
            </div>
        </div>
    </div>
<%@include file="include/footer.jsp" %>