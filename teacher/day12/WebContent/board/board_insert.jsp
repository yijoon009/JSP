<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%
	//board/Board_List.jsp
%>     
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<script>
$(function(){
	//등록하기 버튼이 클릭되면 경고창 띄어주세요
	$('#saveBtn').click(function(){
		//각 폼의 null 검사
		var state = true;
		var msg = "모든 입력 값은 필수입니다.";
		
		if(!$('#subject').val()) {
			state = false;
		}
		if(!$('#content').val()) {
			state = false;
		}
		if(!$('#pass').val()) {
			state = false;
		}
		
		
		if(state) {
			//'게시글 등록 성공'
			$('#myform').attr('action', './board_insert_p.jsp?type=${param.type}');
			$('#myform').attr('method', 'post');
			$('#myform').submit();
		} else {
			alert(msg);
		}
		
		
	});
});
</script>


</head>
<body>	

	<!-- 실습하기. 로그인이 되어있지 않은데 Auth로 접근할 경우 리스트로 보내버리세요. -->
	<c:if test="${param.type eq 'Auth' and empty loginId }">
		<c:redirect url="./board_list.jsp"></c:redirect>
	</c:if>

	<!-- 로그인 여부에 따른 변수 셋팅 -->
	<!-- 로그인을 했으면 로그인 한 ID, 로그인 안 했으면 Free로 셋팅 -->
	<c:set var="createId" value="${loginId}" />
	<c:if test="${param.type eq 'Free' or empty loginId}">
		<c:set var="createId" value="Free" />	
	</c:if>

	<div class="panel panel-default">
		<div class="panel-heading">
			<h1>
			<c:if test="${param.type eq 'Free'}">자유게시판 </c:if>
			<c:if test="${param.type eq 'Auth'}">인증게시판 </c:if>
			글쓰기 <small>We Can Do It!!</small>
			</h1>
		</div>	
		<div class="panel-body">
			
			<div class="container">
			<form role="form" id="myform">
			<input type="hidden" name="createId" value="${createId }" />
			<input type="hidden" name="boardType" value="${param.type eq 'Auth' }" /> 
			
				<!-- title -->
				<div class="form-group">
					<label for="subject">게시글 제목</label> 
					<input type="text" class="form-control" name="title" 
						id="subject" placeholder="Enter title">
				</div>	
				<!-- content -->
				<div class="form-group">
					<label for="content">게시글 내용</label>
					<textarea class="form-control" rows="10" name="content"
						id="content"></textarea>
				</div>	
				
				
				<!-- name and password -->
				<div class="row"> 
					<div class="col-md-6">
						<div class="form-group">
							<label for="name">게시글 작성자</label> 
							<input type="text" class="form-control" 
								id="name" disabled="disabled" value="${createId }" />
								
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="pass">게시글 비밀번호</label> 
							<input type="text" class="form-control" name="boardPass" 
								id="pass" placeholder="Enter password">
						</div>
					</div>	 
				</div>
				 
				<!-- button --> 
				<div class="form-group text-center">
					<button type="button" class="btn btn-primary" id="saveBtn">등록하기</button>
					<input type="reset" class="btn btn-warning" value="다시작성" />
					<button type="button" class="btn btn-info" onclick="history.back(1)">돌아가기</button>              
		        </div>
		        
		        
		        
			</form>	
			</div>
			
		</div>
	</div>
</body> 
</html>