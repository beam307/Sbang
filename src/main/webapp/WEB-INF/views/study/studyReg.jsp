<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/headerSub.jsp"%>

<style>
.fileDrop {
	width: 100%;
	height: 100px;
	border: 1px dotted gray;
	background-color: lightslategrey;
	margin: auto;
}
</style>

<div class="container write inner">
	<form class="form-horizontal" id="registerForm"
		action="/study/studyReg" method="post">
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
					
					<!-- 카테고리 테스트용  -->
					<div class="col-sm-12">
	                    <div class="question-answer">
	
	                        <div class="row">
	                            <div class="container" style="padding:0;">
	                                <div class="flex-container">
	                                    
	                                    <div class="box header CA00">
	                                        <div class="content collapsed" data-toggle="collapse" href="#CA00">
	                                            영어
	                                        </div>
	                                    </div>
	                                    <div class="box list collapse" id="CA00">
	                                        <div class="content">
	                                            
	
	                                            <input id="CA00_00" type="checkbox" name="studyCategory" value="토익" />
	                                            <label class="midCategoryBox" for="CA00_00"># 토익</label>
	
	                                            
	
	                                            <input id="CA00_01" type="checkbox" name="studyCategory" value="토플" />
	                                            <label class="midCategoryBox" for="CA00_01"># 토플</label>
	
	                                            
	
	                                            <input id="CA00_02" type="checkbox" name="studyCategory" value="텝스" />
	                                            <label class="midCategoryBox" for="CA00_02"># 텝스</label>
	
	                                            
	
	                                            <input id="CA00_03" type="checkbox" name="studyCategory" value="토스/오픽" />
	                                            <label class="midCategoryBox" for="CA00_03"># 토스/오픽</label>
	
	                                            
	
	                                            <input id="CA00_04" type="checkbox" name="studyCategory" value="영어회화" />
	                                            <label class="midCategoryBox" for="CA00_04"># 영어회화</label>
	
	                                            
	
	                                            <input id="CA00_05" type="checkbox" name="studyCategory" value="작문/독해" />
	                                            <label class="midCategoryBox" for="CA00_05"># 작문/독해</label>
	
	                                            
	
	                                            <input id="CA00_06" type="checkbox" name="studyCategory" value="미드정복" />
	                                            <label class="midCategoryBox" for="CA00_06"># 미드정복</label>
	
	                                            
	
	                                            <input id="CA00_07" type="checkbox" name="studyCategory" value="영어기타" />
	                                            <label class="midCategoryBox" for="CA00_07"># 영어 기타</label>
	
	                                            
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="box header CA01">
	                                        <div class="content collapsed" data-toggle="collapse" href="#CA01">
	                                            외국어
	                                        </div>
	                                    </div>
	                                    <div class="box list collapse" id="CA01">
	                                        <div class="content">
	                                            
	
	                                            <input id="CA01_00" type="checkbox" name="studyCategory" value="중국어" />
	                                            <label class="midCategoryBox" for="CA01_00"># 중국어</label>
	
	                                            
	
	                                            <input id="CA01_01" type="checkbox" name="studyCategory" value="일본어" />
	                                            <label class="midCategoryBox" for="CA01_01"># 일본어</label>
	
	                                            
	
	                                            <input id="CA01_02" type="checkbox" name="studyCategory" value="독일어" />
	                                            <label class="midCategoryBox" for="CA01_02"># 독일어</label>
	
	                                            
	
	                                            <input id="CA01_03" type="checkbox" name="studyCategory" value="아랍어" />
	                                            <label class="midCategoryBox" for="CA01_03"># 아랍어</label>
	
	                                            
	
	                                            <input id="CA01_07" type="checkbox" name="studyCategory" value="프랑스어" />
	                                            <label class="midCategoryBox" for="CA01_07"># 프랑스어</label>
	
	                                            
	
	                                            <input id="CA01_05" type="checkbox" name="studyCategory" value="스페인어" />
	                                            <label class="midCategoryBox" for="CA01_05"># 스페인어</label>
	
	                                            
	
	                                            <input id="CA01_06" type="checkbox" name="studyCategory" value="러시아어" />
	                                            <label class="midCategoryBox" for="CA01_06"># 러시아어</label>
	
	                                            
	
	                                            <input id="CA01_08" type="checkbox" name="studyCategory" value="베트남어" />
	                                            <label class="midCategoryBox" for="CA01_08"># 베트남어</label>
	
	                                            
	
	                                            <input id="CA01_04" type="checkbox" name="studyCategory" value="태국어" />
	                                            <label class="midCategoryBox" for="CA01_04"># 태국어</label>
	
	                                            
	
	                                            <input id="CA01_09" type="checkbox" name="studyCategory" value="외국어기타" />
	                                            <label class="midCategoryBox" for="CA01_09"># 외국어 기타</label>
	
	                                            
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="box header CA02">
	                                        <div class="content collapsed" data-toggle="collapse" href="#CA02">
	                                            컴퓨터
	                                        </div>
	                                    </div>
	                                    <div class="box list collapse" id="CA02">
	                                        <div class="content">
	                                            
	
	                                            <input id="CA02_00" type="checkbox" name="studyCategory" value="응용프로그래밍" />
	                                            <label class="midCategoryBox" for="CA02_00"># 응용프로그래밍</label>
	
	                                            
	
	                                            <input id="CA02_01" type="checkbox" name="studyCategory" value="웹프로그래밍" />
	                                            <label class="midCategoryBox" for="CA02_01"># 웹프로그래밍</label>
	
	                                            
	
	                                            <input id="CA02_02" type="checkbox" name="studyCategory" value="모바일프로그래밍" />
	                                            <label class="midCategoryBox" for="CA02_02"># 모바일프로그래밍</label>
	
	                                            
	
	                                            <input id="CA02_03" type="checkbox" name="studyCategory" value="데이터베이스/서버" />
	                                            <label class="midCategoryBox" for="CA02_03"># 데이터베이스/서버</label>
	
	                                            
	
	                                            <input id="CA02_04" type="checkbox" name="studyCategory" value="게임프로그래밍" />
	                                            <label class="midCategoryBox" for="CA02_04"># 게임프로그래밍</label>
	
	                                            
	
	                                            <input id="CA02_05" type="checkbox" name="studyCategory" value="문서작성/편집" />
	                                            <label class="midCategoryBox" for="CA02_05"># 문서작성/편집</label>
	
	                                            
	
	                                            <input id="CA02_06" type="checkbox" name="studyCategory" value="컴퓨터자격증" />
	                                            <label class="midCategoryBox" for="CA02_06"># 컴퓨터자격증</label>
	
	                                            
	
	                                            <input id="CA02_07" type="checkbox" name="studyCategory" value="사물인터넷" />
	                                            <label class="midCategoryBox" for="CA02_07"># 사물인터넷</label>
	
	                                            
	
	                                            <input id="CA02_08" type="checkbox" name="studyCategory" value="하드웨어" />
	                                            <label class="midCategoryBox" for="CA02_08"># 하드웨어</label>
	
	                                            
	
	                                            <input id="CA02_09" type="checkbox" name="studyCategory" value="컴퓨터기타" />
	                                            <label class="midCategoryBox" for="CA02_09"># 컴퓨터 기타</label>
	
	                                            
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="box header CA03">
	                                        <div class="content collapsed" data-toggle="collapse" href="#CA03">
	                                            디자인/미술
	                                        </div>
	                                    </div>
	                                    <div class="box list collapse" id="CA03">
	                                        <div class="content">
	                                            
	
	                                            <input id="CA03_00" type="checkbox" name="studyCategory" value="웹/모바일디자인" />
	                                            <label class="midCategoryBox" for="CA03_00"># 웹/모바일디자인</label>
	
	                                            
	
	                                            <input id="CA03_01" type="checkbox" name="studyCategory" value="일러스트/삽화" />
	                                            <label class="midCategoryBox" for="CA03_01"># 일러스트/삽화</label>
	
	                                            
	
	                                            <input id="CA03_03" type="checkbox" name="studyCategory" value="만화/웹툰" />
	                                            <label class="midCategoryBox" for="CA03_03"># 만화/웹툰</label>
	
	                                            
	
	                                            <input id="CA03_04" type="checkbox" name="studyCategory" value="편집디자인" />
	                                            <label class="midCategoryBox" for="CA03_04"># 편집디자인</label>
	
	                                            
	
	                                            <input id="CA03_05" type="checkbox" name="studyCategory" value="패션디자인" />
	                                            <label class="midCategoryBox" for="CA03_05"># 패션디자인</label>
	
	                                            
	
	                                            <input id="CA03_02" type="checkbox" name="studyCategory" value="광고/영상" />
	                                            <label class="midCategoryBox" for="CA03_02"># 광고/영상</label>
	
	                                            
	
	                                            <input id="CA03_06" type="checkbox" name="studyCategory" value="3D/VFX" />
	                                            <label class="midCategoryBox" for="CA03_06"># 3D/VFX</label>
	
	                                            
	
	                                            <input id="CA03_07" type="checkbox" name="studyCategory" value="도예/세라믹" />
	                                            <label class="midCategoryBox" for="CA03_07"># 도예/세라믹</label>
	
	                                            
	
	                                            <input id="CA03_08" type="checkbox" name="studyCategory" value="캘리그라피" />
	                                            <label class="midCategoryBox" for="CA03_08"># 캘리그라피</label>
	
	                                            
	
	                                            <input id="CA03_09" type="checkbox" name="studyCategory" value="디자인기타" />
	                                            <label class="midCategoryBox" for="CA03_09"># 디자인 기타</label>
	
	                                            
	
	                                            <input id="CA03_10" type="checkbox" name="studyCategory" value="회화" />
	                                            <label class="midCategoryBox" for="CA03_10"># 회화</label>
	
	                                            
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="box header CA04">
	                                        <div class="content collapsed" data-toggle="collapse" href="#CA04">
	                                            국가고시/공무원
	                                        </div>
	                                    </div>
	                                    <div class="box list collapse" id="CA04">
	                                        <div class="content">
	                                            
	
	                                            <input id="CA04_00" type="checkbox" name="studyCategory" value="행정" />
	                                            <label class="midCategoryBox" for="CA04_00"># 행정</label>
	
	                                            
	
	                                            <input id="CA04_01" type="checkbox" name="studyCategory" value="교육" />
	                                            <label class="midCategoryBox" for="CA04_01"># 교육</label>
	
	                                            
	
	                                            <input id="CA04_02" type="checkbox" name="studyCategory" value="경찰" />
	                                            <label class="midCategoryBox" for="CA04_02"># 경찰</label>
	
	                                            
	
	                                            <input id="CA04_03" type="checkbox" name="studyCategory" value="소방" />
	                                            <label class="midCategoryBox" for="CA04_03"># 소방</label>
	
	                                            
	
	                                            <input id="CA04_04" type="checkbox" name="studyCategory" value="의료/보건" />
	                                            <label class="midCategoryBox" for="CA04_04"># 의료/보건</label>
	
	                                            
	
	                                            <input id="CA04_05" type="checkbox" name="studyCategory" value="사법" />
	                                            <label class="midCategoryBox" for="CA04_05"># 사법</label>
	
	                                            
	
	                                            <input id="CA04_06" type="checkbox" name="studyCategory" value="기술" />
	                                            <label class="midCategoryBox" for="CA04_06"># 기술</label>
	
	                                            
	
	                                            <input id="CA04_09" type="checkbox" name="studyCategory" value="공무원기타" />
	                                            <label class="midCategoryBox" for="CA04_09"># 공무원 기타</label>
	
	                                            
	
	                                            <input id="CA04_07" type="checkbox" name="studyCategory" value="회계" />
	                                            <label class="midCategoryBox" for="CA04_07"># 회계</label>
	
	                                            
	
	                                            <input id="CA04_08" type="checkbox" name="studyCategory" value="국방" />
	                                            <label class="midCategoryBox" for="CA04_08"># 국방</label>
	
	                                            
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="box header CA05">
	                                        <div class="content collapsed" data-toggle="collapse" href="#CA05">
	                                            취업
	                                        </div>
	                                    </div>
	                                    <div class="box list collapse" id="CA05">
	                                        <div class="content">
	                                            
	
	                                            <input id="CA05_00" type="checkbox" name="studyCategory" value="자소서/면접" />
	                                            <label class="midCategoryBox" for="CA05_00"># 자소서/면접</label>
	
	                                            
	
	                                            <input id="CA05_01" type="checkbox" name="studyCategory" value="인적성" />
	                                            <label class="midCategoryBox" for="CA05_01"># 인적성</label>
	
	                                            
	
	                                            <input id="CA05_02" type="checkbox" name="studyCategory" value="스피치" />
	                                            <label class="midCategoryBox" for="CA05_02"># 스피치</label>
	
	                                            
	
	                                            <input id="CA05_03" type="checkbox" name="studyCategory" value="자격증" />
	                                            <label class="midCategoryBox" for="CA05_03"># 자격증</label>
	
	                                            
	
	                                            <input id="CA05_04" type="checkbox" name="studyCategory" value="기업공채" />
	                                            <label class="midCategoryBox" for="CA05_04"># 기업공채</label>
	
	                                            
	
	                                            <input id="CA05_05" type="checkbox" name="studyCategory" value="공모전/대외활동" />
	                                            <label class="midCategoryBox" for="CA05_05"># 공모전/대외활동</label>
	
	                                            
	
	                                            <input id="CA05_06" type="checkbox" name="studyCategory" value="창업/스타트업" />
	                                            <label class="midCategoryBox" for="CA05_06"># 창업/스타트업</label>
	
	                                            
	
	                                            <input id="CA05_07" type="checkbox" name="studyCategory" value="취업기타" />
	                                            <label class="midCategoryBox" for="CA05_07"># 취업 기타</label>
	
	                                            
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="box header CA06">
	                                        <div class="content collapsed" data-toggle="collapse" href="#CA06">
	                                            음악/공연
	                                        </div>
	                                    </div>
	                                    <div class="box list collapse" id="CA06">
	                                        <div class="content">
	                                            
	
	                                            <input id="CA06_00" type="checkbox" name="studyCategory" value="기타/우쿠렐라" />
	                                            <label class="midCategoryBox" for="CA06_00"># 기타/우쿠렐라</label>
	
	                                            
	
	                                            <input id="CA06_01" type="checkbox" name="studyCategory" value="피아노/키보드" />
	                                            <label class="midCategoryBox" for="CA06_01"># 피아노/키보드</label>
	
	                                            
	
	                                            <input id="CA06_02" type="checkbox" name="studyCategory" value="보컬/음악이론" />
	                                            <label class="midCategoryBox" for="CA06_02"># 보컬/음악이론</label>
	
	                                            
	
	                                            <input id="CA06_03" type="checkbox" name="studyCategory" value="작사/작곡" />
	                                            <label class="midCategoryBox" for="CA06_03"># 작사/작곡</label>
	
	                                            
	
	                                            <input id="CA06_04" type="checkbox" name="studyCategory" value="밴드" />
	                                            <label class="midCategoryBox" for="CA06_04"># 밴드</label>
	
	                                            
	
	                                            <input id="CA06_05" type="checkbox" name="studyCategory" value="국악" />
	                                            <label class="midCategoryBox" for="CA06_05"># 국악</label>
	
	                                            
	
	                                            <input id="CA06_06" type="checkbox" name="studyCategory" value="연기/연극/뮤지컬" />
	                                            <label class="midCategoryBox" for="CA06_06"># 연기/연극/뮤지컬</label>
	
	                                            
	
	                                            <input id="CA06_07" type="checkbox" name="studyCategory" value="댄스무용" />
	                                            <label class="midCategoryBox" for="CA06_07"># 댄스무용</label>
	
	                                            
	
	                                            <input id="CA06_08" type="checkbox" name="studyCategory" value="진행/행사" />
	                                            <label class="midCategoryBox" for="CA06_08"># 진행/행사</label>
	
	                                            
	
	                                            <input id="CA06_09" type="checkbox" name="studyCategory" value="마술" />
	                                            <label class="midCategoryBox" for="CA06_09"># 마술</label>
	
	                                            
	
	                                            <input id="CA06_10" type="checkbox" name="studyCategory" value="음악/공연기타" />
	                                            <label class="midCategoryBox" for="CA06_10"># 음악/공연 기타</label>
	
	                                            
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="box header CA07">
	                                        <div class="content collapsed" data-toggle="collapse" href="#CA07">
	                                            스포츠
	                                        </div>
	                                    </div>
	                                    <div class="box list collapse" id="CA07">
	                                        <div class="content">
	                                            
	
	                                            <input id="CA07_00" type="checkbox" name="studyCategory" value="축구" />
	                                            <label class="midCategoryBox" for="CA07_00"># 축구</label>
	
	                                            
	
	                                            <input id="CA07_01" type="checkbox" name="studyCategory" value="야구" />
	                                            <label class="midCategoryBox" for="CA07_01"># 야구</label>
	
	                                            
	
	                                            <input id="CA07_02" type="checkbox" name="studyCategory" value="농구" />
	                                            <label class="midCategoryBox" for="CA07_02"># 농구</label>
	
	                                            
	
	                                            <input id="CA07_03" type="checkbox" name="studyCategory" value="테니스" />
	                                            <label class="midCategoryBox" for="CA07_03"># 테니스</label>
	
	                                            
	
	                                            <input id="CA07_04" type="checkbox" name="studyCategory" value="배드민턴" />
	                                            <label class="midCategoryBox" for="CA07_04"># 배드민턴</label>
	
	                                            
	
	                                            <input id="CA07_05" type="checkbox" name="studyCategory" value="골프" />
	                                            <label class="midCategoryBox" for="CA07_05"># 골프</label>
	
	                                            
	
	                                            <input id="CA07_06" type="checkbox" name="studyCategory" value="등산" />
	                                            <label class="midCategoryBox" for="CA07_06"># 등산</label>
	
	                                            
	
	                                            <input id="CA07_07" type="checkbox" name="studyCategory" value="수영" />
	                                            <label class="midCategoryBox" for="CA07_07"># 수영</label>
	
	                                            
	
	                                            <input id="CA07_08" type="checkbox" name="studyCategory" value="자전거" />
	                                            <label class="midCategoryBox" for="CA07_08"># 자전거</label>
	
	                                            
	
	                                            <input id="CA07_09" type="checkbox" name="studyCategory" value="스케이트/보드" />
	                                            <label class="midCategoryBox" for="CA07_09"># 스케이트/보드</label>
	
	                                            
	
	                                            <input id="CA07_10" type="checkbox" name="studyCategory" value="요가/에어로빅" />
	                                            <label class="midCategoryBox" for="CA07_10"># 요가/에어로빅</label>
	
	                                            
	
	                                            <input id="CA07_11" type="checkbox" name="studyCategory" value="헬스/다이어트" />
	                                            <label class="midCategoryBox" for="CA07_11"># 헬스/다이어트</label>
	
	                                            
	
	                                            <input id="CA07_12" type="checkbox" name="studyCategory" value="무예/무술" />
	                                            <label class="midCategoryBox" for="CA07_12"># 무예/무술</label>
	
	                                            
	
	                                            <input id="CA07_13" type="checkbox" name="studyCategory" value="시즌스포츠" />
	                                            <label class="midCategoryBox" for="CA07_13"># 시즌스포츠</label>
	
	                                            
	
	                                            <input id="CA07_14" type="checkbox" name="studyCategory" value="스포츠기타" />
	                                            <label class="midCategoryBox" for="CA07_14"># 스포츠 기타</label>
	
	                                            
	                                        </div>
	                                    </div>
	                                    
	                                    <div class="box header CA08">
	                                        <div class="content collapsed" data-toggle="collapse" href="#CA08">
	                                            뷰티/미용
	                                        </div>
	                                    </div>
	                                    <div class="box list collapse" id="CA08">
	                                        <div class="content">
	                                            
	
	                                            <input id="CA08_00" type="checkbox" name="studyCategory" value="헤어" />
	                                            <label class="midCategoryBox" for="CA08_00"># 헤어</label>
	
	                                            
	
	                                            <input id="CA08_01" type="checkbox" name="studyCategory" value="마사지" />
	                                            <label class="midCategoryBox" for="CA08_01"># 마사지</label>
	
	                                            
	
	                                            <input id="CA08_02" type="checkbox" name="studyCategory" value="네일아트" />
	                                            <label class="midCategoryBox" for="CA08_02"># 네일아트</label>
	
	                                            
	
	                                            <input id="CA08_03" type="checkbox" name="studyCategory" value="피부관리" />
	                                            <label class="midCategoryBox" for="CA08_03"># 피부관리</label>
	
	                                            
	
	                                            <input id="CA08_04" type="checkbox" name="studyCategory" value="메이크업" />
	                                            <label class="midCategoryBox" for="CA08_04"># 메이크업</label>
	
	                                            
	
	                                            <input id="CA08_05" type="checkbox" name="studyCategory" value="반영구메이크업" />
	                                            <label class="midCategoryBox" for="CA08_05"># 반영구 메이크업</label>
	
	                                            
	
	                                            <input id="CA08_06" type="checkbox" name="studyCategory" value="스타일/코디" />
	                                            <label class="midCategoryBox" for="CA08_06"># 스타일/코디</label>
	
	                                            
	
	                                            <input id="CA08_07" type="checkbox" name="studyCategory" value="뷰티/미용기타" />
	                                            <label class="midCategoryBox" for="CA08_07"># 뷰티/미용 기타</label>
	
	                                            
	                                        </div>
	                                    </div>

	                                    <div class="box header CA09">
	                                        <div class="content collapsed" data-toggle="collapse" href="#CA09">
	                                            라이프스타일
	                                        </div>
	                                    </div>
	                                    <div class="box list collapse" id="CA09">
	                                        <div class="content">
	                                            
	
	                                            <input id="CA09_00" type="checkbox" name="studyCategory" value="육아" />
	                                            <label class="midCategoryBox" for="CA09_00"># 육아</label>
	
	                                            
	
	                                            <input id="CA09_05" type="checkbox" name="studyCategory" value="사주/타로" />
	                                            <label class="midCategoryBox" for="CA09_05"># 사주/타로</label>
	
	                                            
	
	                                            <input id="CA09_06" type="checkbox" name="studyCategory" value="독서/글쓰기" />
	                                            <label class="midCategoryBox" for="CA09_06"># 독서/글쓰기</label>
	
	                                                
	
	                                            <input id="CA09_11" type="checkbox" name="studyCategory" value="인테리어" />
	                                            <label class="midCategoryBox" for="CA09_11"># 인테리어</label>
	
	                                            
	
	                                            <input id="CA09_12" type="checkbox" name="studyCategory" value="바리스타/바텐더" />
	                                            <label class="midCategoryBox" for="CA09_12"># 바리스타/바텐더</label>
	
	                                            
	
	                                            <input id="CA09_01" type="checkbox" name="studyCategory" value="CA09_01" />
	                                            <label class="midCategoryBox" for="CA09_01"># 반려동물</label>
	
	                                            
	
	                                            <input id="CA09_04" type="checkbox" name="studyCategory" value="CA09_04" />
	                                            <label class="midCategoryBox" for="CA09_04"># 건강/웰빙</label>
	
	                                            
	
	                                            <input id="CA09_07" type="checkbox" name="studyCategory" value="CA09_07" />
	                                            <label class="midCategoryBox" for="CA09_07"># 사진/영상</label>
	
	                                            
	
	                                            <input id="CA09_10" type="checkbox" name="studyCategory" value="CA09_10" />
	                                            <label class="midCategoryBox" for="CA09_10"># 요리/베이킹</label>
	
	                                            
	
	                                            <input id="CA09_13" type="checkbox" name="studyCategory" value="CA09_13" />
	                                            <label class="midCategoryBox" for="CA09_13"># 봉사활동</label>
	
	                                            
	
	                                            <input id="CA09_02" type="checkbox" name="studyCategory" value="CA09_02" />
	                                            <label class="midCategoryBox" for="CA09_02"># 금융/재테크</label>
	
	                                            
	
	                                            <input id="CA09_03" type="checkbox" name="studyCategory" value="CA09_03" />
	                                            <label class="midCategoryBox" for="CA09_03"># 상담/컨설팅</label>
	
	                                            
	
	                                            <input id="CA09_08" type="checkbox" name="studyCategory" value="CA09_08" />
	                                            <label class="midCategoryBox" for="CA09_08"># 키덜트</label>
	
	                                            
	
	                                            <input id="CA09_09" type="checkbox" name="studyCategory" value="생활공예" />
	                                            <label class="midCategoryBox" for="CA09_09"># 생활공예</label>
	
	                                            
	
	                                            <input id="CA09_14" type="checkbox" name="studyCategory" value="웨딩" />
	                                            <label class="midCategoryBox" for="CA09_14"># 웨딩</label>
	
	                                            
	
	                                            <input id="CA09_15" type="checkbox" name="studyCategory" value="라이프스타일기타" />
	                                            <label class="midCategoryBox" for="CA09_15"># 라이프스타일 기타</label>
	
	                                            
	                                        </div>
	                                    </div>
	                                    	                                    
	                                    <div class="box header CA10">
	                                        <div class="content collapsed" data-toggle="collapse" href="#CA10">
	                                            게임
	                                        </div>
	                                    </div>
	                                    <div class="box list collapse" id="CA10">
	                                        <div class="content">
	                                            
	
	                                            <input id="CA10_00" type="checkbox" name="studyCategory" value="리그오브레전드" />
	                                            <label class="midCategoryBox" for="CA10_00"># 리그오브레전드</label>
	
	                                            
	
	                                            <input id="CA10_01" type="checkbox" name="studyCategory" value="도타" />
	                                            <label class="midCategoryBox" for="CA10_01"># 도타</label>
	
	                                            
	
	                                            <input id="CA10_02" type="checkbox" name="studyCategory" value="피파온라인" />
	                                            <label class="midCategoryBox" for="CA10_02"># 피파온라인</label>
	
	                                            
	
	                                            <input id="CA10_03" type="checkbox" name="studyCategory" value="오버워치" />
	                                            <label class="midCategoryBox" for="CA10_03"># 오버워치</label>
	
	                                            
	
	                                            <input id="CA10_04" type="checkbox" name="studyCategory" value="서든어택" />
	                                            <label class="midCategoryBox" for="CA10_04"># 서든어택</label>
	
	                                            
	
	                                            <input id="CA10_05" type="checkbox" name="studyCategory" value="온라인게임" />
	                                            <label class="midCategoryBox" for="CA10_05"># 온라인게임</label>
	
	                                            
	
	                                            <input id="CA10_06" type="checkbox" name="studyCategory" value="PC게임" />
	                                            <label class="midCategoryBox" for="CA10_06"># PC게임</label>
	
	                                            
	
	                                            <input id="CA10_07" type="checkbox" name="studyCategory" value="모바일게임" />
	                                            <label class="midCategoryBox" for="CA10_07"># 모바일게임</label>
	
	                                            
	
	                                            <input id="CA10_08" type="checkbox" name="studyCategory" value="보드게임" />
	                                            <label class="midCategoryBox" for="CA10_08"># 보드게임</label>
	
	                                            
	
	                                            <input id="CA10_09" type="checkbox" name="studyCategory" value="게임기타" />
	                                            <label class="midCategoryBox" for="CA10_09"># 게임 기타</label>
	
	                                            
	                                        </div>
	                                    </div>
	                                    
	                                </div>
	                            </div>
	                        </div>
	                    </div>					
					</div>
					
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label">스터디명</label>
					<div class="col-sm-10">
						<div class="col-sm-12">
							<input type="text" class="form-control" name="studyName"
								placeholder="스터디이름을 넣어주세요">
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
							<input type="text" id="testDatepicker" class="form-control"
								name="studyStartDate">
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
								placeholder="ex.10000명명">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">인원수</label>
					<div class="col-sm-10">
						<div class="col-sm-12">
							<input type="text" class="form-control" name="studyMaxMemCnt"
								placeholder="ex.10명">
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
							<textarea class="form-control" rows="10" name="studyIntroduce"></textarea>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">소개</label>
					<div class="col-sm-10">
						<input type="file" id="exampleInputFile">
						<div class="col-sm-12">
							<div class="fileDrop"></div>
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<button type="submit" class="btn btn-default">완료</button>
					<button type="button" class="btn btn-default m_r_10">취소</button>
				</div>
				<ul class="mailbox-attachments clearfix uploadedList">
				</ul>
			</div>
		</div>
		<!-- 파일 업로드 테스트 해보자!!!  -->


	</form>
