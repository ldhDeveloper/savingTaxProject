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
import javax.servlet.http.HttpSession;

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

		int pno =Integer.parseInt(request.getParameter("pno"));
		String userid = request.getParameter("userid");
		String cname = request.getParameter("cname");
		String president = request.getParameter("president");
		String cno = request.getParameter("cno");
		String cno2 = request.getParameter("cno2");
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
        String wname=request.getParameter("wname");
        System.out.println("업종 구분 : " + wname);
        //관할세무서 뺌
		String taxtype=request.getParameter("optradio2");//과세유형
		String notax_yn=request.getParameter("optradio3");//면세여부
		double irate=Double.parseDouble(request.getParameter("irate"));
		
               
		String Cno=cno+"-"+cno2+"-"+cno3;
		String Tel = tel + "-" + tel2 + "-" + tel3;
		String Caddress=caddress+"/"+caddress2+"/"+caddress3;
		

         Party party = new PartyService().selectParty(userid);
         party.setPno(pno);
         party.setCname(cname);
         party.setPresident(president);
         party.setCno(Cno);
         party.setCstatus(cstatus);
         party.setCtype(ctype);
		 party.setTel(Tel);
		 party.setOday(Oday);
		 party.setCaddress(Caddress);
		 party.setWname(wname);
		 party.setTaxType(taxtype);
		 party.setNotax_yn(notax_yn);
		 party.setIrate(irate);
		 
		 int result = new PartyService().updatePartyMyinfo(party); 
		 
		 Party loginUser=new PartyService().selectParty(userid);
		 
		 if(result > 0){
			 HttpSession session = request.getSession();
			  session.setAttribute("loginUser", loginUser);
			  response.sendRedirect("/jsmi/views/main2/menu/main2.html");
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
