package member.controller;

import java.io.IOException;

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
 * Servlet implementation class Main2UpdateServlet
 */
@WebServlet("/update.info1")
public class Main2UpdateServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Main2UpdateServlet1() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  request.setCharacterEncoding("utf-8");
		  response.setContentType("test/html; charset=utf-8");
		  
		  String userName = request.getParameter("username");
		  int pno=Integer.parseInt(request.getParameter("pno"));
		  String id_no = null;
		  String birth = null;
		  String gender=null;
		  if(request.getParameter("idno") != null){
			  id_no = request.getParameter("idno");
			  birth = request.getParameter("idno");
		  }
		  String id_no2= null;
		  if(request.getParameter("idno2") != null){
			  id_no2 = request.getParameter("idno2");
			  if(id_no2.substring(0,1).equals("1")){
				  gender="M";
			  }else{
				  gender="F";
			  }
		  }
		  
		  String userid = request.getParameter("userid");
		  String userpwd = request.getParameter("userpwd");
		  String paddress = request.getParameter("address");
		  String paddress2 = request.getParameter("address2");
		  String paddress3 = request.getParameter("address3");
		  String phone = request.getParameter("phone");
		  String phone2 = request.getParameter("phone2");
		  String phone3=request.getParameter("phone3");
		  String email = request.getParameter("email");
		  String email2 = request.getParameter("email2");
		  // 암호, 핸드폰번호, 이메일,주민번호 암호화
		  System.out.println("userid: "+userid);
		  
		  String IdNo= null;
		  if(id_no != null && id_no2 != null){
			  IdNo = id_no+"-"+id_no2;
		  }  
		  String Address = paddress+"/"+paddress2+"/"+paddress3;
		  String Phone =phone+"-"+phone2+"-"+phone3;
		  String Email= email+"@"+email2;
		  
		  Party party = new Party();
		  party.setPno(pno);
		  party.setPname(userName);
		  party.setId_no(IdNo);  
		  party.setBirth(birth);
		  party.setGender(gender);
		  party.setId(userid);
		  party.setPwd(userpwd);
		  party.setPaddress(Address);
		  party.setPhone(Phone);
		  party.setEmail(Email);
		  
		  int result = new PartyService().updatePartyMyinfo(party);
		  
		  Party loginUser=new PartyService().selectParty(userid);
		  
		
		  
		  if(result >0){
			 HttpSession session = request.getSession();
			  session.setAttribute("loginUser", loginUser);
			  response.sendRedirect("/jsmi/views/main2/myinfo/myinfo2.jsp");
		  }else{
			  RequestDispatcher error = request.getRequestDispatcher("views/main1/member/memberError.jsp");
				request.setAttribute("message", "회원정보 수정 실패");
				error.forward(request, response);
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
