<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add.jsp</title>
<style>
.back {background-color: cyan;}
.back:hover {background-color: red;}
</style>
<script>
 //태그 추가
 window.addEventListener("load", function(){
	 btn.addEventListener("click",function(){
		 // div input 추가
		 var newInput = document.createElement("input");
		 
		 // 태그 속성 지정
		 // 입력값에 "홍길동"
		 newInput.value = "홍길동";
		 // class 지정
		 newInput.classList.add("back");
		 // 배경색을 노란색
// 		 newInput.style.backgroundColor = "yellow";
// 		 // event mouseover 시에 배경색을 blue로 변경
// 		 newInput.addEventListener("mouseover", function(){
// 			 newInput.style.backgroundColor = "blue";
// 		 })
		 result.appendChild(newInput);
	 })
 });
 
</script>
</head>
<body>
	<button type="button" id="btn">추가</button>
	<div id="result"></div>
</body>
</html>