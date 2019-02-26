<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    
<%-- 자바빈 클래스 import --%>      
<%@ page import="blogdt.vo.MemberVO" %>
<%-- DAO import --%>   
<%@ page import="blogdt.dao.MemberDAO" %>
<html>
<head>
	<title>회원가입 처리 JSP</title>
	
	<!-- css 파일 분리 -->
	<link href='../../css/join_style.css' rel='stylesheet' style='text/css'/>
	
</head>
<body>
	<%-- JoinForm.jsp에서 입력한 정보를 넘겨 받아 처리한다. --%>
	<% 
		// 한글 깨짐을 방지하기 위한 인코딩 처리
		request.setCharacterEncoding("utf-8"); 
	%>
	
	<%-- 자바빈 관련 액션태그 사용 --%>
	<jsp:useBean id="memberVo" class="blogdt.vo.MemberVO">
	<jsp:setProperty name="memberVo" property="*"/>
<%-- 	<jsp:setProperty name="memberVo" property="id"/>	
	<jsp:setProperty name="memberVo" property="pw"/>
	<jsp:setProperty name="memberVo" property="name"/>
	<jsp:setProperty name="memberVo" property="jyear"/>
	<jsp:setProperty name="memberVo" property="major"/>
	<jsp:setProperty name="memberVo" property="position"/>
	<jsp:setProperty name="memberVo" property="dept"/>
	<jsp:setProperty name="memberVo" property="birth"/> --%>
	</jsp:useBean>
	<%
		MemberDAO dao = MemberDAO.getInstance();

		 dao.insertMember(memberVo);
	%>
	
	<div id="wrap">
		<br><br>
		<b><font size="5" color="gray">회원가입 정보를 확인하세요.</font></b>
		<br><br>
		<font color="blue"><%=memberVo.getName() %></font>님 가입을 축하드립니다.
		<br><br>
		
		<%-- 자바빈에서 입력된 값을 추출한다. --%>
		<table>
			<tr>
				<td id="title">아이디</td>
				<td><%=memberVo.getId() %></td>
			</tr>
						
			<tr>
				<td id="title">비밀번호</td>
				<td><%=memberVo.getPw() %></td>
			</tr>
					
			<tr>
				<td id="title">이름</td>
				<td><%=memberVo.getName() %></td>
			</tr>
					
			<tr>
				<td id="title">생년월일</td>
				<td><%=memberVo.getBirth()%></td>
			</tr>
					
			<tr>
				<td id="title">전공</td>
				<td>
					<%=memberVo.getMajor() %>
				</td>
			</tr>
					
			<tr>
				<td id="title">직책</td>
				<td>
					<%=memberVo.getPosition() %>
				</td>
			</tr>
					
			<tr>
				<td id="title">입사년도</td>
				<td><%=memberVo.getJyear() %></td>
			</tr>
			<tr>
				<td id="title">부서</td>
				<td>
					<%=memberVo.getDept() %>
				</td>
			</tr>
		</table>
		
		<br>
		<input type="button" value="확인">
	</div>
</body>
</html>