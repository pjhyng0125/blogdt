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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$("#btn_ok").click(function() {
			alert("게시글이 수정되었습니다.");
		});

		$("#btn_cn").click(function() {
			var r = confirm("확인 버튼을 누르면 게시글을 수정하지 않고 뒤로 돌아갑니다. 수정을 취소 하시겠습니까?");
			if (r == true) {
				location.href = "/blogdt/view/bListView.jsp";
			}
		});//작성 취소
	});//function
</script>
</head>
<body>
	<div class="container">
		<form enctype="multipart/form-data" method="post"
			action="../pro/bUpdatePro.jsp">
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
				<input type="text" name="title" value="<%=board.getTitle()%>"/><label>제목</label> <input
					type="hidden" name="num" value="<%=num %>" required/>
			</div>

			<div class="group">
				<select name="btname" required>
					<option value="0" selected disabled>선택</option>
					<%
						if (selected.equals("신입사원 소개")) {
					%>
					<option value="1">신입사원 소개</option>
					<%
						} else {
					%>
					<option value="1">신입사원 소개</option>
					<%
						}
					%>

					<%
						if (selected.equals("선배님 조언")) {
					%>
					<option value="2" selected>선배님 조언</option>
					<%
						} else {
					%>
					<option value="2">선배님 조언</option>
					<%
						}
					%>

					<%
						if (selected.equals("아시아나IDT 기술 소개")) {
					%>
					<option value="3" selected>아시아나IDT 기술 소개</option>
					<%
						} else {
					%>
					<option value="3">아시아나IDT 기술 소개</option>
					<%
						}
					%>

					<%
						if (selected.equals("연수원")) {
					%>
					<option value="4" selected>연수원</option>
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
				<input type="file" name="new_img" /><span class="highlight"></span><span
					class="bar"></span>
				<%
					if(board.getImg() != null){
				%>
						<label>등록된 사진 : <%=board.getImg() %></label>
				<% 
					}else{
				%>
						<label>사진</label>
				<%	
					}
				%>
				<input type="hidden" name="old_img" value="<%=board.getImg() %>"/>
			</div>

			<div class="group">
				<textarea rows="5" name="content" required><%=board.getContent()%></textarea>
				<span class="highlight"></span><span class="bar"></span> <label>내용</label>
			</div>

			<div class="btn-box">
				<button type="submit" class="btn btn-submit" id="btn_ok">수정
					완료</button>
				<button type="button" class="btn btn-submit" id="btn_cn">수정
					취소</button>
			</div>
		</form>
	</div>
	<%@include file="../include/footer.jsp"%>