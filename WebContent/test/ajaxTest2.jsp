<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>InputData</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>������
</body>
<script type="text/javascript">
	$(document).ready(function() {

		$.ajax({
			type : "GET", //���۹���� �����Ѵ� (POST,GET)
			url : "test.jsp",//ȣ�� URL�� �����Ѵ�. GET����ϰ�� �ڿ� �Ķ�Ƽ�͸� �ٿ��� ����ص��ȴ�.
			dataType : "text",//ȣ���� �������� �����̴�. xml,json,html,text���� ���� ����� ����� �� �ִ�.
			error : function() {
				alert("��Ž���!!!!");
			},
			success : function(Parse_data) {
				$("#Parse_Area").html(Parse_data); //div�� �޾ƿ� ���� �ִ´�.
				alert("��� ������ �� : " + Parse_data);
			}

		});
	});
</script>
</html>