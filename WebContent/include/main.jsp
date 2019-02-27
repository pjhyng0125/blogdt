<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <style media="screen">
    /*
      div.container{
        width: 100%;
        border: 1px solid white;
      }
      *{
      	margin:0;
      	padding:1;
      }
      header, footer{
        padding: 1em;
        color:white;
        clear:left;
        text-align:center;
      }
      ul{
      	list-style-type: none;
      }
      .top_menu{
      	margin: 30px 10px 0 0;
      	float:right;
      }
      .top_menu li{
      	display:inline;
      }
      .welcome{
      	margin-right:10px;
      	float:right;
      }
      .log{
      	float:right;
      }
      .top{
        display:inline;
      }
      .logo{
        text-align: center;
        display: block;
      }
      */
    </style>
     
    <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script> -->
	 <link rel="stylesheet" href="../include/btn_hovereffect.css">
	 <link rel="stylesheet" href="../include/borderstyle.css">
  </head>
  <body>
  <div class="container">
  	<div class="log"><a href="bListView.jsp" class="snip1535">로그아웃</a></div>
    <div class="welcome"><p>Hello .</p></div>
    
    <div class="logo">
      <a href="/blogdt/view/bListView.jsp"><img src="../img/png/logo2.png" width="300px"></a>
    </div>
    <div class="top_menu">
      <ul>
      <li>
	      <div class="button-1">
		    <div class="eff-1"></div>
		    <a href="#"> 글쓰기 </a>
		  </div>
	  </li>
      
      <li><a href="bInsertView.jsp" class="button_base b01_simple_rollover">글쓰기</a></li>
      <li><a href="bHistoryView.jsp" class="button_base b01_simple_rollover" >내 게시물</a></li>
      <li><a href="dShowView.jsp" class="button_base b01_simple_rollover" >통계</a></li>
      </ul>
    </div>
  </div>
  </body>
</html>