<% request.setCharacterEncoding("utf-8"); %>

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
        color: white;
        background-color:white;
        clear:left;
        text-align:center;
      }
      ul{
      	list-style-type: none;
      }
      #top_menu{
      	margin: 40px 10px 0 0;
      	float:right;
      }
      #top_menu li{
      	display:inline;
      }
    </style>

  </head>
  <body>
    <div class="container">
      <header>
      <h1><img src="../img/logo.PNG" width="300"></h1>
      </header>
      <ul id="top_menu">
      <li> <button onclick="location=#"><img src="../"></button></li>
      <li> <button onclick="location=#">History</button></li>
      <li> <button onclick="location=#">Statistics</button></li>
      <li> <button onclick="location=#">Log_Out</button></li>
      
      </ul>
  </body>
</html>