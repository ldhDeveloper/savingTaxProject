package member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import member.model.server.PartyService;
import member.model.vo.Party;

/**
 * Servlet implementation class MyinfoDetailUpdate
 */
@WebServlet("/update.info3")
public class MyinfoDetailUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyinfoDetailUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		int owner = Integer.parseInt(request.getParameter("pno"));
		System.out.println("update-pno:"+owner);
		String pname = request.getParameter("cname");
		String cname = request.getParameter("cname");
		String president = request.getParameter("president");
		String cno = request.getParameter("cno");
		String cno2 = request.getParameter("cno2");
		String cno3 = request.getParameter("cno3");
		String busiType = request.getParameter("busitype");
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
		System.out.println("teltel"+Tel);
		String Caddress = caddress + "/" + caddress2 + "/" + caddress3;
		String Email = email + "@" + email2;

		Party p = new Party();

		p.setPno(owner);
		p.setPname(pname);
		p.setCname(cname);
		p.setPresident(president);
		p.setCno(Cno);
		p.setBusi_type(busiType);
		p.setCstatus(cstatus);
		p.setCtype(ctype);
		p.setTel(Tel);
		p.setCaddress(Caddress);
		p.setEmail(Email);

		int result = new PartyService().updatePartyMyinfo3(p, owner);

		if (result > 0) {
			RequestDispatcher view = request.getRequestDispatcher("m3list");
			request.setAttribute("owner", owner);
			view.forward(request, response);
			System.out.println("거래처 수정 성공");
		} else {
			RequestDispatcher view = request.getRequestDispatcher("views/main1/member/memberError.jsp");
			request.setAttribute("message", "거래처 수정 실패");
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
