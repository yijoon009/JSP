<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	//board/Board_Detail.jsp		
%>     
<jsp:useBean id="boardDTO" class="done.board.BoardDTO" />
<jsp:setProperty property="*" name="boardDTO"/>
<jsp:useBean id="boardDAO" class="done.board.BoardDAO" />

<c:set var="board" value="${boardDAO.selectBoard(boardDTO) }"></c:set>


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
	
	//수정하기
	$('#modifyBtn').click(function() {
		location.href="./board_modify.jsp?id=${boardDTO.id}";
	});
	
	//삭제하기
	$('#deleteBtn').click(function() {
		if(confirm('데이터를 삭제하시겠습니까?')) {
			location.href="./board_delete_p.jsp?id=${boardDTO.id}&type=${param.type}";
		}		
	});
	
	//자유게시판 버튼
	$('#modifyBtnFree').click(function(){
		var inputPass = prompt("비밀번호를 입력하세요.", "");
		if(inputPass == "${board.boardPass}") {
			location.href="./board_modify.jsp?id=${boardDTO.id}";
		} else {
			alert('비밀번호가 틀립니다.');
		}
	});
	
	$('#deleteBtnFree').click(function(){
		if(confirm('데이터를 삭제하시겠습니까?')) {
			var inputPass = prompt("비밀번호를 입력하세요.", "");
			if(inputPass == "${board.boardPass}") {
				location.href="./board_delete_p.jsp?id=${boardDTO.id}";
			} else {
				alert('비밀번호가 틀립니다.');
			}
		}	
	});
})
</script>


</head>
<body>	
	<div class="panel panel-default">
		<div class="panel-heading">
			<h1>상세조회 <small>We Can Do It!!</small></h1>
		</div>
	</div>
	<div class="panel-body">
		<div class="container">
			<!-- title -->
			<div class="form-group">
				<label for="subject">게시글 제목</label> 
				<input type="text" class="form-control" name="title" 
					id="subject" placeholder="Enter title" value="${board.title }" disabled="disabled">
			</div>	
			<!-- content -->
			<div class="form-group">
				<label for="content">게시글 내용</label>
				<textarea class="form-control" rows="10" name="content"
					id="content" disabled="disabled">${board.content }</textarea>
			</div>	
			
			<!-- name and password -->			
			<div class="form-group">
				<label for="name">게시글 작성자</label> 
				<input type="text" class="form-control" 
					id="name" disabled="disabled" value="${board.createId }">					
			</div>
			
			<!-- button --> 
			<div class="form-group text-center">
				<!-- 인증게시판이면서 게시글 작성자와 로그인한 사용자가 같다면 -->
				<c:if test="${(loginId eq board.createId) and board.boardType }">
				<button type="button" class="btn btn-primary" id="modifyBtn">수정</button>				
				<button type="button" class="btn btn-danger" id="deleteBtn">삭제</button>
				</c:if>   
				
				<!-- 자유게시판일 경우 -->
				<c:if test="${board.boardType eq false}">
				<button type="button" class="btn btn-primary" id="modifyBtnFree">수정</button>				
				<button type="button" class="btn btn-danger" id="deleteBtnFree">삭제</button>
				</c:if>
				           
	        </div>
	        
		</div>
	</div>
</body> 
</html> 














