<%@page import="blogdt.vo.BoardVO"%>
<%@page import="blogdt.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<title>글쓰기</title>
</head>
<body>
	<%
		String id = null;
		String returnPage = "../view/bListView.jsp";
		try {
			id = (String) session.getAttribute("sessionID");
			if (id == null || id.equals("")) { // id가 Null 이거나 없을 경우
				returnPage = "../view/loginView.jsp"; // 로그인 페이지로 리다이렉트 한다.
			}
		} catch (Exception e) {
			out.println(e.getMessage());
		}

		String tit = request.getParameter("t");
		String cat = request.getParameter("c");
		String img = request.getParameter("i");
		String con = request.getParameter("n");

		BoardDAO dao = BoardDAO.getInstance();
		try {
			dao.insertBoard(new BoardVO(0, id, tit, cat, img, con));
		} catch (Exception e) {
			out.println(e.getMessage());
		}finally{
			request.getRequestDispatcher(returnPage).forward(request,response); // 로그인 페이지로 리다이렉트 한다.
			
		}
	%>
</body>
</html>