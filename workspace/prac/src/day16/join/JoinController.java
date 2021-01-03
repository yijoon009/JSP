package day16.join;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/day16/join/join.do")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	private JoinService joinService = null;
	
	@Override
	public void init() throws ServletException {
		joinService = new JoinService();
	}
	
    public JoinController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String userId = req.getParameter("userId");
    	String userPw = req.getParameter("userPw");
    	System.out.println(userId+" : "+userPw);
    	//회원가입
    	JoinDTO joinDTO = new JoinDTO();
    	joinDTO.setUserId(userId);
    	joinDTO.setUserPw(userPw);
    	
    	joinService.save(joinDTO);
    	
    	List<JoinDTO> list = joinService.list();
    	//테스트용
    	//System.out.println("list>>>" +list);
    	req.setAttribute("joinList", list);
    	
    	//페이지 이동
    	String viewName = "/day16/join/list.jsp";
    	req.getRequestDispatcher(viewName).forward(req, resp);
    	
    	
    }

}
