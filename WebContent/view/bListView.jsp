<%--
<%@page import="blogdt.dto.BListDTO"%>
<%@page import="blogdt.dao.BListDAO"%>
<%@page import="java.util.List"%>
 --%>
<%@page import="blogdt.dao.BListDAO"%>
<%@page import="blogdt.dto.BListDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/reference.jsp"%>
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
	String selector="전체보기";
	selector=request.getParameter("selector");//select 선택 접속 시
	
	if(selector==null)//bListView.jsp 바로 접속 시
		selector="전체보기";
		
	List<BListDTO> list=null;
	BListDAO dao=BListDAO.getInstance();
%>
<script>
	$(function(){
		$("#selector").change(function(){
			if($("#selector").val()==1){
				location.href="bListView.jsp?selector="+encodeURI('전체보기','UTF-8');
			} else if($("#selector").val()==2){
				location.href="bListView.jsp?selector="+encodeURI('신입사원 소개','UTF-8');				
			} else if($("#selector").val()==3){
				location.href="bListView.jsp?selector="+encodeURI('선배님들 조언','UTF-8');							
			} else if($("#selector").val()==4){
				location.href="bListView.jsp?selector="+encodeURI('아시아나IDT 기술소개','UTF-8');											
			} else if($("#selector").val()==5){
				location.href="bListView.jsp?selector="+encodeURI('연수원','UTF-8');;																
			} else if($("#selector").val()==6){
				location.href="bListView.jsp?selector="+encodeURI('봉사활동','UTF-8');;																				
			} else{
				alert("<select>: 불가능한 값이 선택되었습니다.");
			}
		});
	});
</script>
<%
	list=dao.getSelectList(selector);
%>
</head>
<%@include file="../include/main.jsp"%>
<article>
<div class="container">
<form>
	<div class="group">
			<select name="select" id="selector" required="required">				
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
 	<%
 	if(list != null){
 		for(int i=0; i<list.size(); i++){
 	%>

 	<div class="col-md-3 class-list">
 		<input type="hidden" id="">
    	<div class="card zoom">
        	<img class="card-img-top" src="<%=list.get(i).getImg() %>" style="width:100%" height="30%">
        	<div class="body text-center">
            	<p class="card-title">[<%=list.get(i).getBtype() %>]</p>
        		<p class="card-text"><%=list.get(i).getDept() %> <%=list.get(i).getName() %></p>
                <a href="bContentView.jsp?num=<%=list.get(i).getNum() %>" class="btn btn-warning">See More<%=list.get(i).getNum() %></a>
            </div>
        </div>
    </div>
 	<%
 		}
 	}
 	%>
  </div><!-- row -->
</div><!-- Container -->
</article>
<%@include file="../include/footer.jsp"%>