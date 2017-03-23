package member.controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.server.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class SignupDetailServlet
 */
@WebServlet("/sdetail")
public class SignupDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("오니?");
		
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html; charset=utf-8");
		
		String uid =request.getParameter("userid"); //어떤객체에 session 어떤메소드
		
		System.out.println(uid);
		
		Member m = new MemberService().selectMember(uid);
		
		System.out.println("servlet : " + m + "uid : " + uid);
		
		RequestDispatcher view = null ;
		
		if(m != null){
			view = request.getRequestDispatcher("views/main1/member/mypageForm.jsp");
			request.setAttribute("member", m);
			System.out.println("if문 : " + m);
			view.forward(request, response);
		}
		
		else {
			view = request.getRequestDispatcher("views/main1/member/memberError.jsp");
			request.setAttribute("message", "회원 정보 불러오기 실패");
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
