<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/headerSub.jsp"%>
<div class="container write inner">
	<form class="form-horizontal" action="/study/studyReg" method="post">
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
									$("#testDatepicker").datepicker({});
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
						<div class="col-sm-12">
							<label for="exampleInputFile">파일 업로드</label> <input type="file"
								id="exampleInputFile">
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<button type="submit" class="btn btn-default">완료</button>
					<button type="button" class="btn btn-default m_r_10">취소</button>
				</div>

			</div>
		</div>
	</form>
</div>
<%@include file="../include/footer.jsp"%>
