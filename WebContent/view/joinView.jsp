<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/reference.jsp"%>
<title>joinView.jsp</title>
<!-- 
	파일명: joinView.jsp (join view)
	마지막 수정 날짜: 19/02/23  
	작성자: 이승찬
	기능: 회원가입 화면
-->
</head>
<body>
<div class="container">
	<form>
	<h1>회원 가입</h1><br>
		<div class="group">
			<input type="text" id="id" required="required"/><span class="highlight"></span><span class="bar"></span>
			<label>아이디</label>
		</div>			
			
		<div class="group">
			<input type="password" id="pw" onkeyup="#" required="required"/><span class="highlight"></span><span class="bar"></span>
			<label>비밀번호</label>
		</div>
		
		<div class="group">
			<input type="password" id="pwconfirm" onkeyup="#" required="required"/><span class="highlight"></span><span class="bar"></span>
			<label>비밀번호 확인</label>
		</div>
		
		<div class="group">
			<input type="text" id="name"  required="required"/><span class="highlight"></span><span class="bar"></span>
			<label>이름</label>
		</div>
		
		<div class="group">
			<input type="date" id="birth"/><span class="highlight"></span><span class="bar"></span>
			<label>생년월일</label>
		</div>
		<br>
		
		<div class="group">
			<select name="major" id="major" required="required">
				<option value="0">==선택==</option>
				<option value="1">컴퓨터 소프트웨어학</option>
				<option value="2">컴퓨터 공학</option>
				<option value="3">정보통신학</option>
				<option value="4">경영학</option>
				<option value="5">경제학</option>
				<option value="6">교육학</option>
			</select>
			<label>전공</label>
		</div>
		<br>
		
		<div class="group">
			<select name="position" id="position" required="required">
				<option value="0">==선택==</option>
				<option value="1">취준생</option>
				<option value="2">사원</option>
				<option value="3">대리</option>
				<option value="4">과장</option>
				<option value="5">임원</option>
				<option value="5">사장</option>
			</select>
			<label>직급</label>
		</div>
		
		<div class="group">
			<input type="date" id="jyear"/><span class="highlight"></span><span class="bar"></span>
			<label>입사년도</label>
		</div>
		
		<div class="group">
			<select name="dept" id="dept" required="required">
				<option value="0">==선택==</option>
				<option value="1">항공관리</option>
				<option value="2">항공영업</option>
				<option value="3">데이터센터</option>
				<option value="4">LCC사업부</option>
				<option value="5">그룹웨어 서비스</option>
				<option value="6">금융</option>
				<option value="7">보험</option>
				<option value="8">건설</option>
			</select>
			<label>부서</label>
		</div>
		<br>
		
		<div class="group">
			<label>당신의 정보를 통계자료로 사용해도 될까욥?</label>
			<input type="checkbox" id="dept">
		</div>
		
		<div class="btn-box">
			<button type="button" class="btn btn-submit" id="btjoin">회원가입</button>
			<button type="button" class="btn btn-cancel" id="btcancel">취소</button>
		</div>		
	</form>
</div>
<%@include file="../include/footer.jsp"%>