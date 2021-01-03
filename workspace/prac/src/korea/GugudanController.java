package korea;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/day16/basic/gugudan.do")
public class GugudanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private GugudanService gugudanService = null;  
	
    // 서블릿의 라이프 사이클
    @Override
    public void init() throws ServletException {
    	gugudanService = new GugudanService();
    }
    
    public GugudanController() {
    	
    }
    
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String dan = req.getParameter("dan");
    	String viewName = "/day16/basic/result.jsp";
    	//구구단 데이터 세팅
    	req.setAttribute("result", gugudanService.gugudan(dan));
    	req.getRequestDispatcher(viewName).forward(req, resp);
    }

}
