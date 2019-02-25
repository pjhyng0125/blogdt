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
</head>
<body> 

<div class="container">
  <h1>타이틀 입니당</h1>
  <p></p>
  <br>
  <p></p>
  <div class="container">     
    <div class="row">
      <div class="col-sm-6 bg-success">
      	<div class="card zoom">
        	<div class="body text-left">
            	<p class="card-title">[금융개발팀 박진형 사원]</p>
                </div>
        <img class="card-img-top" src="parkjh.jpg" style="width:50%" height="30%">
        </div>  
      </div>
      <div class="col-sm-6 bg-warning">
        Board의 Content를 뿌려줄 영역입니당   
      </div>
    </div>
  </div>
</div>

<%@include file="../include/footer.jsp"%>