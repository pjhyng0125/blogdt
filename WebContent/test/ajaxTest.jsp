<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Ajax 기본적인 통신방법</title>
<script type="text/javascript">
	$('#btn1').click(function() {
		$.ajax({
			type : "get", //전송방식을 지정한다 (POST,GET)
			url : "test.jsp",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType : json,//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			data : {"key":"value"},
			error : function() {
				$("#Parse_Area").html("통신실패");
			},
			success : function(Parse_data) {
				$("#Parse_Area").html(Parse_data); //div에 받아온 값을 넣는다.
				// alert("통신 데이터 값 : " + Parse_data);
			}
		});
	});
</script>

</head>
<body>
	<button type="button" id="btn1">보내기</button>
	<div id="Parse_Area"> </div>
	데이터
</body>
</html>