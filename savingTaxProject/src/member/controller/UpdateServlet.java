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
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/mupdate")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html; charset=utf-8");
		
		String uname = request.getParameter("username");
		String uid = request.getParameter("userid");
		String upwd = request.getParameter("userpwd");
		String uemail = request.getParameter("email");
		
		Member m = new Member();
		
		m.setUserName(uname);
		m.setUserId(uid);
		m.setUserPwd(upwd);
		m.setUserEmail(uemail);
		
		int result = new MemberService().updateMember(m);
		
		RequestDispatcher view = null;
		
		if(result > 0) {
			response.sendRedirect("/jsmi/sdetail?userid=" + uid);
		}
		
		else {
			view = request.getRequestDispatcher("views/main1/member/memberError.jsp");
			request.setAttribute("message", "회원 정보 수정 실패");
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
