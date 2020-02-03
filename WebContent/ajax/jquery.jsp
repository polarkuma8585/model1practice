<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>jquery.jsp</title>
<script>
	window.addEventListener("load", function() {
		//전체조회
		btnList.addEventListener("click", function() {
			var url = "../ajaxBoardList.do"; // 
			var data = null;
			var callback = function(boardList) {
				result.innerHTML += "전체 조회 결과 <br>";
				for (i = 0; i < boardList.length; i++) {

					result.innerHTML += boardList[i].subject + "<br>"
				}
			}
			$.getJSON(url, data, callback);
		});
		//번호로 조회
		btnOne.addEventListener("click", function() {
			var url = "../ajaxBoardOne.do";
			var data = {
				no : no.value
			}
			var callback = function(boardOne, status, xhr) {
				//boardOne : 결과
				//status : 상태코드
				// xhr : xhr 객체
				console.log(boardOne, status, xhr);
				result.innerHTML += "번호 조회 결과 <br>";
				result.innerHTML += boardOne.poster + "<br>";
				result.innerHTML += boardOne.subject + "<br>";
			}
			$.getJSON(url, data, callback);
		});
	});
</script>
</head>
<body>
	<input type="text" id="no" />
	<button type="button" id="btnOne">번호로 조회</button>
	<button type="button" id="btnList">전체조회</button>
	<div id="result"></div>
</body>
</html>