<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>req.jsp</title>
<script>
	window.addEventListener("load", function() {
		btn.addEventListener("click", loadDoc);
		
	});
	function loadDoc() {
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			//readystate 의 상태가 변경될 때마다 function() 호출
			if (this.readyState == 4 && this.status == 200) {
				var xmlDoc = xhttp.responseXML;
				var x = xhttp.getElementsByTagName("emp");
				var table = "<table><tr><th>no</th><th>name</th><tr></table>";
				for(i=0; i<x.length; i++){					
				var no = x[i].getElementsByTagName("no")[0].childNodes[0].nodeValue; // XML 접근방식 
				var name = x[i].getElementsByTagName("name")[0].childNodes[0].nodeValue;
				
				}
			}
		};
// 		var param = "no=" + txtNo.value;  // 쿼리(질의) 문자열 url?변수명=값&변수명=값
		xhttp.open("GET", "../GetXMLList.do", true);
		xhttp.send();
	}
</script>
</head>
<body>
	<h3>ajax 연습</h3>
	이름검색
	<input id="txtNo">
	<input id="txtName">
	<button type="button" id="btn">요청</button>
</body>
