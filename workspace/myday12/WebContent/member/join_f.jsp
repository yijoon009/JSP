<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% %>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">
//id는 #, class는 .
$(function (){
	
	//joinBtn 클릭한다면
	// - 실습하기 a를 화면에 alert창으로 보여주세요
	$( '#joinBtn' ).click( function(){
		//클릭한다면 userId의 값을 출력해주세요.(colsole.log에)
		//console.log( $('#userId').val() );
		//클릭한다면 userPw의 값을 출력해주세요.(colsole.log에)
		//console.log( $('#userPw').val() );
		//클릭한다면 userPwCheck의 값을 출력해주세요.(colsole.log에)
		//console.log( $('#userPwCheck').val() );
		//클릭한다면 userEmail의 값을 출력해주세요.(colsole.log에)
		//console.log( $('#userEmail').val() );
		
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
		
		// - 실습하기 - pw 검사
		// - 비밀번호와 비밀번호 체크의 값이 틀리다면
		// - state는 false
		// - msg는 비밀번호와 비밀번호 체크의 값이 틀립니다.
		if( $('#userPw').val() != $('#userPwCheck').val() ){
			state = false;
			msg = "비밀번호와 비밀번호 체크의 값이 틀립니다."; 
		}
		//state 값에 따라서 전송하기
		if(state){
			//값을 전송
			//key값이 role인걸 가져와주세요.
			//그냥하면 조회
			//console.log( $('#myform').attr('role') )
			
			//값을 넣으면 변경/지정
			$( '#myform').attr('method','post');
			$( '#myform').attr('action','./join_p.jsp');
			$( '#myform').submit();
			
		}else{
			//메세지 출력
			alert(msg);
		}
	});
})
</script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class = "page-header">
		<h1>회원가입<small> We Can Do It !!</small></h1>
	</div>
	<div class = "col-md-6 col-md-offset-3">
		<form role = "form" id = "myform">
			<div class = "form-group">
				<label for = 'userId'>유저 ID</label>
				<input type='text' class = 'form-control' id = 'userId' name = 'userId' placeholder="아이디를 입력해주세요."/>
			</div>
			<div class = "form-group">
				<label for = 'userPw'>비밀번호</label>
				<input type="text" class = 'form-control' id = 'userPw' name = 'userPw' placeholder="비밀번호를 입력해주세요." />
			</div>
			<div class = "form-group">
				<label for = 'userPwCheck'>비밀번호 확인</label>
				<input type="text" class = 'form-control' id = 'userPwCheck' placeholder="비밀번호 확인"/>
			</div>
			<div class = "form-group">
				<label for = 'userEmail'>이메일 주소</label>
				<input type='text' class = 'form-control' id = 'userEmail' name = 'userEmail' placeholder="이메일을 입력해주세요."/>
			</div>
			<div class = 'form-group text-center'>
				<button type = 'button'  class = 'btn btn-info' id = 'joinBtn'>회원가입</button>
			</div>
		</form>
		
	</div>
	
</body>
</html>