</div>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<!-- 업로드된 리스트 템플릿  -->
<script id="template" type="text/x-handlebars-template">

	<li class="col-sm-4">
		<span class="mailbox-attachment-icon has-img"><img style="width:100%" src="{{imgsrc}}" alt="Attachment"></span>
		<div class="mailbox-attachment-info">
			<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
			<a data-src="{{fullName}}"  class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a>
		</div>
	</li>
</script>
<script type="text/javascript" src="/resources/dist/js/upload.js"></script>
<script>
	/*화면에 업로드된 리스트출력  */
	var template = Handlebars.compile($("#template").html());

	$(".fileDrop").on("dragenter dragover", function(event) {
		event.preventDefault();
	});

	$(".fileDrop").on("drop", function(event) {
		event.preventDefault();

		var files = event.originalEvent.dataTransfer.files;

		var file = files[0];

		//console.log(file);

		var formData = new FormData();
		formData.append("file", file);

		/*컴트롤러로 파일명을 보낸후 콜백으로 만들어진 이미지파일명을 받은후 템플릿에 출력시킨다.  */
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
	/*input:file로 파일 업로드하기  */
	$("#exampleInputFile").on("change",function(event) {
		event.preventDefault();

		/* var files = event.originalEvent.dataTransfer.files;

		var file = files[0];
 */
		//console.log(file);

		var formData = new FormData();
		formData.append("file", $("input[id=exampleInputFile]")[0].files[0]);

		/*컴트롤러로 파일명을 보낸후 콜백으로 만들어진 이미지파일명을 받은후 템플릿에 출력시킨다.  */
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

	/* input:hidden 으로 현재 업로드된 파일들의 목록을 저장한다. */
	$("#registerForm").submit(
			function(event) {
				event.preventDefault();

				var that = $(this);

				var str = "";

				$(".uploadedList .delbtn").each(
						function(index) {
							str += "<input type='hidden' name='files[" + index
									+ "]' value='" + $(this).attr("data-src")
									+ "'>";
						});
				that.append(str);
				that.get(0).submit();
			});
	/* 업로드 된 파일들중 x버튼을 누르면 업로드된 파일들이 삭제되도록한다.  */
	$(".uploadedList").on("click", "a", function(event) {
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
					that.parent("div").parent("li").remove();
				}
			}
		});
	});
</script>
<%@include file="../include/footer.jsp"%>
