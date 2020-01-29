<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>table.jsp</title>
<style>
table {
	border-collapse: collapse;
	border-spacing: 0px;
}

td {
	border: 1px solid black;
	width: 200px;
}
</style>
<script>
	window.addEventListener("load", function() {
		//tr 태그에 더블클릭 이벤트 지정 . 선택한 행을 오른쪽으로 이동
// 		var trs = document.querySelectorAll("#tbl1 tr");
		var trs = document.getElementsByTagName("tr");
		var tbl1Body = document.querySelectorAll("#tbl1 tbody");
		var tbl2Body = document.querySelectorAll("#tbl2 tbody");
		for (i = 0; i < trs.length; i++) {
			trs[i].addEventListener("dblclick", function() {
				tbl2Body[0].appendChild(this);
				//이벤트 다시 지정 (두번째 테이블에서 이동 이벤트 핸들러 수정)
				tbl2Body[0].removeEventListener
				tbl2Body[0].addEventListener("dblclick", function(){
					tbl1Body[0].appendChild(this);
				})
			})
		}
		
	})
</script>
</head>
<body>
	<table id="tbl1">
		<caption>수강과목</caption>
		<tbody>
			<tr>
				<td>1</td>
				<td>자바</td>
			</tr>
			<tr>
				<td>2</td>
				<td>JSP</td>
			</tr>
			<tr>
				<td>3</td>
				<td>SPRING</td>
			</tr>
		</tbody>
	</table>
	<table id="tbl2">
		<caption>선택과목</caption>
		<tbody>

		</tbody>
	</table>
</body>
</html>