<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>스방</title>

<!-- 부트스트랩 -->
<link href="/resources/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- 폰트어썸 -->
<link href="/resources/dist/css/font-awesome.min.css" rel="stylesheet">
<!-- 초기화 css -->
<link href="/resources/dist/css/setting.css" rel="stylesheet">
<!-- 메인 css -->
<link href="/resources/dist/css/main.css" rel="stylesheet">
<!-- 서브 css -->
<link href="/resources/dist/css/sub.css" rel="stylesheet">
<!-- jQuery-Ui css-->
<link href="/resources/dist/css/jquery-ui.css" rel="stylesheet">
<!-- timepicki css -->
<link href="/resources/dist/css/timepicki.css" rel="stylesheet">
<!-- jQuery -->
<script src="/resources/dist/js/jquery.js"></script>
<!-- jQUery-Ui -->
<script src="/resources/dist/js/jquery-ui.js"></script>
<!--  부트스트랩 -->
<script src="/resources/dist/js/bootstrap.min.js"></script>
<!-- 메인 -->
<script src="/resources/dist/js/main.js"></script>
<!-- 시간 -->
<script src="/resources/dist/js/timepicki.js"></script>

<!--[if lt IE 9]>
	    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<script>
	$(document).ready(function() {
		var category = [ "영어", "IT", "교양", "외국어", "공무원", "자격증" ];

		$("#searchBox").autocomplete({
			source : category
		});

		var result = '${msg}';
		if (result == 'regSuccess')
			alert("회원가입 완료");
	});
</script>
</head>

<body>
	<header>
		<!-- 밑에는 로고랑 메뉴부분 -->
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/">로고</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

					<ul class="nav navbar-nav navbar-right">
						<c:if test="${empty login}">
							<!-- 로그인 안됐을 경우(로그인세션이 비울 경우) -->
							<li><a href="/login/loginGet">로그인</a></li>
							<li><a href="/user/regUser">회원가입</a></li>
						</c:if>
						<c:if test="${not empty login}">
							<!-- 로그인된 경우(로그인세션이 있을 경우) -->
							<li><a href="/user/myPage">마이페이지</a></li>
							<li><a href="/login/logout">로그아웃</a></li>
							<li><a href="/board/onenone">1:1문의</a></li>
						</c:if>
						<li><a href="/study/studyReg">스터디등록</a></li>
						<li><a href="#">방등록</a></li>
						<li><a href="/board/notice">공지사항</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		<!-- 카테고리 -->
		<div class="category container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<div class="row">
						<div class="col-md-2">
							<a href="#">영어</a>
						</div>
						<div class="col-md-2">
							<a href="#">외국어</a>
						</div>
						<div class="col-md-2">
							<a href="#">IT</a>
						</div>
						<div class="col-md-2">
							<a href="#">교양</a>
						</div>
						<div class="col-md-2">
							<a href="#">공무원</a>
						</div>
						<div class="col-md-2">
							<a href="#">자격증</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>