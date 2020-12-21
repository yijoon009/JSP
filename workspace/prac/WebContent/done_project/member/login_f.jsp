<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
$(function(){
	$('#loginBtn').click(function(){
		var state = true;
		var msg = "모든 입력값은 필수입니다.";
		if(!$('#userId').val()) {
			state = false;
		}
		if(!$('#userPw').val()) {
			state = false;
		}
		
		if(state) {
			$('#myform').attr('method', 'post');
			$('#myform').attr('action', './login_p.jsp');
			$('#myform').submit();
		} else {
			alert(msg);
		}
	});
});
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="page-header">
			<h1>로그인<small>We Can Do It!!</small></h1>
			</div>
			
			<div class="col-md-3 login-box well">
				<form role="form" id="myform">
					<div class="form-group">
						<label for="userId">유저 ID</label>
						<input type="text" class="form-control" id="userId" name="userId" placeholder="아이디를 입력해주세요."/>
					</div>
					<div class="form-group">
						<label for="userPw">비밀번호</label>
						<input type="text" class="form-control" id="userPw" name="userPw" placeholder="아이디를 입력해주세요."/>
					</div>
					  
					<div class="form-group text-center"> 
						<button type="button" class="btn btn-primary" id="loginBtn">로그인</button>
						<a href="./join_f.jsp" class="btn btn-info" >회원가입</a>
					</div>
				</form>
				
			</div>
		</div>
	</div>
</body>
</html>