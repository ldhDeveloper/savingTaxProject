package member.controller;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.vo.Member;
import member.model.vo.Party;
import member.model.server.PartyService;


/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("오니?");
		
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html; charset=utf-8");
		
		String uname = request.getParameter("username");
		String uid = request.getParameter("userid");
		String upwd = request.getParameter("userpwd");
		String uemail = request.getParameter("email");
		
		//System.out.println(uid);
		
		//Member m = new Member(uname, uid, upwd, uemail);
		Party p = new Party();
		p.setPname(uname);
		p.setId(uid);
		p.setPwd(upwd);
		p.setEmail(uemail);
		//System.out.println(m);
		
		int result = new PartyService().signupParty(p);
		
		if(result > 0) {
			response.sendRedirect("/jsmi/views/main1/member/loginForm.html");
		}
		
		else {
			RequestDispatcher view = request.getRequestDispatcher("/jsmi/views/member/memberError.jsp");
			request.setAttribute("message", "회원 가입에 실패했습니다.");
			view.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
