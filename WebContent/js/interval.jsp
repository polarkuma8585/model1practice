<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>interval.jsp</title>
<script>
// 타이머 연습

// 반복 실행할 함수
 function printTime(){
	result.innerHTML = (new Date()).getSeconds();
	}
	window.addEventListener("load", function(){
		setInterval(printTime, 1000);
		//이미지 변경 타이머 
		setInterval(imgTrans, 2000);
	});
	//이미지 배열
	
	//2초마다 이미지가 변경되도록 작성(random, 인덱스 증가)
	function imgTrans(){
		var imgs = ["../images/Desert.jpg","../images/Jellyfish.jpg","../images/Chrysanthemum.jpg"]
		var len = imgs.length;
			myImg.src = imgs[Math.floor(Math.random() * 2 + 1)];

	}
	
</script>
</head>
<body>
	<div id="result"></div>
	<img src ="../images/Desert.jpg" id="myImg"/>
</body>
</html>