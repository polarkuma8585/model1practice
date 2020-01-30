<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>table.jsp</title>
<style>
table {
	display : inline-block;
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
// 		var trs1 = document.querySelectorAll("#tbl1 tr");
// 		var trs2 = document.querySelectorAll("#tbl2 tr");
// 		var trs = document.getElementsByTagName("tr");

// 		var tbl1 = document.querySelectorAll("#tbl1");
		var tbl1Body = document.querySelectorAll("#tbl1 tbody");
		var tbl2Body = document.querySelectorAll("#tbl2 tbody");

// 		for (i = 0; i < trs1.length; i++) {
// 			trs1[i].addEventListener("dblclick", function() {
// 				tbl2Body[0].appendChild(this);
// 				this.removeEventListener("dblclick", arguments.callee);
// 				//이벤트 다시 지정 (두번째 테이블에서 이동 이벤트 핸들러 수정)
// 				this.addEventListener("dblclick", function() {
// 					tbl1[0].appendChild(this);
// 					this.removeEventListener("dblclick", arguments.callee);
// 				})
// 			})
// 		}		
		tbl1.addEventListener("dblclick",function(e){
			var src = e.target.parentNode;
			if (src.tagName == "TR"){
			tbl2Body[0].appendChild(src);
			}
		})
		tbl2.addEventListener("dblclick",function(e){
			var src = e.target.parentNode;
			if (src.tagName == "TR"){
			tbl1Body[0].appendChild(src);
			}
		})
	})
</script>
</head>
<body>
	<table id="tbl1">
		<caption>수강과목</caption>
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
	</table>
	<table id="tbl2">
		<caption>선택과목</caption>
		<tbody>

		</tbody>
	</table>
</body>
</html>