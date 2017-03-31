package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.server.PartyService;
import member.model.vo.Party;

/**
 * Servlet implementation class FindIdServlet
 */
@WebServlet("/findid")
public class FindIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindIdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String pname = request.getParameter("username");
		String email = request.getParameter("email");
		
		Party p = new PartyService().findId(pname, email);
		
		
		
		RequestDispatcher view = null;	
		if(p != null){
			String userid = p.getId();
			view = request.getRequestDispatcher("views/main1/member/returnid.jsp");
			request.setAttribute("userid", userid);
			view.forward(request, response);
		}else {
			view = request.getRequestDispatcher("views/main1/member/memberError.jsp");
			request.setAttribute("message", "가입하신 정보와 일치하는 회원 정보가 없습니다.");
			view.forward(request, response);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
