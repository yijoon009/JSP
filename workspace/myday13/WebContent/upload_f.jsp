<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>파일 업로드 전송폼</h2>
	<form action="./upload_p.jsp" method="post" enctype="multipart/form-data">
	이름: <input type = 'text' name = 'name'/> <br/>
	파일: <input type = 'file' name = 'file'/> <br/>
	<input type = 'submit' name = "업로드"/>
	
	</form>

</body>
</html>