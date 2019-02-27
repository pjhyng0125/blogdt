<%@page import="blogdt.dao.BListDAO"%>
<%@page import="blogdt.dto.BMyDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/reference.jsp"%>
<title>bHistory.jsp</title>
<!-- 
	파일명: bHistory.jsp (board List view)
	마지막 수정 날짜: 19/02/27 
	작성자: 박진형
	기능: 내가 작성한 게시물 목록을 보여주는 화면 (Table에 뿌리기)
-->

<%
	List<BMyDTO> list=null;
	BListDAO dao=BListDAO.getInstance();
	session.getAttribute("sessionid");
	list=dao.getMyList("pjhyng0125");
%>

</head>
<body>
<div class="container">
	<h1>내가 작성한 게시물 목록</h1>
	<p>내가 쓴 글의 목록을 출력합니다.</p>
	<table class="table table-hover">
    <thead>
      <tr>
        <th>num</th>
        <th>id</th>
        <th>title</th>
        <th>btype</th>
      </tr>
    </thead>
    <tbody>
    <%
 	if(list != null){
 		for(int i=0; i<list.size(); i++){
 	%>
      <tr>
        <td><%=list.get(i).getNum() %></td>
        <td><%=list.get(i).getId() %></td>
        <td><a href="bContentView.jsp?num=<%=list.get(i).getNum() %>"><%=list.get(i).getTitle() %></a></td>
        <td><%=list.get(i).getBtype() %></td>
      </tr>
    <%
 	}
 }
 %>
  </table>
</div><!-- Container -->
<%@include file="../include/footer.jsp"%>