<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>changeSize.jsp</title>
</head>
<body>
<img id="imgSample" src="../images/Desert.jpg" style="width: 100px;">
<br>
<button type="button" id="btnSize">그림 크게</button>
<br>
<br>
<button type="button" id="btnSize1">그림 작게</button>
<script>
	let imgSample = document.getElementById("imgSample");
	let btnSize = document.getElementById("btnSize");
	let btnSize1 = document.getElementById("btnSize1");
	btnSize1.addEventListener("click", function(){
		//이미지의 크기(width) 확인
			var w = imgSample.style.width;
			console.log(w);
		//크기를 -100
			imgSample.style.width = parseInt(w) - 100 + "px";
	})
	
	btnSize.addEventListener("click", function(){
		//이미지의 크기(width) 확인
			var w = imgSample.style.width;
			console.log(w);
		//크기를 +100
			imgSample.style.width = parseInt(w) + 100 + "px";
	})

</script>
</body>
</html>