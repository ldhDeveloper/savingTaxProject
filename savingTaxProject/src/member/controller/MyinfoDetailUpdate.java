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
		  /*int pno = Integer.parseInt(request.getParameter("pno"));
		  System.out.println("pno detail: "+pno);
		  
		  Party p = new PartyService().selectParty(pno);
		  
		  JSONObject job = new JSONObject();
		  job.put("pno", p.getPno());
		  job.put("cname", URLEncoder.encode(p.getCname(), "utf-8"));
		  job.put("president", URLEncoder.encode(p.getPresident(), "utf-8"));
		  job.put("cstatus", URLEncoder.encode(p.getCstatus(), "utf-8")); 
		  job.put("ctype", URLEncoder.encode(p.getCtype(), "utf-8"));
		  job.put("tel", URLEncoder.encode(p.getTel(), "utf-8"));
		  job.put("caddress", URLEncoder.encode(p.getCaddress(), "utf-8"));
		  job.put("email", URLEncoder.encode(p.getEmail(), "utf-8"));
			
		  response.setContentType("application/json: charset=utf-8");
		  PrintWriter out = response.getWriter();
		  out.print(job.toJSONString());
		  out.flush();
		  out.close();*/
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		int pno = Integer.parseInt(request.getParameter("pno"));
		System.out.println("update-pno:"+pno);
		String pname = request.getParameter("cname");
		String cname = request.getParameter("cname");
		String president = request.getParameter("president");
		String cno = request.getParameter("cno");
		String cno2 = request.getParameter("cno2");
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

		int result = new PartyService().updatePartyMyinfo3(p, pno);
		System.out.println("update P: "+p);
		System.out.println("update info3: "+pno);
		System.out.println("update 33 :"+result);

		if (result > 0) {
			RequestDispatcher view = request.getRequestDispatcher("m3list");
			request.setAttribute("pno", pno);
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
