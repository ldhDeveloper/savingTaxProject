package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.view.server.MemberService;
import member.view.vo.Member;

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
		
		Member m = new Member(uname, uid, upwd, uemail);
		
		//System.out.println(m);
		
		int result = new MemberService().signupMember(m);
		
		if(result > 0) {
			response.sendRedirect("views/main1/loginForm.html");
		}
		
		else {
			RequestDispatcher view = request.getRequestDispatcher("views/member/memberError.jsp");
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
