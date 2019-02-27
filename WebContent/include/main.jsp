<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "../view/LoginView.jsp"%>
  
<!DOCTYPE html>
    <meta charset="utf-8">
    <style media="screen">
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
    </style>

  <%
  	String sessionID= (String)session.getAttribute("session_ID");
  %>
  <div class="container">
  	<div class="log">
  	
  	<% 
  		if(sessionID == null){ //세션이 없을때
  	%>	
  			<a onclick="document.getElementById('id01').style.display='block'" width='50'>로그인</a>
  			<a href="../view/JoinView.jsp">회원가입</a>
  	<%
  		}
  		else{
  			out.println("<div class='welcome'><p style='display : inline'>");
    		out.println(sessionID+"님 반갑습니다.</p>");
    		out.println("<a href='../pro/LogoutPro.jsp' style='display : inline'>로그아웃</a></div>");
  		}
  	%>
  	</div>
    
    <div class="logo">
      <img src="../img/png/logo2.png" width = "350">
    </div>
    <div class="top_menu">
      <ul>
      <li><a href="bInsertView.jsp"><img src="../img/png/writing2.png" width="60"></a></li>
      <li><a href="bHistory.jsp"><img src="../img/png/history2.png" width="60"></a></li>
      <li><a href="dShowView.jsp"><img src="../img/png/statistics2.png" width="60"></a></li>
      </ul>
    </div>
  </div>
