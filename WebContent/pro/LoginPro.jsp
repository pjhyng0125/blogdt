<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="blogdt.dao.MemberDAO" %>
<html>
<head>
</head>
<body>
	<%
		// 인코딩 처리
		request.setCharacterEncoding("utf-8"); 
		
		// 로그인 화면에 입력된 아이디와 비밀번호를 가져온다
		String id= request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// DB에서 아이디, 비밀번호 확인
		MemberDAO dao = MemberDAO.getInstance();
		int check = dao.loginCheck(id, pw);
		String msg = "";
		
		// URL 및 로그인관련 전달 메시지
		if(check == 1)	// 로그인 성공
		{ 
			// 세션에 현재 아이디 세팅
			session.setAttribute("sessionID", id);
			msg = "../view/LoginView.jsp";
		}
		else if(check == 0) // 비밀번호가 틀릴경우
		{
			msg = "../view/LoginView.jsp?msg=0";
		}
		else	// 아이디가 틀릴경우
		{
			msg = "../view/LoginView.jsp?msg=-1";
		}
		 
			response.sendRedirect(msg);
		// sendRedirect(String URL) : 해당 URL로 이동
		// URL뒤에 get방식 처럼 데이터를 전달가능
		
		/*
		
		if(check == 1)	// 아이디 있을 경우
		{ 
			// 세션에 현재 아이디 세팅
			session.setAttribute("sessionID", id);
			msg = "../../MainForm.jsp";
		}
		else if(check == 0) // 비밀번호가 틀릴경우
		{
			msg = "../view/LoginForm.jsp";
			request.setAttribute("error", "0");
		}
		else	// 아이디가 틀릴경우
		{
			msg = "../view/LoginForm.jsp";
			request.setAttribute("error", "-1");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(msg); 
		dispatcher.forward(request, response);
		*/
		
	%>
</body>
</html>