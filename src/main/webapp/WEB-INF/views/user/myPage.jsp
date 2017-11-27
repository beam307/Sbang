<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/headerSub.jsp" %>
<div class="container mypage inner">

        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="/mypage">개인정보관리</a></li>
            <li role="presentation"><a href="/studyManage">스터디관리</a></li>
            <li role="presentation"><a href="/roomManage">룸관리</a></li>
        </ul>

        <!-- Tab panes -->
        <div role="tabpanel" class="tab-pane active" id="myinfo">
            <div class="tabpanel-in" role="tabpanel">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#profile" aria-controls="home" role="tab" data-toggle="tab">프로필</a></li>
                    <li role="presentation"><a href="#password" aria-controls="password" role="tab" data-toggle="tab">비밀번호변경</a></li>
                    <li role="presentation"><a href="#withdrawal" aria-controls="withdrawal" role="tab" data-toggle="tab">회원탈퇴</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="profile">
                        <div class="col-xs-12 tab-content-in">
                            <h4>프로필 사진</h4>
                            <div class="col-xs-12">
                                <div class="user-img col-xs-2">
                                    <img src="/resources/images/user.jpg" alt="프로필사진">
                                </div>
                                <div class="col-xs-10 user-img-text">
                                    회원님의 정면 사진을 올려주세요!
                                    <br/> 상대방이 신뢰를 갖고 연락 할 확률이 높아질 거예요.
                                    <br/> ※ 정사각형 사이즈의 사진으로 올려주세요
                                    <p>
                                        <button type="button" class="btn btn-default user-img-upload">사진업로드하기</button>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 tab-content-in">
                            <h4>계정정보</h4>
                            <form class="form-horizontal">
                                <div class="form-group">
                                    <label for="id" class="col-sm-2 control-label">아이디</label>
                                    <div class="col-sm-10 m_t_5">
                                        아이디가 들어갑니다.
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="id" class="col-sm-2 control-label">이름</label>
                                    <div class="col-sm-10 m_t_5">
                                        김찬희
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="id" class="col-sm-2 control-label">전화번호</label>
                                    <div class="col-sm-10 m_t_5">
                                        <input type="text" class="form-control" value="010-1234-5678">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="id" class="col-sm-2 control-label">메일</label>
                                    <div class="col-sm-10 m_t_5">
                                        <input type="text" class="form-control" value="abcd@naver.com">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="id" class="col-sm-2 control-label">생년월일</label>
                                    <div class="col-sm-10 m_t_5">
                                        1993.10.04
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-default f_right">저장하기</button>
                            </form>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="password">
                        <div class="col-xs-12 tab-content-in">
                            <h4>비밀번호변경</h4>
                            <form class="form-horizontal">
                                <div class="form-group">
                                    <label for="id" class="col-sm-2 control-label">전화번호</label>
                                    <div class="col-sm-10 m_t_5">
                                        <input type="password" class="form-control" value="123456789">
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-default f_right">변경하기</button>
                            </form>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="withdrawal">
                        <div class="col-xs-12 tab-content-in">
                            <h4>비밀번호변경</h4>
                            <form>
                                <div class="form-group">
                                    <label for="id" class="col-sm-12 control-label">정말 탈퇴하시겠습니까?</label>
                                    <div class="col-sm-12 m_t_5">
                                        <button type="submit" class="btn btn-default">탈퇴하기</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
<%@include file="../include/footer.jsp" %> 
