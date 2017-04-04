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
 * Servlet implementation class Main2InsertServlet
 */
@WebServlet("/insert.info3")
public class Main2InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Main2InsertServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		int pno = Integer.parseInt(request.getParameter("pno"));
		System.out.println("pno.sevlet:"+pno);
		String cname = request.getParameter("cname");
		String president = request.getParameter("president");
		String cno = request.getParameter("cno");
		String cno2 = request.getParameter("con2");
		String cno3 = request.getParameter("cno3");
		int busiType = Integer.parseInt(request.getParameter("optradio"));
		String cstatus = request.getParameter("cstatus");
		String ctype = request.getParameter("ctype");
		String tel = request.getParameter("tel");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String caddress = request.getParameter("caddress");
		String caddress2 = request.getParameter("caddress2");
		String caddress3 = request.getParameter("caddress3");
		String email = request.getParameter("email");
		String email2 = request.getParameter("email2");

		String Cno = cno + "-" + cno2 + "-" + cno3;
		String Tel = tel + "-" + tel2 + "-" + tel3;
		String Caddress = caddress + "&" + caddress2 + "&" + caddress3;
		String Email = email + "@" + email2;

		Party p = new Party();

		p.setCname(cname);
		p.setPresident(president);
		p.setCno(Cno);
		p.setBusi_type(busiType);
		p.setCstatus(cstatus);
		p.setCtype(ctype);
		p.setTel(Tel);
		p.setCaddress(Caddress);
		p.setEmail(Email);

		int result = new PartyService().insertPartyMyinfo3(p, pno);
		System.out.println("P: "+p);
		System.out.println("Pno info3: "+pno);

		if (result > 0) {
			response.sendRedirect("/jsmi/views/main2/menu/main2.html");
		} else {
			RequestDispatcher view = request.getRequestDispatcher("views/main1/member/memberError.jsp");
			request.setAttribute("message", "거래처등록 실패");
			view.forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
