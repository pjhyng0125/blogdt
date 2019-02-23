<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/reference.jsp"%>
<%@page import="blogdt.dao.BListDAO"%>
<%@page import="blogdt.dto.BListDTO"%>
<%@page import="java.util.List"%>
<title>bListView.jsp</title>
<!-- 
	파일명: bListView.jsp (board List view)
	마지막 수정 날짜: 19/02/23  
	작성자: 박진형
	기능: 게시물 목록을 보여주는 화면 (Card 활용)
-->

<%--
	List<BListDAO> list=null;
	BListDAO dao=BListDAO.getInstance();
	list=dao.getBoardList();//게시물이 없다면 list=> null (처리해줘야 함!)
--%>
<%
	List<BListDTO> list=null;
	BListDAO dao=BListDAO.getInstance();
	list=dao.getBoardList();
%>

</head>
<body>
<div class="container">
<form>
	<div class="group">
			<select name="select" id="select" required="required">
				<option value="0">==선택==</option>
				<option value="1">전체보기</option>
				<option value="2">신입사원 소개</option>
				<option value="3">선배님들 조언</option>
				<option value="4">아시아나IDT 기술소개</option>
				<option value="5">연수원</option>
				<option value="6">봉사활동</option>
			</select>
		<label >모아보기</label>
	</div>
</form>
<br>
<!-- card 뿌려주기 시작! -->
  <div class="row">
  	<div class="col-md-3 class-list">
    	<div class="card zoom">
        <img class="card-img-top" src="../upload/parkjh.JPG" style="width:100%" height="30%">
        	<div class="body text-center">
            	<p class="card-title">[신입사원 소개]</p>
        		<p class="card-text">금융개발팀 박진형</p>
                <a href="#" class="btn btn-warning">See Profile</a>
            </div>
        </div>
    </div>

 	<%
 	if(list != null){
 		for(int i=0; i<list.size(); i++){
 	%>
 	<div class="col-md-3 class-list">
    	<div class="card zoom">
        	<img class="card-img-top" src="../upload/parkjh.JPG" style="width:100%" height="30%">
        	<div class="body text-center">
            	<p class="card-title">[신입사원 소개]</p>
        		<p class="card-text">금융개발팀 박진형</p>
                <a href="#" class="btn btn-warning">See Profile</a>
            </div>
        </div>
    </div>
 	<%
 		}
 	}
 	%>
  </div><!-- row -->
</div><!-- Container -->
<%@include file="../include/footer.jsp"%>