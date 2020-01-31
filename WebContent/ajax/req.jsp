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
				var x = xmlDoc.getElementsByTagName("emp");
				console.log(x.length);
				var table = document.getElementById("tbl");
				table.innerHTML += "<tr><th>no</th><th>name</th><tr>";
				for (i = 0; i < x.length; i++) {
					var row = table.insertRow(i + 1);
					var cell1 = row.insertCell(0);
					var cell2 = row.insertCell(1);
					cell1.innerHTML = x[i].getElementsByTagName("no")[0].childNodes[0].nodeValue; // XML 접근방식 
					cell2.innerHTML = x[i].getElementsByTagName("name")[0].childNodes[0].nodeValue;
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
	<table id="tbl" border="1">
	</table>
</body>