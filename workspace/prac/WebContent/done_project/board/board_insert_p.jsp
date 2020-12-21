<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="boardDTO" class = 'done.board.BoardDTO'></jsp:useBean>
<jsp:setProperty property="*" name="boardDTO"/>
<jsp:useBean id="boardDAO" class = 'done.board.BoardDAO'></jsp:useBean>
<%int rows = boardDAO.saveBoard(boardDTO);
if(rows >= 1) {
%>
	<script>
	alert('게시글 등록 성공');
	location.href="./board_list.jsp?type=${param.type}";
	</script>

<%	
} else {
%>
	<script>
	alert('게시글 등록 실패');
	history.back(-1);
	</script>
<%	
}


%>



