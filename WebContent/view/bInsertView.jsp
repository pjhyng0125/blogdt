<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/reference.jsp"%>
<title>bInsertView.jsp</title>
<!-- 
	파일명: bInsertView.jsp (board insert view)
	마지막 수정 날짜: 19/02/23  
	작성자: 최남우
	기능: 게시물 입력 화면
-->

</head>
<body>
<div class="container">
<form enctype="multipart/form-data" method="post">
	<h1>게시물 등록 화면</h1><br>
<!-- 클래스 정보 입력 -->
		<div class="group">
		<font color="#2196F3" size="2px">제목</font>
		<input type="text" name="title" value=""/>
		</div>
		
		<div class="group">
		<select name="btname">
					<option value="0">선택</option>
					<option value="1">신입사원 소개</option>
					<option value="2">선배님 조언</option>
					<option value="3">아시아나IDT 기술 소개</option>
					<option value="4">연수원</option>
		</select>
		<label>관심사</label>
		</div>
		
		<div class="group">
			<input type="file" id="img" name="img"/><span class="highlight"></span><span class="bar"></span>
			<label>사진</label>
		</div>
		
	<div class="group">
		<textarea rows="5" name="content" required="required"></textarea><span class="highlight"></span><span class="bar"></span>
		<label>내용</label>
	</div>
	
	<div class="btn-box">
		<button type="button" class="btn btn-submit" id="btaddclass">입력 완료</button>
		<button type="button" class="btn btn-submit" id="btcancel">취소</button>
	</div> 
</form>
</div>
<%@include file="../include/footer.jsp"%>