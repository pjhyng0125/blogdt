<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
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

  </head>
  <body>
  <div class="container">
  	<div class="log"><a href="bListView.jsp"><img src="../img/png/logout.png" width="50"></a></div>
    <div class="welcome"><p>Hello .</p></div>
    
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
  </body>
</html>
