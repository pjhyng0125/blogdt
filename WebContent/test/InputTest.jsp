<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>레코드 추가</title>
</head>
<body>
	<h2>member 테이블에 레코드 추가</h2>
	<form method="post" action="inputTestPro.jsp" id="form1">
		아이디 : <input type="text" name="id" maxlength="50"><br>
		패스워드 : <input type="password" name="passwd" maxlength="16"><br>
		이름 : <input type="text" name="name" maxlength="10"><br> 
		
	</form>
	<button type="submit" value="입력완료">버튼</button>
</body>
</html>
