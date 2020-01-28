<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>json.jsp</title>
<script>
	//json 객체
	let boardDto = {no:1, poster:"홍길동", subject:"첫번째글"}
	
	//String배열
	let strArr = ["메론","배","사과"];
	
	//객체 배열
	let boardArr = [{no:1, poster:"홍길동", subject:"첫번째글"},
					{no:2, poster:"김길동", subject:"두번째글"},
					{no:3, poster:"나기자", subject:"세번째글"}];
	//boardDto 작성자 출력
	document.write(boardDto.poster + "<br>");
	//strArr의 두번재 과일
	document.write(strArr[1] + "<br>");
	//boardArr의 세번째 게시글의 제목 출력
	document.write(boardArr[2].subject+ "<br>");
</script>
</head>
<body>
	<div id="result"></div>
</body>
</html>