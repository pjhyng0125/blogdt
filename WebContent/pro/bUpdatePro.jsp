<%@page import="java.io.IOException"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="blogdt.vo.BoardVO"%>
<%@page import="blogdt.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
</head>
<body>
	<%
		String id = null;
		String returnPage = "../view/bListView.jsp";

		String realFolder = ""; //웹 어플리케이션상 절대 경로
		String saveFolder = "../upload"; //파일 업로드 폴더
		int maxSize = 5 * 1024 * 1024; //업로드될 최대 파일크기 : 5mb
		String encType = "utf-8"; //인코딩 타입

		ServletContext context = getServletContext();
		MultipartRequest multi = null;

		try {
			id = (String) session.getAttribute("login_id");
			// id = "testID";
			if (id == null || id.equals("")) { // id가 Null 이거나 없을 경우
				returnPage = "/blogdt/view/bListView.jsp"; // 로그인 페이지로 리다이렉트 한다.
				response.sendRedirect("../view/bListView.jsp");
/* 				request.getRequestDispatcher(returnPage).forward(request, response); // 로그인 페이지로 리다이렉트 한다. */
			}
		} catch (Exception e) {
			out.println(e.getMessage());
		}
		try {
			realFolder = context.getRealPath(saveFolder);
			multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
			int num = Integer.parseInt(multi.getParameter("num"));
			String tit = multi.getParameter("title");
			String cat = multi.getParameter("btname");
			String con = multi.getParameter("content");
			String img = multi.getFilesystemName("new_img");
			String omg = multi.getParameter("old_img");
			if(img==null){
				if(omg==null){
					img = "";
				}else{
					img = omg;
				}
			}
			
			switch (cat) {
			case "1":
				cat = "신입사원 소개";
				break;
			case "2":
				cat = "선배님 조언";
				break;
			case "3":
				cat = "아시아나IDT 기술 소개";
				break;
			case "4":
				cat = "연수원";
				break;
			default:
				cat = "기타";
				break;
			}

			BoardDAO dao = BoardDAO.getInstance();
			dao.updateBoard(new BoardVO(num, id, tit, cat, img, con));

		} catch (Exception e) {
			/* returnPage = "../error/500code.jsp"; */
			e.printStackTrace();
		} finally {
			response.sendRedirect("../view/bListView.jsp");
			/* request.getRequestDispatcher(returnPage).forward(request, response); // 로그인 페이지로 리다이렉트 한다. */
		}
	%>
</body>
</html>