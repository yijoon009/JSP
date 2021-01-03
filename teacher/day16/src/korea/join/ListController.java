package korea.join;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/list.do", "/join/list.do"})
public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private JoinService joinService = null;
    
	@Override
	public void init() throws ServletException {
		joinService = new JoinService();
	}
   
    public ListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    	List<JoinDTO> list = joinService.list();
    	req.setAttribute("joinList", list);
    	
    	//2개 이상의 url이 mapping된 경우에
    	//특정 url의 분기가 필요한 경우
    	if("/list.do".equals(req.getServletPath())) {
    		System.out.println("list.do를 호출");
    		list = new ArrayList<JoinDTO>();
    		req.setAttribute("joinList", list);
    	}
    	
    	
    	
    	
    	
    	
    	//페이지 이동
    	String viewName = "/join/list.jsp";
    	
    	req.getRequestDispatcher(viewName).forward(req, resp);
	}

}











