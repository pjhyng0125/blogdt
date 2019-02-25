<%@page import="java.util.List"%>
<%@page import="blogdt.vo.BoardVO"%>
<%@page import="blogdt.dao.BoardDAO"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커넥션 풀 테스트</title>
</head>
<body>
	<h3>커넥션 풀아 한번에 되자 제발</h3>
	<table border="1">
		<tr>
			<td width="100">아이디</td>
			<td width="100">패스워드</td>
			<td width="100">이름</td>
			<td width="250">생년월일</td>
		</tr>
		<%
			BoardDAO dao = BoardDAO.getInstance();
			System.out.println("insert 테스트");
			try {
				dao.insertBoard(new BoardVO(0, "test01", "dao 테스트 제목", "신입사원 소개", "", "제곧내"));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("insert 완료");

			System.out.println("selectAll 테스트");
			List<BoardVO> boards;
			int num = -1;
			try {
				boards = dao.selectBoardArr();
				if (boards != null) {
					BoardVO board = boards.get(boards.size() - 1);
					System.out.println("id: " + board.getId());
					System.out.println("title: " + board.getTitle());
					System.out.println("content: " + board.getContent());
					num = board.getNum();
				} else {
					System.out.println("게시판이 비어있음.");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("selectAll 완료");

			System.out.println("select 테스트");
			BoardVO board = null;
			if (num > -1) {
				try {
					board = dao.selectBoard(num);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println("제목 : " + board.getTitle());
			}
			System.out.println("select 테스트 완료");
			System.out.println("게시글 수정 테스트");
			if (board != null) {
				board.setTitle("제목 수정 테스트");
				try {
					dao.updateBoard(board);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			System.out.println("게시글 수정 테스트 완료");
			/* System.out.println("게시글 삭제 테스트");
			try {
				dao.deleteBoard(board.getNum());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("게시글 삭제 테스트 완료");*/
		%>
	</table>
</body>
</html>