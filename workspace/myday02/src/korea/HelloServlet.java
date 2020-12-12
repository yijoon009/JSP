package korea;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/Hello")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HelloServlet() {	//생성자
        super();
        
    }

    //어떻게 저장하고 다시 불러오는디?
//    @Override
//    public void init() throws ServletException {
//    	System.out.println("=============init=============");
//    }
    
    
    
    //request 들의 메소드들 (get, post)
    //get은 페이지 이용 시에,
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		//getWriter 화면에 써라 (syso)같은거
//		response.getWriter().append("hello,servlet");
//	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//보고있는 화면에서 깨지기 때문에 response
		response.setContentType("text/html; charset=EUC-KR");
		
		
		String s = "02day";
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Insert title here</title>\r\n");
		out.println("</head>");
		out.println("<body>");
		out.println("	<div>");
		out.println("		<font color=\"red\">");
		out.println("hello, jsp 1234");
		out.println("		</font><br />");
		
		out.println("		<font color=\"blue\">");
		if("02day".equals(s)){
			out.println("오늘도 화이팅");
		}else{
			out.println("다음주도 화이팅");
		}
		out.println("		</font>");
		
		
		out.println("	</div>");
		out.println("</body>");
		out.println("</html>");
		out.println();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
