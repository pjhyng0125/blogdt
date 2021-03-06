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
	<% 
		// 한글 깨짐을 방지하기 위한 인코딩 처리
		request.setCharacterEncoding("utf-8"); 
	%>
	
	<jsp:useBean id="memberVo" class="blogdt.vo.MemberVO">
	<jsp:setProperty name="memberVo" property="*"/>
	</jsp:useBean>
	<%
		
		MemberDAO dao = MemberDAO.getInstance();

		 dao.insertMember(memberVo);
	%>
	
	<script>
	document.location.href="../view/bListView.jsp";
	</script>
	
	<%-- <div id="wrap">
		<br><br>
		<b><font size="5" color="gray">회원가입 완료</font></b>
		<br><br>
		<font color="blue"><%=memberVo.getName() %></font>님 가입을 축하드립니다.
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
		<a href="../view/bListView.jsp">홈으로</a>
	</div> --%>
</body>
</html> 