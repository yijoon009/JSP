<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
		<form action = 'join_p.jsp' role="form" id="myform">
			<div class="form-group">
				<label for="name">유저 이름</label>
				<input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력해주세요."/>
			</div>
			<div class="form-group">
				<label for="age">나이</label>
				<input type="text" class="form-control" id="age" name="age" placeholder="나이를 입력해주세요."/>
			</div>
			<div class="form-group text-center">
				<button type="submit" class="btn btn-info" id="joinBtn">등록</button>
			</div>
		</form>
</body>
</html>