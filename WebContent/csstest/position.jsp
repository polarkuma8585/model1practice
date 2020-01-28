<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>position.jsp</title>
<style>

body {
	font-size: 12px;
}
div {
	width: 400px;
	height: 400px;
	border: 1px solid blue; 	
}
div.a {
	font-size: 4em;
	padding: 100px 0 0 0;
	margin: 100px;
	border : 10px solid;		
}
div.b {
	position:fixed;
 	right: 50px;
 	bottom: 50px;
 	background-color: yellow;
 	width: 150px;
	height: 50px;
	font-size: 2em;
} 
</style>
</head>
<body>
<div class="a b">a</div>
<div class="b">b</div>
<div>c</div>
</body>
</html>