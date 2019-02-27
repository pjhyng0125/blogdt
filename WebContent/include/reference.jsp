<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- reference Bootstrap 4 -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  
<style type="text/css">
/*
  *,
:before,
:after {
  box-sizing: border-box;
}

body {
  background: #EEEEEE;
} 

form {
  width: 320px;
  margin: 45px auto;
}
form h1 {
  font-size: 2em;
  font-weight: 300;
  text-align: center;
  color: #ef000f;
}
form h5 {
  text-align: center;
  text-transform: uppercase;
  color: #424242;   
}
form hr.sep {
  background: #ef000f;
  box-shadow: none;
  border: none;
  height: 2px;
  width: 25%;
  margin: 0px auto 45px auto;
}
form .emoji {
  font-size: 1.2em;
}
*/
.group {
  position: relative;
  margin: 20px 0;
}

.group2 {
  position: absolute;
}

textarea {
  resize: none;
}

input,
select,
textarea {
  background: none;
  color: #424242;
  font-size: 18px;
  padding: 10px 10px 10px 5px;
  display: block;
  width: 320px;
  border: none;
  border-radius: 0;
  border-bottom: 1px solid #424242;
}
select:focus,
input:focus,
textarea:focus {
  outline: none;
}
input:focus ~ label, input:valid ~ label,
select:focus ~ label, select:valid ~ label,
textarea:focus ~ label,
textarea:valid ~ label {
  top: -14px;
  font-size: 12px;
  color: #ef000f;
}
input:focus ~ .bar:before,
select:focus ~ .bar:before,
textarea:focus ~ .bar:before {
  width: 320px;
}

input[type="password"] {
  letter-spacing: 0.3em;
}

label {
  color: #424242;
  font-size: 16px;
  font-weight: normal;
  position: absolute;
  pointer-events: none;
  left: 5px;
  top: 10px;
  transition: 300ms ease all;
}

.bar {
  position: relative;
  display: block;
  width: 320px;
}
.bar:before {
  content: '';
  height: 2px;
  width: 0;
  bottom: 0px;
  position: absolute;
  background: #ef000f;
  transition: 300ms ease all;
  left: 0%;
}
</style>