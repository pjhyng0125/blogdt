<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/reference.jsp"%>
<title>dShowView.jsp</title>
<!-- 
	파일명: dShowView.jsp (data show view)
	마지막 수정 날짜: 19/02/23
	작성자: 박진형
	기능: DB 내의 유의미한 data를 시각화해서 도표로 보여주는 통계 화면
-->
<script src="http://code.highcharts.com/highcharts.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	$(function () {
		showAge();
		$('#btage').click(function(){
			showAge();
		});
		$('#btgu').click(function(){
			showInterest();
		});
		$('#btact').click(function(){
			showAct();
		});
		$('#btmypage').click(function(){
			location.href="bListView.jsp";
		});
	});//function
//카테고리 n개/ 카테고리당 수치 n개
	function showInterest(){
		$('#test').highcharts({
			chart:{
				type: 'column'
			},
			title: {
				text: '아시아나IDT 신입사원 나이'
			},
			xAxis:{
				categories:['25','26','27','28','29','30','31']
			},
			yAxis:{
				title:{
					text: '명'
				}
			},
			series: [{
				name: '신입사원 나이',
 				data: [2,1,4,1,1,1,1]
			}]
		});
	}//showInterest
//나이 수치 6개
	function showAge(){
		Highcharts.chart('test', {

		    title: {
		        text: '아시아나IDT 신입사원의 전공'
		    },

		    series: [{
		        type: 'pie',
		        allowPointSelect: true,
		        keys: ['name', 'y', 'selected', 'sliced'],
		        data: [
		            ['소프트웨어학', 4, false],
		            ['컴퓨터공학', 5, false],
		            ['정보통신학', 6, false],
		            ['경영학', 2, false],
		            ['경제학', 1, false]
		        ],
		        showInLegend: true
		    }]
		});
	}//showAge
//실내활동/야외활동 수치 2개
	function showAct(){
		$('#test').highcharts({
			chart:{
				type: 'bar'
			},
			title: {
				text: '남자 : 여자'
			},
			xAxis:{
				categories:['아시아나IDT 성비']
			},
			yAxis:{
				title:{
					text: '관심 수치'
				}
			},
			series: [{
				name: '남자',
				data: [13]
			},{
				name: '여자',
				data: [4]
			}]
		});
	}//showAct
</script>
</head>
<body>
<div class="container">
<form>
	<h1>Career Info 통계</h1>
	<div class="btn-box">
		<button type="button" class="btn btn-submit" id="btage">전공</button>
		<button type="button" class="btn btn-submit" id="btgu">나이</button>
		<button type="button" class="btn btn-submit" id="btact">성비</button>
	</div>
	<div id="test" style="width:100%; height:400px;"></div>
	<div class="btn-box">
		<button type="button" class="btn btn-cancel" id="btmypage">마이페이지 화면으로</button>
	</div>
</form>
</div>

<%@include file="../include/footer.jsp"%>