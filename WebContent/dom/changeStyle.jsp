<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>changeStyle.jsp</title>
<script>
window.addEventListener("load", init);

function init(){
	btn.addEventListener("mouseover",function(){
		result.style.display = "none";
	});
	btn.addEventListener("mouseout",function(){
		result.style.display = "";
	});
// 	img1.addEventListener("error", function(){
// 		//이미지의 src 변경
// 		img1.src = "../images/Hydrangeas.jpg";
// 	});
}
</script>
</head>
<body>
	<button type="button" id="btn">숨기기</button>
	<div id="result">남산의 부장들 소개</div>
	<img src="../images/Lighthous.jpg" id="img1" onerror="this.src='../images/Hydrangeas.jpg'">
</body>
</html>