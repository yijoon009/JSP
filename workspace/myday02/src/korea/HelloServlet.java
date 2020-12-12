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
       
    public HelloServlet() {	//������
        super();
        
    }

    //��� �����ϰ� �ٽ� �ҷ����µ�?
//    @Override
//    public void init() throws ServletException {
//    	System.out.println("=============init=============");
//    }
    
    
    
    //request ���� �޼ҵ�� (get, post)
    //get�� ������ �̿� �ÿ�,
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		//getWriter ȭ�鿡 ��� (syso)������
//		response.getWriter().append("hello,servlet");
//	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//�����ִ� ȭ�鿡�� ������ ������ response
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
			out.println("���õ� ȭ����");
		}else{
			out.println("�����ֵ� ȭ����");
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
