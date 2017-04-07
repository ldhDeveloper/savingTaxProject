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
 * Servlet implementation class ResetRwdServlet
 */
@WebServlet("/resetpwd")
public class ResetRwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResetRwdServlet() {
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
		String temppwd = request.getParameter("temppwd");
		String pwd = request.getParameter("pwd1");
		
		Party p = new PartyService().loginParty(userid, temppwd);
		
		RequestDispatcher view = null;
		if(p != null){
			int result = new PartyService().updatePwd(userid, pwd);	
			if(result > 0){
				view = request.getRequestDispatcher("views/main1/member/successResetPwd.jsp");
				request.setAttribute("message", "비밀번호 변경에 성공하였습니다.");
				view.forward(request, response);
			}else{
				view = request.getRequestDispatcher("views/main1/member/memberError.jsp");
				request.setAttribute("message", "비밀번호 변경에 실패하였습니다.");
				view.forward(request, response);
			}
		} else {
			view = request.getRequestDispatcher("views/main1/member/memberError.jsp");
			request.setAttribute("message", "임시비밀번호를 잘못 입력하셨습니다.");
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
