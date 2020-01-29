<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table.jsp</title>
<style>
table, td {
	border: 1px solid black;
	display: inline-block;
}

div {
	border: 1px solid black;
}
</style>
<script>
	window.addEventListener("load", init);
	function init() {
		var row = tbl2.insertRow(0);
		var cell1 = row.insertCell(0);
		var cell2 = row.insertCell(1);
		cell1.innerHTML = "홍길동";
		cell2.innerHTML = "100";

		//tr 태그에 더블클릭 이벤트 지정. 선택한 행을 오른쪽 테이블로 이동
		var trMove = document.getElementsByTagName("tr");
		trLen = trMove.length;
		
		for (i = 0; i > trLen; i++) {
			trMove[i].addEventListener("dblclick", function() {
				tblBody.appendChild(this);
				console.log(trMove[i]);
			});
		}
	}
</script>
</head>
<body>
	<table border="1" id="tbl1">
		<tr>
			<td>1</td>
			<td>2</td>
		</tr>
		<tr>
			<td>1</td>
			<td>2</td>
		</tr>
	</table>

	<table border="1" id="tbl2"></table>

	<div id="div1">
		<p id="p1">This is a paragraph.</p>
		<p id="p2">This is another paragraph.</p>
	</div>
	<br>
	<div id="div2"></div>
</body>
</html>