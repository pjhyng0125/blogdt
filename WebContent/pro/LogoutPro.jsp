<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
	<%
		session.invalidate(); // 모든세션정보 삭제
		response.sendRedirect("../view/bListView.jsp"); // 로그인 화면으로 다시 돌아간다.
	%>
