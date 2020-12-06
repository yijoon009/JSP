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
    
    public HelloServlet() {
        super();        
    }

    @Override
	public void init() throws ServletException {
		System.out.println("=======================init======================");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=EUC-KR");
		
		String s = "02day";
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Insert title here</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("    <div>");
		out.println("        <font color=\"red\">");
		out.println("hello 1234, jsp 1234");
		out.println("        </font><br />");
		 
		out.println("        <font color=\"blue\">");		
		if( "02day".equals(s) ) {			
			out.println("오늘도 화이팅");	
		} else {
			out.println("다음주도 화이팅");
		}
		out.println("        </font>");
		
		
		out.println("    </div>");
		out.println("</body>");
		out.println("</html>");		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		doGet(request, response);
	}

}

















