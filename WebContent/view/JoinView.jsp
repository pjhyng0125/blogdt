<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/reference.jsp"%>
<script type="text/javascript">
	function pos_change() {
		var pos = document.getElementById("position");
		var index = pos.selectedIndex;
		if (index == 1) {
			document.getElementById("team").style.display = "none";
		} else {
			document.getElementById("team").style.display = "block";
		}
	}
	function validate() {
		var re = /^[a-zA-Z0-9]{4,12}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
		//    var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		// 이메일이 적합한지 검사할 정규식

		var id = document.getElementById("id");
		var pw = document.getElementById("pw");
		//    var email = document.getElementById("email");
		var num1 = document.getElementById("num1");
		var num2 = document.getElementById("num2");

		// ------------ 이메일 까지 -----------

		if (!check(re, id, "아이디는 4~12자의 영문 대소문자와 숫자로만 입력")) {
			return false;
		}

		if (!check(re, pw, "패스워드는 4~12자의 영문 대소문자와 숫자로만 입력")) {
			return false;
		}

		if (join.pw.value != join.pwconfirm.value) {
			alert("비밀번호가 다릅니다. 다시 확인해 주세요.");
			join.pwconfirm.value = "";
			join.pwconfirm.focus();
			return false;
		}

		//    if(email.value=="") {
		//        alert("이메일을 입력해 주세요");
		//        email.focus();
		//        return false;
		//    }

		//    if(!check(re2, email, "적합하지 않은 이메일 형식입니다.")) {
		//        return false;
		//    }

		if (join.name.value == "") {
			alert("이름을 입력해 주세요");
			join.name.focus();
			return false;
		}

		// 관심분야, 자기소개 미입력시 하라는 메시지 출력
		if (join.birth.value == "") {
			alert("생년월일을 입력해주세요");
			join.birth.focus();
			return false;
		}

		if (join.position.value == "") {
			alert("직급을 입력해주세요");
			join.self.focus();
			return false;
		}

		alert("회원가입이 완료되었습니다.");
	}

	function check(re, what, message) {
		if (re.test(what.value)) {
			return true;
		}
		alert(message);
		what.value = "";
		what.focus();
		//return false;
	}
</script>

<title>joinView.jsp</title>
   
</head>
<body>
	<div class="container">
		<form name="join" onsubmit="return validate();" action="../pro/JoinPro.jsp" method="post" novalidate>
		<h1>회원 가입</h1>
			<br>
			<div class="group" >
				<input type="text" name="id" required="required" id="id" onkeydown="idChk()"> <span
					class="highlight"></span> <span class="bar"></span> <label >아이디</label>
			</div>
			<div class="idcheck">
			
			</div>

			<div class="group">
				<input type="password" name="pw" onkeyup="" required="required" id="pw"><span
					class="highlight"></span><span class="bar"></span> <label>비밀번호</label>
			</div>

			<div class="group">
				<input type="password" onkeyup="" required="required" id="pwconfirm"><span class="highlight"></span><span
					class="bar"></span> <label>비밀번호 확인</label>
			</div>

			<div class="group">
				<input type="text" name="name" id="name" required="required"><span
					class="highlight"></span><span class="bar"></span> <label>이름</label>
			</div>

			<div class="group">
				<input type="date" id="birth" name="birth"><span class="highlight"></span><span
					class="bar"></span> <label>생년월일</label>
			</div>
			<br>

			<div class="group">
				<select name="major" name="major" id="major" required="required">
					<option value=""></option>
					<option value="컴퓨터공학">컴퓨터공학</option>
					<option value="정보통신공학">정보통신공학</option>
					<option value="소프트웨어공학">소프트웨어공학</option>
					<option value="경영학">경영학</option>
					<option value="경제학">경제학</option>
					<option value="교육학">교육학</option>
					<option value="기타">기타</option>
				</select> <label>전공</label>
			</div>
			<br>

			<div class="group">
				<select name="position" name="position" required="required"
					id="position" onchange="pos_change()">
					<option value=""></option>
					<option value="일반">일반</option>
					<option value="사원">사원</option>
					<option value="대리">대리</option>
					<option value="과장">과장</option>
					<option value="임원">임원</option>
					<option value="사장">사장</option>
				</select> <label>직급</label>
			</div>


			<div id="team">
				<div class="group">
					<input type="text" name="jyear" id="jyear"><span class="highlight"></span><span
						class="bar"></span> <label>입사년도</label>
				</div>

				<div class="group">
					<select name="dept" required="required" id="dept">
						<option value="s"></option>
						<option value="항공관리">항공관리</option>
						<option value="항공영업">항공영업</option>
						<option value="데이터센터">데이터센터</option>
						<option value="LCC사업부">LCC사업부</option>
						<option value="그룹웨어 서비스">그룹웨어 서비스</option>
						<option value="금융">금융</option>
						<option value="보험">보험</option>
						<option value="건설">건설</option>
					</select> <label>부서</label>
				</div>
			</div>
			<br>

			<!-- <div class="group">
			<label>당신의 정보를 통계자료로 사용해도 될까욥?</label>
			<input type="checkbox" name="dept">
		</div> -->
			<div class="btn-box">
				<button type="submit" class="btn btn-submit" id="btjoin">회원가입</button>
				<button type="button" class="btn btn-cancel" id="btcancel" onclick="document.location.href='../view/bListView.jsp'">취소</button>
			</div>
		</form>
	</div>
<%@include file="../include/footer.jsp"%>