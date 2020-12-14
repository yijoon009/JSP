<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<script>
//실습하기. 로그인 버튼이 클릭되면
// - login_p로 전송
// - form: method는 post
// - 모든 값이 입력되야만 전송해야합니다.
// - 모든 값이 입력되지 않으면 경고창을 통해서 모든 입력값은 필수입니다. 를 출력해주세요.
$( function(){
	$('#joinBtn').click(function(){
		//각 폼이 비어있는지 검사
		var state = true;	//전송을 해야할지 말지의 상태를 가지는 변수
		var msg = "모든 입력값은 필수입니다.";
		//userId 값이 없다면
		if(!$('#userId').val()){
			//alert('값이 비어있음.')
			state = false;
		}
		if(!$('#userPw').val()){
			state = false;
		}
		if(!$('#userEmail').val()){
			state = false;
		}
		
		//state 값에 따라서 전송하기
		if(state){
			//값을 전송
			//key값이 role인걸 가져와주세요.
			//console.log( $('#myform').attr('role') )
			
			//그냥하면 갖고오기
			//지정하면 
			$( '#myform').attr('method','post');
			$( '#myform').attr('action','./login_p.jsp');
			$( '#myform').submit();
			
		}else{
			//메세지 출력
			alert(msg);
		}
	})
	
});


</script>
</head>

<body>

	<div class='container'>
		<div class='row'>
			<div class="page-header">
				<h1>
					로그인<small> We Can Do It !!</small>
				</h1>
			</div>
			<div class="col-md-3 login-box well">
				<form role="form" id="myform">
					<div class="form-group">
						<label for='userId'>유저 ID</label> <input type='text' class='form-control' id='userId' name='userId' placeholder="아이디를 입력해주세요." />
					</div>
					<div class="form-group">
						<label for='userPw'>유저 Pw</label> <input type='text' class='form-control' id='userId' name='userId' placeholder="비밀번호를 입력해주세요." />
					</div>
					<div class='form-group text-center'>
						<button type='button' class='btn btn-primary' id='joinBtn'>로그인</button>
						<a href = "./join_f.jsp" type = 'button'  class = 'btn btn-info' >회원가입</a>
					</div>
				</form>
			</div>
		</div>
	</div>





</body>
</html>