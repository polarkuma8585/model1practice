<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event.jsp</title>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>

</head>
<body>
	<button type="button" id="btn">크기변경</button><br>
	<button type="button" id="btn2">크기변경2</button><br>
	<img src="../images/Chrysanthemum.jpg" id="imgSample">
	<script>
//bind 함수
// 		$("#btn").bind("click",function(){
// // 			$("#imgSample").css("width", "100px");
// 			$("#imgSample").width("100px");
// 		})
//click 함수
/* 		$("#btn").click(function(){
			var w = $("#imgSample").css("width");  	//$("#imgSample").width();
// 			$("#imgSample").css("width", "100px");
 			$("#imgSample").width(parseInt(w) - 100);
}); */
//on 함수
		$(document).on("click", "#btn", function(){
			$("#imgSample").width(400);
		});
		$("#btn2").on("click", function(){ // btn2이벤트를 실행하면 btn이벤트를 실행 
			$("#btn").click(); // .click()는 이벤트를 실행시키는 함수
		});
	</script>	
</body>
</html>