<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select.jsp</title>
<style>
select {
	width: 100px;
	height: 100px;
}
</style>
<script>
	window.addEventListener("load", init);
	function init() {
		//버튼 이벤트 
		btnR.addEventListener("click", function() {
			//selectedIndex
			if (subject.selectedIndex > -1) {
				var optL = document.createElement("option");
				optL.text = subject.options[subject.selectedIndex].text;

				choose.add(optL);
				//선택항목 삭제
				subject.remove(subject.selectedIndex);
			}
		});
		btnL.addEventListener("click", function() {
			if (choose.selectedIndex > -1) {
				var optR = document.createElement("option");
				optR.text = choose.options[choose.selectedIndex].text;
				
				subject.add(optR);
				choose.remove(choose.selectedIndex);
			}
		});

		btnAll.addEventListener("click", function() {
			var len = subject.length;
			for (i = len - 1; i >= 0; i--) {
				var opt = document.createElement("option");
				opt.text = subject.options[i].text;
				console.log(opt.text);
				choose.add(opt);
				//선택항목 삭제
				subject.remove(i);
			
			}

		})
	}
</script>
</head>
<body>
	<select id="subject" multiple="multiple" siez="5">
		<option value="java">자바
		<option value="jsp">JSP
		<option value="spring">스프링
	</select>
	<button type="button" id="btnR">▶</button>
	<button type="button" id="btnL">◀</button>
	<button type="button" id="btnAll">전체이동</button>
	<select id="choose" multiple="multiple" size="5">
	</select>

</body>
</html>