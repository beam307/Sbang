<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- 초기화 css -->
    <link href="/resources/dist/css/setting.css" rel="stylesheet">
    <!-- 메인 css -->
    <link href="/resources/dist/css/main.css" rel="stylesheet">
    <!-- 서브 css -->
    <link href="/resources/dist/css/sub.css" rel="stylesheet">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    
</head>

<body>
    <header>
        <!-- 밑에는 로고랑 메뉴부분이야-->
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/">로고</a>
                </div>
				<!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <!-- Button trigger modal -->
                            <a class="" data-toggle="modal" href="#login">로그인</a>

                            <!-- 로그인 모달창 --> 
                            <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="login-modal-title" id="loginModalLabel">로그인</h4>
                                        </div>
                                        <div class="modal-body">
                                            <a href="" class="google-login">구글계정으로로그인</a>
                                            <a href="" class="naver-login">네이버계정으로로그인</a>
                                            <form>
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">이메일 주소</label>
                                                    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="이메일을 입력하세요">
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputPassword1">암호</label>
                                                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="암호">
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox"> 아이디저장
                                                    </label>
                                                    <label>
                                                        <input type="checkbox"> 자동로그인
                                                    </label>
                                                </div>

                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                                                    <button type="submit" class="btn btn-primary">로그인</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <!-- Button trigger modal -->
                            <a class="" data-toggle="modal" href="#join">회원가입</a>

                            <!-- 회원가입 모달창 -->
                            <div class="modal fade" id="join" tabindex="-1" role="dialog" aria-labelledby="joinModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="join-modal-title" id="myModalLabel">회원가입</h4>
                                        </div>
                                        <div class="modal-body">
                                            <form action="" method="post"> <!-- 회원가입 값 -->
                                                <div class="form-group">
                                                    <label for="InputName">이름</label>
                                                    <input type="name" class="form-control" id="InputName" placeholder="실명을 입력하세요">
                                                </div>
                                                <div class="form-group">
                                                    <label for="InputEmail">이메일 주소</label>
                                                    <input type="email" class="form-control" id="InputEmail" placeholder="사용하시는 이메일을 입력하세요">
                                                </div>
                                                <div class="form-group">
                                                    <label for="InputPassword">비밀번호</label>
                                                    <input type="password" class="form-control" id="InputPassword" placeholder="비밀번호를 입력하세요">
                                                </div>
                                                <div class="form-group">
                                                    <label for="InputBirthday">생년월일</label>
                                                    <input type="birthday" class="form-control" id="InputBirthday" placeholder="ex.990101">
                                                </div>
                                                <div class="form-group">
                                                    <label for="InputGender">성별</label>
                                                    <div class="radio">
                                                        <label>
                                                            <input type="radio" name="genderRadio" id="genderRadio1" value="option1" aria-label="남성"> 남성
                                                        </label>
                                                        <label>
                                                            <input type="radio" name="genderRadio" id="genderRadio2" value="option2" aria-label="여성"> 여성
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="InputGender">전화번호</label>
                                                    <div class="row">
                                                        <div class="col-xs-2">
                                                            <input type="text" class="form-control" placeholder="010">
                                                        </div>
                                                        <div class="col-xs-1">
                                                            -
                                                        </div>
                                                        <div class="col-xs-2">
                                                            <input type="text" class="form-control" placeholder="0000">
                                                        </div>
                                                        <div class="col-xs-1">
                                                            -
                                                        </div>
                                                        <div class="col-xs-2">
                                                            <input type="text" class="form-control" placeholder="0000">
                                                        </div>
                                                        <div class="col-xs-3">
                                                            <button type="button" class="btn btn-default">인증하기</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                                            <button type="submit" class="btn btn-primary">회원가입</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li><a href="/studyReg">스터디등록</a></li>
                        <li><a href="#">방등록</a></li>
                        <li><a href="#">공지사항</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
                
				<c:if test ="true"> <!-- 로그인 후 -->
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/mypage">마이페이지</a></li>
                        <li><a href="#">로그아웃</a></li>
                        <li><a href="#">1:1문의</a></li>
                        <li><a href="#">공지사항</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
                </c:if>
            </div>
            <!-- /.container-fluid -->
        </nav>
        <!-- 카테고리 -->
        <div class="category container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="row">
                        <div class="col-md-2"><a href="">카테고리</a></div>
                        <div class="col-md-2"><a href="">카테고리</a></div>
                        <div class="col-md-2"><a href="">카테고리</a></div>
                        <div class="col-md-2"><a href="">카테고리</a></div>
                        <div class="col-md-2"><a href="">카테고리</a></div>
                        <div class="col-md-2"><a href="">카테고리</a></div>
                    </div>
                </div>
            </div>
        </div>
    </header>
