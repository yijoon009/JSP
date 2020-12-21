<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	//board/Board_Detail.jsp		
%>     
<jsp:useBean id="boardDTO" class = 'day12.board.BoardDTO'></jsp:useBean>
<jsp:setProperty property="*" name="boardDTO"/>
<jsp:useBean id="boardDAO" class = 'day12.board.BoardDAO'></jsp:useBean>

<c:set var = "board" value = "${boardDAO.selectBoard(boardDTO) }"/>
S{board}
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script>
$(function(){
	
	//수정하기
	$('#modifyBtn').click(function(){
		var state = true;
		var msg = "모든 입력값은 필수입니다.";
		if(!$('#subject').val())
			state = false;
		if(!$('#content').val())
			state = false;
		
		if(state){
			$('myform').attr('action' 'board_modify_p.jsp');
			$('myform').attr('method','post');
			$('myform').submit();
		}else{
			alert(msg);
		}
	});
	
	
});
</script>


</head>
<body>	
	<div class="panel panel-default">
		<div class="panel-heading">
			<h1>수정하기 <small>We Can Do It!!</small></h1>
		</div>
	</div>
	<div class="panel-body">
		<div class="container">
		
		<form role = "form" id = "myform">
			<input type = 'text' name = 'id' value = "${boardDTO.id }">
			
			<!-- title -->
			<div class="form-group">
				<label for="subject">게시글 제목</label> 
				<input type="text" class="form-control" name="title" 
					id="subject" placeholder="Enter title" value = "${board.title }" >
			</div>	
			<!-- content -->
			<div class="form-group">
				<label for="content">게시글 내용</label>
				<textarea class="form-control" rows="10" name="content"
					id="content" >${board.content }</textarea>
			</div>	
			
			<!-- name and password -->			
			<div class="form-group">
				<label for="name">게시글 작성자</label> 
				<input type="text" class="form-control" 
					id="name" disabled="disabled" value="${board.creadId }">
				<input type="hidden" name="createId" value="${board.creadId }" />	
			</div>
			
			<!-- button --> 
			<div class="form-group text-center">
				<button type="button" class="btn btn-primary" id="modifyBtn">수정</button>				
	        </div>
	        </form>
		</div>
	</div>
</body> 
</html> 