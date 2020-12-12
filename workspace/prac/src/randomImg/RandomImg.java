package randomImg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RandomImg
 */
@WebServlet("/RandomImg")
public class RandomImg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RandomImg() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 응답쪽의 한글 처리
		response.setContentType("text/html; charset=EUC-KR");
		
		//화면(클라이언트)에 출력을 담당하는 객체
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("	<head><title>Random 이미지 </title></head>");
		out.println("	<body><div>");
		out.println("<img scr = 'https://img1.daumcdn.net/thumb/R720x0.q80/?scode=mtistory2&fname=http%3A%2F%2Fcfile7.uf.tistory.com%2Fimage%2F24283C3858F778CA2EFABE'");
		out.println("");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
