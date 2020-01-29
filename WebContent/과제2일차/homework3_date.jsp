<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>homework3_date.jsp</title>
<script>
	window.addEventListener("load", function() {
		
		//버튼 클릭 이벤트 지정
		btnCalc.addEventListener("click", function() {
			var inD = inDate.value;
			var dateArr = inD.split("/");
			var calDate = new Date(dateArr[0],dateArr[1]-1,dateArr[2]);
			
			console.log(calDate);
			//입력날짜와 오늘 날짜까지의 일수 계산하여 div에 출력 "남은 일수는 00일입니다."
			//반올림해서 출력 할 것
			var year = calDate.getFullYear();
			var month = calDate.getMonth();
			var date = calDate.getDate();
			var a = new Date(year, month, date) - new Date() ; //밀리세컨드 long
			
			result.innerHTML += "남은 일수는 " + Math.ceil(a/1000/60/60/24)+ "일 입니다.";
			
		})

		//날짜 연산 가능함 

		// 		console.log(a / 1000 / 60 / 60 /24 ); //정수값으로 계산  
	})
</script>
</head>
<body>
	날짜 카운트다운
	<br>
	<input id="inDate">
	<button type="button" id="btnCalc">계산</button>
	<div id="result"></div>
</body>
</html>