package member.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.server.PartyService;
import member.model.vo.Party;

/**
 * Servlet implementation class Main2UpdateServlet2
 */
@WebServlet("/update.info2")
public class Main2UpdateServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Main2UpdateServlet2() {
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
		response.setContentType("test/html; charset=utf-8");

		String cname = request.getParameter("cname");
		String president = request.getParameter("president");
		String cno = request.getParameter("cno");
		String cno2 = request.getParameter("con2");
		String cno3 = request.getParameter("cno3");
		String cstatus = request.getParameter("cstatus");
		String ctype = request.getParameter("ctype");
		String tel = request.getParameter("tel");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String oday=request.getParameter("oday");
		Date Oday=Date.valueOf(oday);
		String caddress = request.getParameter("caddress");
        String caddress2=request.getParameter("caddress2");
        String caddress3=request.getParameter("caddress3");
        int wno=Integer.parseInt(request.getParameter("wno"));
        //관할세무서 뺌
		int taxtype=Integer.parseInt(request.getParameter("optradio2"));//과세유형
		int notax_yn=Integer.parseInt(request.getParameter("optradio3"));//면세여부
               
		String Cno=cno+"-"+cno2+"-"+cno3;
		String Tel = tel + "-" + tel2 + "-" + tel3;
		String Caddress=caddress+" "+caddress2+" "+caddress3;
		
         Party p = new Party();
         p.setCname(cname);
         p.setPresident(president);
         p.setCno(Cno);
         p.setCstatus(cstatus);
         p.setCtype(ctype);
		 p.setTel(Tel);
		 p.setOday(Oday);
		 p.setCaddress(Caddress);
		 p.setWno(wno);
		 p.setTaxtype(taxtype);
		 p.setNotax_yn(notax_yn);
		 
		 int result = new PartyService().updatePartyMyinfo(p); 
		 
		 if(result > 0){
			  response.sendRedirect("/jsmi/views/main2/myinfo/myinfo3.jsp");
		  }else{
			  RequestDispatcher view = request.getRequestDispatcher("views/main1/member/memberError.jsp");
				request.setAttribute("message", "사업장정보 수정 실패");
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
