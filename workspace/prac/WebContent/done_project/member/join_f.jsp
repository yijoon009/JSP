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
	$('#joinBtn').click(function(){
		var state = true;	
		var msg = "모든 입력값은 필수입니다.";

		if(!$('#userId').val()) {
			state = false;
		}
		if(!$('#userPw').val()) {
			state = false;
		}
		if(!$('#userEmail').val()) {
			state = false;
		}
		
		if($('#userPw').val() != $('#userPwCheck').val()) {
			state = false;
			msg = '비밀번호와 비밀번호 체크의 값이 틀립니다.';
		}
		
		if(state) {
			//값을 전송
			$('#myform').attr('method', 'post');
			$('#myform').attr('action', './join_p.jsp');
			$('#myform').submit();
		} else {
			//메시지 출력
			alert(msg);
		}
	});
});

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="page-header">
		<h1>회원가입<small>We Can Do It!!</small></h1>
	</div>
	
	<div class="col-md-6 col-md-offset-3">
		<form role="form" id="myform">
			<div class="form-group">
				<label for="userId">유저 ID</label>
				<input type="text" class="form-control" id="userId" name="userId" placeholder="아이디를 입력해주세요."/>
			</div>
			<div class="form-group">
				<label for="userPw">비밀번호</label>
				<input type="text" class="form-control" id="userPw" name="userPw" placeholder="비밀번호를 입력해주세요."/>
			</div>
			<div class="form-group">
				<label for="userPwCheck">비밀번호 확인</label>
				<input type="text" class="form-control" id="userPwCheck" placeholder="비밀번호 확인"/>
			</div>
			<div class="form-group">
				<label for="userEmail">이메일 주소</label>
				<input type="text" class="form-control" id="userEmail" name="userEmail" placeholder="이메일을 입력해주세요."/>
			</div>
			<div class="form-group text-center">
				<button type="button" class="btn btn-info" id="joinBtn">회원가입</button>
				
			</div>
		</form>
		
	</div>
</body>
</html>