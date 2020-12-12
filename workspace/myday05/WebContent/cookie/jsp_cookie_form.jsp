<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //로그인 쿠키가 존재한다면 쿠키 얻기
    String loginId = "";
    String loginPw = "";
    Cookie[] cookies = request.getCookies();
    if(cookies != null){	//최초의 로딩 시에 쿠기 없음을 방지하는 코드
    	for(Cookie cookie: cookies){
    		if("login_id".equals(cookie.getName())){
    			loginId = cookie.getValue();
    		}
    		if("login_pw".equals(cookie.getName())){
    			loginPw = cookie.getValue();
    		}
    	}
    }
    
    //로그인 정보 확인(쿠키 확인)
    //out.print("loginId>>>"+loginId);
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<body>
	<h2>로그인 페이지</h2>
	
	<%if("".equals(loginId) && "".equals(loginPw)) { %>
	<form action="./jsp_cookie_page.jsp">
	
		<div>
			로그인ID: <input type="text" name="login_id" />
		</div>
		<div>
			로그인PW: <input type="password" name="login_pw" />
		</div>
		<div>
			<input type="submit" value="로그인" />
		</div>
	</form>
	<% } else{ %>
		<form action="./jsp_cookie_expires.jsp">
		<div><%=loginId %>님 환영합니다.</div>
		<div>
			<input type="submit" value="로그아웃"/>
		</div>
		</form>
		
		<h2>장바구니 내역</h2>
		<div>
		
			<%
			
			//중복 안되게 하는 방법도 해봐 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
			List list = (List)session.getAttribute("productList");
			if(list != null){
				for(int i=0;i<list.size();i++){
					out.println(list.get(i));
				}
				
				
			}
			%>
		</div>		

		<h2>상품 선택</h2>
		<form method="post" action="../session/jsp_session_page.jsp">
			<div>
				<select name = 'product'>
					<option>생수</option>
					<option>콜라</option>
					<option>사이다</option>
					<option>커피</option>
				</select>
			</div>
			<div>
				<input type="submit" value="장바구니에 추가"/>
			</div>
		</form>	
	<%} %>
</body>
</html>








