<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event.jsp</title>
<script>
 window.addEventListener("load", init);
 function init(){
	 //이벤트 전파 : child node의 event실행시 parent node의 이벤트도 자동 실행
	 divItem.addEventListener("click", function(){alert("div");})
	 btn.addEventListener("click", function(e){
		 alert("btn")
		 e.stopPropagation(); // 이벤트 전파중단
		 ;})
	 
 }
</script>
</head>
<body>
	<div id="divItem">
		<button type="button" id="btn">버튼</button>
	</div>
</body>
</html>