<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/reference.jsp"%>
<title>login.jsp</title>
<!-- 
	파일명: loginView.jsp (login view)
	마지막 수정 날짜: 19/02/23  
	작성자: 이승xxxxx
	기능: 로그인 화면
-->
</head>
<body><!-- test -->
<div class="container">
	<form>
		<h1>로그인</h1>
		<div class="group">
			<input type="text" id="id" required="required"/><span class="highlight"></span><span class="bar"></span>
			<label>아이디</label>
		</div>
		<div class="group">
			<input type="password" id="pw" required="required"/><span class="highlight"></span><span class="bar"></span>
			<label>비밀번호</label>
		</div>
		
		<div class="btn-box">
			<button type="button" id="btlogin" class="btn btn-submit">로그인</button>
			<button type="button" id="btcancel" class="btn btn-cancel">메인으로</button>
		</div>
		<div class="btn-box">
			<pre><a href="#">회원 가입</a></pre>
		</div>
	</form>
</div>
<%@include file="../include/footer.jsp"%>