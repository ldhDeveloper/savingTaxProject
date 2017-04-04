package member.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.server.PartyService;
import member.model.vo.Party;

/**
 * Servlet implementation class EmployeeUpdateServlet
 */
@WebServlet("/empupdate")
public class EmployeeUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeUpdateServlet() {
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
		String empname = request.getParameter("empname");
		String emptype = request.getParameter("optradio");
		String empno = request.getParameter("empno1") + "-" + request.getParameter("empno2");
		String position = request.getParameter("position");
		Date hiredate = Date.valueOf(request.getParameter("hiredate"));
		String phone = request.getParameter("phone1") + "-" + request.getParameter("phone2") + "-" + request.getParameter("phone3");
		String address = request.getParameter("add1") + "/" + request.getParameter("add2") + "/" + request.getParameter("add3");
		String email = request.getParameter("email1") + "@" + request.getParameter("email2");
		int category = 2;
		
		Party p = new Party();
		p.setPname(empname);
		p.setEmp_type(emptype);
		p.setId_no(empno);
		p.setPosition(position);
		p.setJoin_date(hiredate);
		p.setPhone(phone);
		p.setPaddress(address);
		p.setEmail(email);
		p.setCategory(category);
		
		int result = new PartyService().updateEmp(p, owner);
		
		if(result > 0){
			RequestDispatcher view = request.getRequestDispatcher("emplist");
			request.setAttribute("owner", owner);
			view.forward(request, response);
			System.out.println("직원정보 수정 성공");
		}else{
			RequestDispatcher view = request.getRequestDispatcher("views/main2/main2Error.jsp");
			request.setAttribute("message", "직원 정보 수정 실패!!");
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
