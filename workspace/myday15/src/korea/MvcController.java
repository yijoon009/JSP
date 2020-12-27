package korea;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MvcController")
public class MvcController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MvcController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	req.setAttribute("hello", "model2"+"korea");
    	req.getRequestDispatcher("/mvc/model2.jsp").forward(req, resp);
    }

}
