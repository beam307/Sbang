<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="include/header.jsp" %>
<div class="container mypage">
        <div class="tabpanel" role="tabpanel">

            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#myinfo" aria-controls="myinfo" role="tab" data-toggle="tab">개인정보관리</a></li>
                <li role="presentation"><a href="#study" aria-controls="study" role="tab" data-toggle="tab">스터디관리</a></li>
                <li role="presentation"><a href="#room" aria-controls="room" role="tab" data-toggle="tab">룸관리</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
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
                                            <img src="images/user.jpg" alt="프로필사진">
                                        </div>
                                        <div class="col-xs-10 user-img-text">
                                            회원님의 정면 사진을 올려주세요!
                                            <br/> 상대방이 신뢰를 갖고 연락 할 확률이 높아질 거예요.
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
                            <div role="tabpanel" class="tab-pane active" id="bookmark-study">
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
                            <div role="tabpanel" class="tab-pane" id="recruitment-study">
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
                            <div role="tabpanel" class="tab-pane" id="progress-study">
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
                            <div role="tabpanel" class="tab-pane" id="complete-study">
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

        </div>
    </div>
<%@include file="include/footer.jsp" %> 
