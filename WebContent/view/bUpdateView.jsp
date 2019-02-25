<%@page import="blogdt.vo.BoardVO"%>
<%@page import="blogdt.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/reference.jsp"%>
<title>bUpdateView.jsp</title>
<!-- 
	파일명: bUpdateView.jsp (board update view)
	마지막 수정 날짜: 19/02/23  
	작성자: 최남우
	기능: 게시물 변경 화면
-->
</head>
<body>
	<div class="container">
		<form enctype="multipart/form-data" method="post">
			<h1>게시물 변경 화면</h1>
			<%
				// num : auto-incremented 글번호
				int num = Integer.parseInt(request.getParameter("num"));
				BoardDAO dao = null;
				BoardVO board = null;
				try {
					dao = BoardDAO.getInstance();
					board = dao.selectBoard(num);
				} catch (Exception e) {
					e.getMessage();
				}
				String title = board.getTitle();
				String selected = board.getBtype();
			%>
			<br>
			<!-- 게시물 정보 입력 -->
			<div class="group">
				<font color="#2196F3" size="2px">제목</font> <input type="text"
					name="title" value="" placeholder="<%=board.getTitle() %>"/>
			</div>
			
			<div class="group">
				<select name="btname">
					<option value="0">선택</option>
					<%
						if (selected == "신입사원 소개") {
					%>
					<option value="1" selected>>신입사원 소개</option>
					<%
						} else {
					%>
					<option value="1">신입사원 소개</option>
					<%
						}
					%>

					<%
						if (selected == "선배님 조언") {
					%>
					<option value="2" selected>>선배님 조언</option>
					<%
						} else {
					%>
					<option value="2">선배님 조언</option>
					<%
						}
					%>

					<%
						if (selected == "아시아나IDT 기술 소개") {
					%>
					<option value="3" selected>>아시아나IDT 기술 소개</option>
					<%
						} else {
					%>
					<option value="3">아시아나IDT 기술 소개</option>
					<%
						}
					%>

					<%
						if (selected == "연수원") {
					%>
					<option value="4" selected>>연수원</option>
					<%
						} else {
					%>
					<option value="4">연수원</option>
					<%
						}
					%>
				</select> <label>관심사</label>
			</div>

			<div class="group">
				<input type="file" id="img" name="img" /><span class="highlight"></span><span
					class="bar"></span> <label>사진</label>
			</div>

			<div class="group">
				<textarea rows="5" name="content" required="required"><%=board.getContent() %></textarea>
				<span class="highlight"></span><span class="bar"></span> <label>내용</label>
			</div>

			<div class="btn-box">
				<button type="button" class="btn btn-submit" id="btaddclass">변경
					완료</button>
				<button type="button" class="btn btn-submit" id="btcancel">취소</button>
			</div>
		</form>
	</div>
	<%@include file="../include/footer.jsp"%>