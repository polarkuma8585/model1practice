<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jquery/ajax.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(function(){ // ready 이벤트 == window.load
	result.innerHTML = "로딩중";
	$.ajax("./server/getName.jsp"  , 
			{ async : true
				, beforeSend : function(){}
				, cache : false
				, data :  $("#frm").serialize()// frm 태그 내의 모든 파라미터를 자동으로 받음 
				, dataType : "json" // 넘어오는 데이터의 타입 판별 (default는 html)
				
			}) // 비동기 NO = 동기식
	.done(function(data){ result.innerHTML = data.name; })
	.fail(function(){})
	.always(function(){});
	console.log("ajax end");
}); 
</script>
</head>
<body>
<form id="frm" name="frm">
	<input name="no">
	<input name="name">
</form>
	<div id="result"></div>
</body>
</html>