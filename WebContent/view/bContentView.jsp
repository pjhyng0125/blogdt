<%@page import="blogdt.dao.BListDAO"%>
<%@page import="blogdt.dto.BContentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/reference.jsp"%>
<title>bContentView.jsp</title>
<!-- 
	파일명: bContentView.jsp (board content view)
	마지막 수정 날짜: 19/02/23  
	작성자: 박진형
	기능: 게시물 내용을 보여주는 화면
-->
<style>
	h1{
		text-align: center;
	}
</style>

<%
	int num=Integer.parseInt(request.getParameter("num"));
	BContentDTO dto=null;
	BListDAO dao=BListDAO.getInstance();
	dto=dao.getBoardContent(num);
	
	String title=null; //제목을 담을 String 변수
	if(dto.getBtype().equals("신입사원 소개"))
		title="["+dto.getJyear() +" "+dto.getBtype()+"] "+dto.getTitle();
	else
		title=dto.getBtype()+" "+dto.getTitle();
		
	String personinfo=null;	//사람의 정보를 담을 String 변수
	personinfo="["+dto.getDept()+" "+dto.getName()+" "+dto.getPosition()+"]";
%>

<script type="text/javascript">
	$(function(){
		$('#btupdate').click(function(){
			location.href="../view/bUpdateView.jsp?num="+<%=num %>;
		});
		$('#btmain').click(function(){
			location.href="../view/bListView.jsp";
		});
	});
</script>

</head>
<%@include file="../include/main.jsp"%>

<div class="container">
  <h1><%=title %></h1>
  <p></p>
  <br>
  <p></p>
  <div class="container">     
    <div class="row">
      <div class="col-sm-5">
      	<div class="card zoom">
        	<div class="card-header text-center">
            	<p class="card-title"><%=personinfo %></p>
            </div>
            <div class="card-header card-body img-center">
        		<img class="mx-auto d-block" src="../upload/<%=dto.getImg() %>" style="width:100%" height="50%">
            </div>
        </div>  
      </div>
      <div class="col-sm-7">
      	<div class="card zoom">
        	<div class="body text-left">
      			<div class="col-sm-6">
          			<!-- ※ Board의 Content를 뿌려줄 영역입니당  -->
      			 	<%=dto.getContent() %>  
     			 </div>        		
            </div>
        </div>  
      </div>
    </div>
  </div>
  
  <div class="btn-box">
  <%
  	String login_id=(String)session.getAttribute("login_id");
  if(login_id == dto.getId()){
  %>
	<a type="button" id="btupdate" class="w3-btn w3-red">게시물 수정</a>
	<%
  }
	%>
	<a type="button" id="btmain"  class="w3-btn w3-border">목록으로</a>
  </div>
</div>  

<%@include file="../include/footer.jsp"%>