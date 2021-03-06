<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- reference Bootstrap 4 -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> 
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700|Nanum+Gothic:400,700,800|Nanum+Pen+Script&amp;subset=korean" rel="stylesheet">
<style type="text/css">

  *,
:before,
:after {
  box-sizing: border-box;
}
*{
	font-family: 'Nanum Gothic', sans-serif;
}
h1 {
	font-family: 'Nanum Gothic', sans-serif;
}
 body {
  background: #FFFFFF;
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

.btn {
  background: #ef000f;
  color: #959595;
  border: none;
  padding: 10px 20px;
  letter-spacing: 0.06em;
  text-transform: uppercase;
  text-decoration: none;
  outline: none;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
  transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
}
.btn:hover {
  color: #8b8b8b;
  box-shadow: 0 7px 14px rgba(0, 0, 0, 0.18), 0 5px 5px rgba(0, 0, 0, 0.12);
}
.btn.btn-link {
  background: #ef000f;
  color: #d3eafd;
}
.btn.btn-link:hover {
  background: #0d8aee;
  color: #deeffd;
}
.btn.btn-submit {
  background: #ef000f;
  color: #deeffd;
}
.btn.btn-submit:hover {
  background: #0d8aee;
  color: #deeffd;
}
.btn.btn-cancel {
  background: #eee;
}
.btn.btn-cancel:hover {
  background: #e1e1e1;
  color: #8b8b8b;
}

.btn-box {
  text-align: center;
  margin: 50px 0;
}
.btn-box2 {
  text-align: center;
  margin: 3px 0;
}
.btn-p{
	padding: 5px;
}

a:hover{
	text-decoration:none;
}
.sizeRadio{
 float:left;
 width: 16px;
}


.button-3 {
	width: 100px;
	height: 30px;
	border: 2px solid #34495e;
	float: left;
	text-align: center;
	cursor: pointer;
	position: relative;
	box-sizing: border-box;
	overflow: hidden;
	margin: 0 0 5px 5px;
}

.button-3 a {
	font-family: 'Nanum Gothic', sans-serif;
	font-size: 16px;
	color: #34495e;
	text-decoration: none;
	line-height: 30px;
	transition: all .5s ease;
	z-index: 0;
	position: relative;
}

.eff-3 {
	width: 150px;
	height: 50px;
	bottom: -50px;
	background: #34495e;
	position: absolute;
	transition: all .5s ease;
	z-index: -1;
}

.button-3:hover .eff-3 {
	bottom: 0;
}

.button-3:hover a {
	color: #fff;
}


/*로그인, 회원가입 버튼*/

.button-2{
  width: 100px;
  height: 30px;
  border:2px solid #ff6f61;
  float:left;
  text-align:center;
  cursor:pointer;
  position:relative;
  box-sizing:border-box;
  overflow:hidden;
  margin:0 0 40px 50px;
}
.button-2 a{
  font-family:'Nanum Gothic', sans-serif;
  font-size:16px;
  color:#ff6f61;
  text-decoration:none;
  line-height:30px;
  transition:all .5s ease;
  z-index:0;
  position:relative;
}
.eff-2{
  width:140px;
  height:50px;
  top:-50px;
  background:#ff6f61;
  position:absolute;
  transition:all .5s ease;
  z-index:-1;
}
.button-2:hover .eff-2{
  top:0;
}
.button-2:hover a{
  color:#fff;
}
</style>
