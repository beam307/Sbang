<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="include/header.jsp" %>


<!-- 메인검색부분 -->
    <div class="main-search">
    
    <script>
	var availableTags = [
							'영어', '외국어', '컴퓨터', '교양'
						];
	</script>
        <form class="form-inline">
            <div class="form-group">
                <input type="text" id = "searchbox" class="form-control" placeholder="검색어입력하는곳">
            </div>
            <button type="submit" id = "submit" class="btn btn-default">검색</button>
        </form>
        
        	<script>
	$(document).ready(function() {
	    $("#searchbox").autocomplete(availableTags,{ 
	        matchContains: false,
	        selectFirst: false
	    });
	});
	</script>
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
