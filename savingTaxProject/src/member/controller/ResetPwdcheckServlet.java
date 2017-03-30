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
 * Servlet implementation class ResetPwdcheckServlet
 */
@WebServlet("/resetpwdck")
public class ResetPwdcheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResetPwdcheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String userid = request.getParameter("userid");
		String email = request.getParameter("email");
		
		Party p = new PartyService().resetPwdCheck(userid, email);
		//System.out.println(p);
		RequestDispatcher view = null;
		if(p != null){
			view = request.getRequestDispatcher("views/main1/member/resetpwdform.jsp");
			request.setAttribute("userid", userid);
			view.forward(request, response);
			
		}else{
			view = request.getRequestDispatcher("views/main1/member/memberError.jsp");
			request.setAttribute("message", "입력하신 정보와 일치하는 회원 정보가 없습니다.");
			view.forward(request, response);
		}
	}

}
