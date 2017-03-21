package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.view.server.MemberService;
import member.view.vo.Member;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("오니?");
		
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html charset=utf-8");
		
		String uid = request.getParameter("userid");
		String upwd = request.getParameter("userpwd");
		
		//System.out.println(uid);
		
		Member m = new MemberService().loginMember(uid, upwd);
		
		//System.out.println(m);
		
		if(m != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", m);
			
			response.sendRedirect("/jsmi/views/main1/member/fakeIntroduce.jsp");
			//response.sendRedirect("/jsmi/views/main1/introduce.jsp");
		}
		
		else {
			RequestDispatcher view = request.getRequestDispatcher("views/main1/member/memberError.jsp");
			request.setAttribute("message", "아이디/비밀번호를 잘못 입력하였습니다.");
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
