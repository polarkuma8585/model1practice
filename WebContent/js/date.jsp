<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>date.jsp</title>
<script>
	//var 
	"use strict";
	var result = 0;
	function sum(a,b){
		result = a+b;
	}
	sum(1,2);
	console.log(result);
	//let 블록 내에서만 사용이 가능한 변수 - 전역 변수와 변수명이 같아도 블록외 전역변수의 값에는 영향을 미치지 않는다. 
	//날짜
	
	var str = "2020/01/20";
	var dArr = str.split("/");
	var today = new Date(dArr[0], dArr[1]-1, dArr[2]);
	console.log(today);
	console.log(today.getFullYear());
	console.log(today.getMonth()+1);
	console.log(today.getDate());
	console.log(today.getDay());
</script>
</head>
<body>
	
</body>
</html>