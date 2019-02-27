<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/reference.jsp"%>
<title>bInsertView.jsp</title>
<!-- 
	파일명: bInsertView.jsp (board insert view)
	마지막 수정 날짜: 19/02/26  
	작성자: 최남우
	기능: 게시물 입력 화면
-->
<script>
	$(function() {
		$("#btn_ok").click(function() {
			alert("게시글이 저장되었습니다");
		});//게시글 저장 클릭
		
		$("#btn_cn").click(function() {
			var r = confirm("확인 버튼을 누르면 게시글을 저장하지 않고 뒤로 돌아갑니다. 작성을 취소 하시겠습니까?");
			if (r == true) {
			  location.href="/blogdt/view/bListView.jsp";
			} else {
			  
			}
		});//작성 취소 클릭
	});//function
</script>

</head>
<body>
	<div class="container">
		<form enctype="multipart/form-data" method="post" action="../pro/bInsertPro.jsp">
			<h1>게시물 등록 화면</h1>
			<br>
			<!-- 클래스 정보 입력 -->
			<div class="group">
				<input type="text" name="title" id="title" value="" required/><label>제목</label>
			</div>

			<div class="group">
				<select id="category" name="btname" required>
					<option value="0" selected disabled>선택</option>
					<option value="1">신입사원 소개</option>
					<option value="2">선배님 조언</option>
					<option value="3">아시아나IDT 기술 소개</option>
					<option value="4">연수원</option>
				</select> <label>관심사</label>
			</div>

			<div class="group">
				<input type="file" id="img" name="img"/><span class="highlight"></span><span
					class="bar"></span> <label>사진</label>
			</div>

			<div class="group">
				<textarea rows="5" name="content" id="content" required></textarea>
				<span class="highlight"></span><span class="bar"></span> <label>내용</label>
			</div>
			<div class="btn-box">
				<button type="submit" class="btn btn-submit" id="btn_ok">작성 완료</button>
				<button type="button" class="btn btn-submit" id="btn_cn">작성 취소</button>
			</div>
		</form>
	</div>
	<%@include file="../include/footer.jsp"%>