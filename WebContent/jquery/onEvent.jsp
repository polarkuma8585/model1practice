<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<title>onEvent.jsp</title>
<script>
	$(function(){
		$("#btn").on("click", function(){
			$("ul").append("<li>"+ $("#book").val());
		});
		$("ul").on("mouseover", "li", function(){  
		// 부모 태그에 이벤트를 걸고 실제 이벤트가 실행되는 태그를 두번째 파라매터로 추가
			$(this).css("backgroundColor","gray");
		});
	});
</script>
</head>
<body>
<input id="book">
<button type="button" id="btn">추가</button>

<ul>
	<li>자바</li>
	<li>스프링</li>
</ul>
</body>
</html>