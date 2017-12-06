<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<form class="form-horizontal" id="registerForm" action="/study/studyModify" method="post">

		<!-- 쿼리스트링 값 받아오기 -->
		<input type="hidden" name='page' value="${cri.page }"> <input type="hidden" name='perPageNum' value="${cri.perPageNum }"> <input
			type="hidden" name='searchType' value="${cri.searchType }"> <input type="hidden" name='keyword' value="${cri.keyword }"> <input
			type="hidden" name='lineUp' value="${cri.lineUp }" /><input type="hidden" name='upCategory' value="${cri.upCategory }">
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

						<!-- 카테고리 테스트용  -->
						<div class="col-sm-12">
							<div class="question-answer">

								<div class="row">
									<div class="container" style="padding: 0;">
										<div class="flex-container">

											<div class="box header CA00">
												<div class="content collapsed" data-toggle="collapse" href="#CA00">영어</div>
											</div>
											<div class="box list collapse" id="CA00">
												<div class="content0">


													<input id="CA00_00" type="checkbox" name="studyCategory" value="토익" /> <label class="midCategoryBox" for="CA00_00"># 토익</label> <input
														id="CA00_01" type="checkbox" name="studyCategory" value="토플" /> <label class="midCategoryBox" for="CA00_01"># 토플</label> <input
														id="CA00_02" type="checkbox" name="studyCategory" value="텝스" /> <label class="midCategoryBox" for="CA00_02"># 텝스</label> <input
														id="CA00_03" type="checkbox" name="studyCategory" value="토스/오픽" /> <label class="midCategoryBox" for="CA00_03"># 토스/오픽</label> <input
														id="CA00_04" type="checkbox" name="studyCategory" value="영어회화" /> <label class="midCategoryBox" for="CA00_04"># 영어회화</label> <input
														id="CA00_05" type="checkbox" name="studyCategory" value="작문/독해" /> <label class="midCategoryBox" for="CA00_05"># 작문/독해</label> <input
														id="CA00_06" type="checkbox" name="studyCategory" value="미드정복" /> <label class="midCategoryBox" for="CA00_06"># 미드정복</label> <input
														id="CA00_07" type="checkbox" name="studyCategory" value="영어기타" /> <label class="midCategoryBox" for="CA00_07"># 영어 기타</label>


												</div>
											</div>

											<div class="box header CA01">
												<div class="content collapsed" data-toggle="collapse" href="#CA01">외국어</div>
											</div>
											<div class="box list collapse" id="CA01">
												<div class="content1">


													<input id="CA01_00" type="checkbox" name="studyCategory" value="중국어" /> <label class="midCategoryBox" for="CA01_00"># 중국어</label>



													<input id="CA01_01" type="checkbox" name="studyCategory" value="일본어" /> <label class="midCategoryBox" for="CA01_01"># 일본어</label>



													<input id="CA01_02" type="checkbox" name="studyCategory" value="독일어" /> <label class="midCategoryBox" for="CA01_02"># 독일어</label>



													<input id="CA01_03" type="checkbox" name="studyCategory" value="아랍어" /> <label class="midCategoryBox" for="CA01_03"># 아랍어</label>



													<input id="CA01_07" type="checkbox" name="studyCategory" value="프랑스어" /> <label class="midCategoryBox" for="CA01_07">#
														프랑스어</label> <input id="CA01_05" type="checkbox" name="studyCategory" value="스페인어" /> <label class="midCategoryBox" for="CA01_05">#
														스페인어</label> <input id="CA01_06" type="checkbox" name="studyCategory" value="러시아어" /> <label class="midCategoryBox" for="CA01_06">#
														러시아어</label> <input id="CA01_08" type="checkbox" name="studyCategory" value="베트남어" /> <label class="midCategoryBox" for="CA01_08">#
														베트남어</label> <input id="CA01_04" type="checkbox" name="studyCategory" value="태국어" /> <label class="midCategoryBox" for="CA01_04">#
														태국어</label> <input id="CA01_09" type="checkbox" name="studyCategory" value="외국어기타" /> <label class="midCategoryBox" for="CA01_09">#
														외국어 기타</label>


												</div>
											</div>

											<div class="box header CA02">
												<div class="content collapsed" data-toggle="collapse" href="#CA02">컴퓨터</div>
											</div>
											<div class="box list collapse" id="CA02">
												<div class="content2">


													<input id="CA02_00" type="checkbox" name="studyCategory" value="응용프로그래밍" /> <label class="midCategoryBox" for="CA02_00">#
														응용프로그래밍</label> <input id="CA02_01" type="checkbox" name="studyCategory" value="웹프로그래밍" /> <label class="midCategoryBox" for="CA02_01">#
														웹프로그래밍</label> <input id="CA02_02" type="checkbox" name="studyCategory" value="모바일프로그래밍" /> <label class="midCategoryBox" for="CA02_02">#
														모바일프로그래밍</label> <input id="CA02_03" type="checkbox" name="studyCategory" value="데이터베이스/서버" /> <label class="midCategoryBox"
														for="CA02_03"># 데이터베이스/서버</label> <input id="CA02_04" type="checkbox" name="studyCategory" value="게임프로그래밍" /> <label
														class="midCategoryBox" for="CA02_04"># 게임프로그래밍</label> <input id="CA02_05" type="checkbox" name="studyCategory" value="문서작성/편집" />
													<label class="midCategoryBox" for="CA02_05"># 문서작성/편집</label> <input id="CA02_06" type="checkbox" name="studyCategory"
														value="컴퓨터자격증" /> <label class="midCategoryBox" for="CA02_06"># 컴퓨터자격증</label> <input id="CA02_07" type="checkbox"
														name="studyCategory" value="사물인터넷" /> <label class="midCategoryBox" for="CA02_07"># 사물인터넷</label> <input id="CA02_08"
														type="checkbox" name="studyCategory" value="하드웨어" /> <label class="midCategoryBox" for="CA02_08"># 하드웨어</label> <input
														id="CA02_09" type="checkbox" name="studyCategory" value="컴퓨터기타" /> <label class="midCategoryBox" for="CA02_09"># 컴퓨터 기타</label>


												</div>
											</div>

											<div class="box header CA03">
												<div class="content collapsed" data-toggle="collapse" href="#CA03">디자인/미술</div>
											</div>
											<div class="box list collapse" id="CA03">
												<div class="content3">


													<input id="CA03_00" type="checkbox" name="studyCategory" value="웹/모바일디자인" /> <label class="midCategoryBox" for="CA03_00">#
														웹/모바일디자인</label> <input id="CA03_01" type="checkbox" name="studyCategory" value="일러스트/삽화" /> <label class="midCategoryBox" for="CA03_01">#
														일러스트/삽화</label> <input id="CA03_03" type="checkbox" name="studyCategory" value="만화/웹툰" /> <label class="midCategoryBox" for="CA03_03">#
														만화/웹툰</label> <input id="CA03_04" type="checkbox" name="studyCategory" value="편집디자인" /> <label class="midCategoryBox" for="CA03_04">#
														편집디자인</label> <input id="CA03_05" type="checkbox" name="studyCategory" value="패션디자인" /> <label class="midCategoryBox" for="CA03_05">#
														패션디자인</label> <input id="CA03_02" type="checkbox" name="studyCategory" value="광고/영상" /> <label class="midCategoryBox" for="CA03_02">#
														광고/영상</label> <input id="CA03_06" type="checkbox" name="studyCategory" value="3D/VFX" /> <label class="midCategoryBox" for="CA03_06">#
														3D/VFX</label> <input id="CA03_07" type="checkbox" name="studyCategory" value="도예/세라믹" /> <label class="midCategoryBox" for="CA03_07">#
														도예/세라믹</label> <input id="CA03_08" type="checkbox" name="studyCategory" value="캘리그라피" /> <label class="midCategoryBox" for="CA03_08">#
														캘리그라피</label> <input id="CA03_09" type="checkbox" name="studyCategory" value="디자인기타" /> <label class="midCategoryBox" for="CA03_09">#
														디자인 기타</label> <input id="CA03_10" type="checkbox" name="studyCategory" value="회화" /> <label class="midCategoryBox" for="CA03_10">#
														회화</label>


												</div>
											</div>

											<div class="box header CA04">
												<div class="content collapsed" data-toggle="collapse" href="#CA04">국가고시/공무원</div>
											</div>
											<div class="box list collapse" id="CA04">
												<div class="content4">


													<input id="CA04_00" type="checkbox" name="studyCategory" value="행정" /> <label class="midCategoryBox" for="CA04_00"># 행정</label> <input
														id="CA04_01" type="checkbox" name="studyCategory" value="교육" /> <label class="midCategoryBox" for="CA04_01"># 교육</label> <input
														id="CA04_02" type="checkbox" name="studyCategory" value="경찰" /> <label class="midCategoryBox" for="CA04_02"># 경찰</label> <input
														id="CA04_03" type="checkbox" name="studyCategory" value="소방" /> <label class="midCategoryBox" for="CA04_03"># 소방</label> <input
														id="CA04_04" type="checkbox" name="studyCategory" value="의료/보건" /> <label class="midCategoryBox" for="CA04_04"># 의료/보건</label> <input
														id="CA04_05" type="checkbox" name="studyCategory" value="사법" /> <label class="midCategoryBox" for="CA04_05"># 사법</label> <input
														id="CA04_06" type="checkbox" name="studyCategory" value="기술" /> <label class="midCategoryBox" for="CA04_06"># 기술</label> <input
														id="CA04_09" type="checkbox" name="studyCategory" value="공무원기타" /> <label class="midCategoryBox" for="CA04_09"># 공무원 기타</label> <input
														id="CA04_07" type="checkbox" name="studyCategory" value="회계" /> <label class="midCategoryBox" for="CA04_07"># 회계</label> <input
														id="CA04_08" type="checkbox" name="studyCategory" value="국방" /> <label class="midCategoryBox" for="CA04_08"># 국방</label>


												</div>
											</div>

											<div class="box header CA05">
												<div class="content collapsed" data-toggle="collapse" href="#CA05">취업</div>
											</div>
											<div class="box list collapse" id="CA05">
												<div class="content5">


													<input id="CA05_00" type="checkbox" name="studyCategory" value="자소서/면접" /> <label class="midCategoryBox" for="CA05_00">#
														자소서/면접</label> <input id="CA05_01" type="checkbox" name="studyCategory" value="인적성" /> <label class="midCategoryBox" for="CA05_01">#
														인적성</label> <input id="CA05_02" type="checkbox" name="studyCategory" value="스피치" /> <label class="midCategoryBox" for="CA05_02">#
														스피치</label> <input id="CA05_03" type="checkbox" name="studyCategory" value="자격증" /> <label class="midCategoryBox" for="CA05_03">#
														자격증</label> <input id="CA05_04" type="checkbox" name="studyCategory" value="기업공채" /> <label class="midCategoryBox" for="CA05_04">#
														기업공채</label> <input id="CA05_05" type="checkbox" name="studyCategory" value="공모전/대외활동" /> <label class="midCategoryBox" for="CA05_05">#
														공모전/대외활동</label> <input id="CA05_06" type="checkbox" name="studyCategory" value="창업/스타트업" /> <label class="midCategoryBox" for="CA05_06">#
														창업/스타트업</label> <input id="CA05_07" type="checkbox" name="studyCategory" value="취업기타" /> <label class="midCategoryBox" for="CA05_07">#
														취업 기타</label>


												</div>
											</div>

											<div class="box header CA06">
												<div class="content collapsed" data-toggle="collapse" href="#CA06">음악/공연</div>
											</div>
											<div class="box list collapse" id="CA06">
												<div class="content6">


													<input id="CA06_00" type="checkbox" name="studyCategory" value="기타/우쿠렐라" /> <label class="midCategoryBox" for="CA06_00">#
														기타/우쿠렐라</label> <input id="CA06_01" type="checkbox" name="studyCategory" value="피아노/키보드" /> <label class="midCategoryBox" for="CA06_01">#
														피아노/키보드</label> <input id="CA06_02" type="checkbox" name="studyCategory" value="보컬/음악이론" /> <label class="midCategoryBox" for="CA06_02">#
														보컬/음악이론</label> <input id="CA06_03" type="checkbox" name="studyCategory" value="작사/작곡" /> <label class="midCategoryBox" for="CA06_03">#
														작사/작곡</label> <input id="CA06_04" type="checkbox" name="studyCategory" value="밴드" /> <label class="midCategoryBox" for="CA06_04">#
														밴드</label> <input id="CA06_05" type="checkbox" name="studyCategory" value="국악" /> <label class="midCategoryBox" for="CA06_05">#
														국악</label> <input id="CA06_06" type="checkbox" name="studyCategory" value="연기/연극/뮤지컬" /> <label class="midCategoryBox" for="CA06_06">#
														연기/연극/뮤지컬</label> <input id="CA06_07" type="checkbox" name="studyCategory" value="댄스무용" /> <label class="midCategoryBox" for="CA06_07">#
														댄스무용</label> <input id="CA06_08" type="checkbox" name="studyCategory" value="진행/행사" /> <label class="midCategoryBox" for="CA06_08">#
														진행/행사</label> <input id="CA06_09" type="checkbox" name="studyCategory" value="마술" /> <label class="midCategoryBox" for="CA06_09">#
														마술</label> <input id="CA06_10" type="checkbox" name="studyCategory" value="음악/공연기타" /> <label class="midCategoryBox" for="CA06_10">#
														음악/공연 기타</label>


												</div>
											</div>

											<div class="box header CA07">
												<div class="content collapsed" data-toggle="collapse" href="#CA07">스포츠</div>
											</div>
											<div class="box list collapse" id="CA07">
												<div class="content7">


													<input id="CA07_00" type="checkbox" name="studyCategory" value="축구" /> <label class="midCategoryBox" for="CA07_00"># 축구</label> <input
														id="CA07_01" type="checkbox" name="studyCategory" value="야구" /> <label class="midCategoryBox" for="CA07_01"># 야구</label> <input
														id="CA07_02" type="checkbox" name="studyCategory" value="농구" /> <label class="midCategoryBox" for="CA07_02"># 농구</label> <input
														id="CA07_03" type="checkbox" name="studyCategory" value="테니스" /> <label class="midCategoryBox" for="CA07_03"># 테니스</label> <input
														id="CA07_04" type="checkbox" name="studyCategory" value="배드민턴" /> <label class="midCategoryBox" for="CA07_04"># 배드민턴</label> <input
														id="CA07_05" type="checkbox" name="studyCategory" value="골프" /> <label class="midCategoryBox" for="CA07_05"># 골프</label> <input
														id="CA07_06" type="checkbox" name="studyCategory" value="등산" /> <label class="midCategoryBox" for="CA07_06"># 등산</label> <input
														id="CA07_07" type="checkbox" name="studyCategory" value="수영" /> <label class="midCategoryBox" for="CA07_07"># 수영</label> <input
														id="CA07_08" type="checkbox" name="studyCategory" value="자전거" /> <label class="midCategoryBox" for="CA07_08"># 자전거</label> <input
														id="CA07_09" type="checkbox" name="studyCategory" value="스케이트/보드" /> <label class="midCategoryBox" for="CA07_09">#
														스케이트/보드</label> <input id="CA07_10" type="checkbox" name="studyCategory" value="요가/에어로빅" /> <label class="midCategoryBox" for="CA07_10">#
														요가/에어로빅</label> <input id="CA07_11" type="checkbox" name="studyCategory" value="헬스/다이어트" /> <label class="midCategoryBox" for="CA07_11">#
														헬스/다이어트</label> <input id="CA07_12" type="checkbox" name="studyCategory" value="무예/무술" /> <label class="midCategoryBox" for="CA07_12">#
														무예/무술</label> <input id="CA07_13" type="checkbox" name="studyCategory" value="시즌스포츠" /> <label class="midCategoryBox" for="CA07_13">#
														시즌스포츠</label> <input id="CA07_14" type="checkbox" name="studyCategory" value="스포츠기타" /> <label class="midCategoryBox" for="CA07_14">#
														스포츠 기타</label>


												</div>
											</div>

											<div class="box header CA08">
												<div class="content collapsed" data-toggle="collapse" href="#CA08">뷰티/미용</div>
											</div>
											<div class="box list collapse" id="CA08">
												<div class="content8">


													<input id="CA08_00" type="checkbox" name="studyCategory" value="헤어" /> <label class="midCategoryBox" for="CA08_00"># 헤어</label> <input
														id="CA08_01" type="checkbox" name="studyCategory" value="마사지" /> <label class="midCategoryBox" for="CA08_01"># 마사지</label> <input
														id="CA08_02" type="checkbox" name="studyCategory" value="네일아트" /> <label class="midCategoryBox" for="CA08_02"># 네일아트</label> <input
														id="CA08_03" type="checkbox" name="studyCategory" value="피부관리" /> <label class="midCategoryBox" for="CA08_03"># 피부관리</label> <input
														id="CA08_04" type="checkbox" name="studyCategory" value="메이크업" /> <label class="midCategoryBox" for="CA08_04"># 메이크업</label> <input
														id="CA08_05" type="checkbox" name="studyCategory" value="반영구메이크업" /> <label class="midCategoryBox" for="CA08_05"># 반영구
														메이크업</label> <input id="CA08_06" type="checkbox" name="studyCategory" value="스타일/코디" /> <label class="midCategoryBox" for="CA08_06">#
														스타일/코디</label> <input id="CA08_07" type="checkbox" name="studyCategory" value="뷰티/미용기타" /> <label class="midCategoryBox" for="CA08_07">#
														뷰티/미용 기타</label>


												</div>
											</div>

											<div class="box header CA09">
												<div class="content collapsed" data-toggle="collapse" href="#CA09">라이프스타일</div>
											</div>
											<div class="box list collapse" id="CA09">
												<div class="content9">


													<input id="CA09_00" type="checkbox" name="studyCategory" value="육아" /> <label class="midCategoryBox" for="CA09_00"># 육아</label> <input
														id="CA09_05" type="checkbox" name="studyCategory" value="사주/타로" /> <label class="midCategoryBox" for="CA09_05"># 사주/타로</label> <input
														id="CA09_06" type="checkbox" name="studyCategory" value="독서/글쓰기" /> <label class="midCategoryBox" for="CA09_06"># 독서/글쓰기</label>



													<input id="CA09_11" type="checkbox" name="studyCategory" value="인테리어" /> <label class="midCategoryBox" for="CA09_11">#
														인테리어</label> <input id="CA09_12" type="checkbox" name="studyCategory" value="바리스타/바텐더" /> <label class="midCategoryBox" for="CA09_12">#
														바리스타/바텐더</label> <input id="CA09_01" type="checkbox" name="studyCategory" value="CA09_01" /> <label class="midCategoryBox" for="CA09_01">#
														반려동물</label> <input id="CA09_04" type="checkbox" name="studyCategory" value="CA09_04" /> <label class="midCategoryBox" for="CA09_04">#
														건강/웰빙</label> <input id="CA09_07" type="checkbox" name="studyCategory" value="CA09_07" /> <label class="midCategoryBox" for="CA09_07">#
														사진/영상</label> <input id="CA09_10" type="checkbox" name="studyCategory" value="CA09_10" /> <label class="midCategoryBox" for="CA09_10">#
														요리/베이킹</label> <input id="CA09_13" type="checkbox" name="studyCategory" value="CA09_13" /> <label class="midCategoryBox" for="CA09_13">#
														봉사활동</label> <input id="CA09_02" type="checkbox" name="studyCategory" value="CA09_02" /> <label class="midCategoryBox" for="CA09_02">#
														금융/재테크</label> <input id="CA09_03" type="checkbox" name="studyCategory" value="CA09_03" /> <label class="midCategoryBox" for="CA09_03">#
														상담/컨설팅</label> <input id="CA09_08" type="checkbox" name="studyCategory" value="CA09_08" /> <label class="midCategoryBox" for="CA09_08">#
														키덜트</label> <input id="CA09_09" type="checkbox" name="studyCategory" value="생활공예" /> <label class="midCategoryBox" for="CA09_09">#
														생활공예</label> <input id="CA09_14" type="checkbox" name="studyCategory" value="웨딩" /> <label class="midCategoryBox" for="CA09_14">#
														웨딩</label> <input id="CA09_15" type="checkbox" name="studyCategory" value="라이프스타일기타" /> <label class="midCategoryBox" for="CA09_15">#
														라이프스타일 기타</label>


												</div>
											</div>

											<div class="box header CA10">
												<div class="content collapsed" data-toggle="collapse" href="#CA10">게임</div>
											</div>
											<div class="box list collapse" id="CA10">
												<div class="content10">


													<input id="CA10_00" type="checkbox" name="studyCategory" value="리그오브레전드" /> <label class="midCategoryBox" for="CA10_00">#
														리그오브레전드</label> <input id="CA10_01" type="checkbox" name="studyCategory" value="도타" /> <label class="midCategoryBox" for="CA10_01">#
														도타</label> <input id="CA10_02" type="checkbox" name="studyCategory" value="피파온라인" /> <label class="midCategoryBox" for="CA10_02">#
														피파온라인</label> <input id="CA10_03" type="checkbox" name="studyCategory" value="오버워치" /> <label class="midCategoryBox" for="CA10_03">#
														오버워치</label> <input id="CA10_04" type="checkbox" name="studyCategory" value="서든어택" /> <label class="midCategoryBox" for="CA10_04">#
														서든어택</label> <input id="CA10_05" type="checkbox" name="studyCategory" value="온라인게임" /> <label class="midCategoryBox" for="CA10_05">#
														온라인게임</label> <input id="CA10_06" type="checkbox" name="studyCategory" value="PC게임" /> <label class="midCategoryBox" for="CA10_06">#
														PC게임</label> <input id="CA10_07" type="checkbox" name="studyCategory" value="모바일게임" /> <label class="midCategoryBox" for="CA10_07">#
														모바일게임</label> <input id="CA10_08" type="checkbox" name="studyCategory" value="보드게임" /> <label class="midCategoryBox" for="CA10_08">#
														보드게임</label> <input id="CA10_09" type="checkbox" name="studyCategory" value="게임기타" /> <label class="midCategoryBox" for="CA10_09">#
														게임 기타</label>


												</div>
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
							<input type="text" class="form-control" name="studyName" value="${studyVO.studyName }">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">지역</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="sample4_postcode" placeholder="우편번호"> 
						<input type="button" class="form-control" onclick="sample4_execDaumPostcode()"value="우편번호 찾기"> 
						<input type="text" class="form-control" name="studyRegion" id="sample4_roadAddress" placeholder="도로명주소" value="${studyVO.studyRegion }"> 
						<input type="text" class="form-control" id="sample4_jibunAddress" placeholder="지번주소"> <span id="guide" style="color: #999"></span>
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
							<fmt:formatDate value="${studyVO.studyStartDate}" pattern="MM/dd/yyyy" var="date" />
							<input type="text" id="testDatepicker" class="form-control" name="studyStartDate" value="${date }">
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
							<select id="single" class="form-control">
								<option>월요일</option>
								<option>화요일</option>
								<option>수요일</option>
								<option>목요일</option>
								<option>금요일</option>
								<option>토요일</option>
								<option>일요일</option>
							</select>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">시작시간</label>
					<div class="col-sm-10">
						<div class="col-sm-12">
							<select id="startTime" class="form-control">
							</select> <select id="startMinute" class="form-control m_t_10">
							</select>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">완료시간</label>
					<div class="col-sm-10">
						<div class="col-sm-12">
							<select id="endTime" class="form-control">
							</select> <select id="endMinute" class="form-control m_t_10">
							</select>
						</div>
					</div>
				</div>
				<label class="col-sm-2 control-label"></label>
				<div class="col-sm-10">
					<div class="col-sm-12">
						<ul id="Datepicker">
						</ul>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12">
						<div class="col-sm-12">
							<button id="copyBtn" class="btn btn-default" type="button">추가</button>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">비용</label>
					<div class="col-sm-10">
						<div class="col-sm-12">
							<input type="text" class="form-control" name="studyMemFee" value="${studyVO.studyMemFee }">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">인원수</label>
					<div class="col-sm-10">
						<div class="col-sm-12">
							<input type="text" class="form-control" name="studyMaxMemCnt" value="${studyVO.studyMaxMemCnt }">
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
							<label for="exampleInputFile">파일 업로드</label> <input type="file" id="exampleInputFile">
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
			<ul class="mailbox-attachments clearfix uploadedList">
			</ul>
		</div>

		<!-- studyNo값을 가져옴 -->
		<input type="hidden" name='studyNo' value="${studyVO.studyNo }">

	</form>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
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
jQuery(function($) {
	var chkstudyName
	var chkstudyMemFee = /^[0-9]+$/;
	var chkstudyMaxMemCnt = /^[0-9]+$/;
	var chkstudyIntroduce

	var form = $('#registerForm');
	var studyName = $('#studyName');
	var studyRegion = $('#sample4_postcode');
	var studyStartDate = $('#testDatepicker');
	var studyMemFee = $('#studyMemFee');
	var studyMaxMemCnt = $('#studyMaxMemCnt');
	var studyIntroduce = $('#studyIntroduce');
	var studyImage = $('#exampleInputFile');

	form.submit(function() {
		if (studyName.val() == "") { // 스터디명 NULL 유효성 검사
			alert("스터디명을 입력하십시오.");
			studyName.focus();
			return false;

		} else if (studyRegion.val() == "") { // 지역 NULL 유효성 검사
			alert("지역을 입력하십시오.")
			studyRegion.focus();
			return false;

		}  else if (studyMemFee.val() == "") { // 비용 NULL 유효성 검사
			alert("비용을 입력하십시오.")
			studyMemFee.focus();
			return false;
		} else if (chkstudyMemFee.test(studyMemFee.val()) != true) { // 비용 유효성 검사
			alert("비용에 숫자만 입력하세요.");
			studyMemFee.focus();
			return false;

		} else if (studyMaxMemCnt.val() == "") { // 인원수 NULL 유효성 검사
			alert("인원수를 입력하십시오.")
			studyMaxMemCnt.focus();
			return false;
		} else if (chkstudyMaxMemCnt.test(studyMaxMemCnt.val()) != true) { // 인원수 유효성 검사
			alert("인원수에 숫자만 입력하세요.");
			studyMaxMemCnt.focus();
			return false;

		} else if (studyIntroduce.val() == "") { // 스터디소개 NULL 유효성 검사
			alert("스터디소개를 입력하십시오.")
			studyIntroduce.focus();
			return false;

		} else if (studyImage.val() == "") { // 사진 NULL 유효성 검사
			alert("사진을 입력하십시오.")
			studyImage.focus();
			return false;
		}
		/* input:hidden 으로 현재 업로드된 파일들의 목록을 저장한다. */

		event.preventDefault();

		var that = $(this);

		var str = "";

		$(".uploadedList .delbtn").each(function(index) {
			str += "<input type='hidden' name='files[" + index + "]' value='" + $(this).attr("data-src") + "'>";
		});

		$("#Datepicker .day").each(function(index) {
			str += "<input type='hidden' name='weekVO[" + index + "].weekDay' value='" + $(this).attr("data-src") + "'>";
		});
		$("#Datepicker .start").each(function(index) {
			str += "<input type='hidden' name='weekVO[" + index + "].weekStartDate' value='" + $(this).attr("data-src") + "'>";
		});
		$("#Datepicker .end").each(function(index) {
			str += "<input type='hidden' name='weekVO[" + index + "].weekEndDate' value='" + $(this).attr("data-src") + "'>";
		});
		var flag = false;
		$(".content0 input[type=checkbox]:checked").each(function(items) {
			str += "<input type='hidden' name='studyUpCategory' value='영어'>";
		})
		$(".content1 input[type=checkbox]:checked").each(function(items) {
			str += "<input type='hidden' name='studyUpCategory' value='외국어'>";
		})
		$(".content2 input[type=checkbox]:checked").each(function(items) {
			str += "<input type='hidden' name='studyUpCategory' value='컴퓨터'>";
		})
		$(".content3 input[type=checkbox]:checked").each(function(items) {
			str += "<input type='hidden' name='studyUpCategory' value='디자인/미술'>";
		})
		$(".content4 input[type=checkbox]:checked").each(function(items) {
			str += "<input type='hidden' name='studyUpCategory' value='국가고시/공무원'>";
		})
		$(".content5 input[type=checkbox]:checked").each(function(items) {
			str += "<input type='hidden' name='studyUpCategory' value='취업'>";
		})
		$(".content6 input[type=checkbox]:checked").each(function(items) {
			str += "<input type='hidden' name='studyUpCategory' value='음악/공연'>";
		})
		$(".content7 input[type=checkbox]:checked").each(function(items) {
			str += "<input type='hidden' name='studyUpCategory' value='스포츠'>";
		})
		$(".content8 input[type=checkbox]:checked").each(function(items) {
			str += "<input type='hidden' name='studyUpCategory' value='뷰티/미용'>";
		})
		$(".content9 input[type=checkbox]:checked").each(function(items) {
			str += "<input type='hidden' name='studyUpCategory' value='라이프스타일'>";
		})
		$(".content10 input[type=checkbox]:checked").each(function(items) {
			str += "<input type='hidden' name='studyUpCategory' value='게임'>";
		})

		that.append(str);
		that.get(0).submit();

	});
});
	$(document)
			.ready(
					function() {
						/* 핸들바 탬플릿 컴파일 */
						var template = Handlebars.compile($("#template").html());

						var formObj = $("form[role='form']");

						console.log(formObj);

						/* 취소버튼 클릭시  */
						$("#cancelBtn")
								.on(
										"click",
										function() {
											self.location = "/study/studyList?page=${cri.page}&perPageNum=${cri.perPageNum}&searchType=${cri.searchType}&keyword=${cri.keyword}&lineUp=${cri.lineUp}";
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

						/*input:file로 파일 업로드하기  */
						$("#exampleInputFile").on("change", function(event) {
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

						/*파일 드랍시 업로드(ajax)  */
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
										alert("deleted");
										that.parent("div").parent("li").remove();
									}
								}
							});
						});

						function displayVals() {
							for (var i = 1; i < 25; i++) {
								$("#startTime").append("<option value='" +
                  i +
                  "시'> " + i + "시" + " </option> ");

								$("#endTime").append("<option value='" +
                  i +
                  "시'> " + i + "시" + " </option> ");
							}
							for (var i = 1; i < 61; i++) {
								$("#startMinute").append("<option value='" +
                  i +
                  "분'> " + i + "분" + " </option> ");

								$("#endMinute").append("<option value='" +
                  i +
                  "분'> " + i + "분" + " </option> ");
							}
						}
						displayVals();

						$("#copyBtn").click(
								function() {
									$("select").change(displayVals);
									var singleValues = $("#single").val();
									var startTime = $("#startTime").val();
									var endTime = $("#endTime").val();
									var startMinute = $("#startMinute").val();
									var endMinute = $("#endMinute").val();
									var weekStartDate = startTime + startMinute;
									var weekEndDate = endTime + endMinute;
									var Datepicker = document.getElementById('Datepicker');
									$("#Datepicker").append(
											"<li><p class='day' data-src='"+singleValues+"'><b>요일:</b>" + singleValues + "</p>"
													+ "<p class='start' data-src='"+weekStartDate+"'><b>시작시간:</b>" + weekStartDate + "</p>"
													+ "<p class='end' data-src='"+weekEndDate+"'><b>끝나는시간:</b> " + weekEndDate + "</p>"
													+ "<a class='btn btn-default btn-xs pull-right delbtn'><i class='fa fa-fw fa-remove'></i></a></li>");
								});
						$("#Datepicker").on("click", "a", function(event) {
							var that = $(this);
							that.parent("li").remove();
						});

						// 등록된 주단위 일정 출력
						<c:forEach items="${weekList}" varStatus="listIdx" var="weekVO">
						$("#Datepicker").append(
								"<li><p class='day' data-src='${weekVO.weekDay}'><b>요일:</b>${weekVO.weekDay}</p>"
										+ "<p class='start' data-src='${weekVO.weekStartDate}'><b>시작시간:</b>${weekVO.weekStartDate}</p>"
										+ "<p class='end' data-src='${weekVO.weekEndDate}'><b>끝나는시간:</b> " + "${weekVO.weekEndDate} </p>"
										+ "<a class='btn btn-default btn-xs pull-right delbtn'><i class='fa fa-fw fa-remove'></i></a></li>");
						</c:forEach>

						var names = document.getElementsByName('studyCategory');
						console.log(names);
						console.log('${studyVO.studyCategory }');

						var tmp = '${studyVO.studyCategory }';
						var cat_values = tmp.split(',');
						console.log(cat_values);

						for (let i = 0; i < names.length; i++) {
							for (let j = 0; j < cat_values.length; j++) {
								if (names[i].value == cat_values[j]) {
									console.log(names[i]);
									names[i].setAttribute('checked', 'checked');
								}
							}
						}

					});
</script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
				var extraRoadAddr = ''; // 도로명 조합형 주소 변수

				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
					extraRoadAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				}
				// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if (extraRoadAddr !== '') {
					extraRoadAddr = ' (' + extraRoadAddr + ')';
				}
				// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
				if (fullRoadAddr !== '') {
					fullRoadAddr += extraRoadAddr;
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
				document.getElementById('sample4_roadAddress').value = fullRoadAddr;
				document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

				// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
				if (data.autoRoadAddress) {
					//예상되는 도로명 주소에 조합형 주소를 추가한다.
					var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
					document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

				} else if (data.autoJibunAddress) {
					var expJibunAddr = data.autoJibunAddress;
					document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

				} else {
					document.getElementById('guide').innerHTML = '';
				}
			}
		}).open();

	}
</script>
<%@include file="../include/footer.jsp"%>