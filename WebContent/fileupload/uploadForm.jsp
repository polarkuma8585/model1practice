<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>uploadForm.jsp</title>
</head>
<body>
	<form method="post" enctype="multipart/form-data" action="../FileUpload.do"> 
	<!-- method="post" enctype="multipart/form-data" file upload 시 form 태그내에 필수 -->
	<input type="file" name="uploadfile">
	<input type="text" name="desc">
	<button>등록</button> <!-- type 생략시 submit -->
	</form>
</body>
</html>