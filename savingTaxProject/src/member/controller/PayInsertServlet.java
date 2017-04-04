package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.server.PartyService;
import member.model.vo.Grade;

/**
 * Servlet implementation class PayInsertServlet
 */
@WebServlet("/payinsert")
public class PayInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayInsertServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("결제 오니?");
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html charset=utf-8");
		
		int pno = Integer.parseInt(request.getParameter("pno"));
		String sdate = request.getParameter("sdate");
		String edate = request.getParameter("edate");
		int month = Integer.parseInt(request.getParameter("month"));
		String hap = request.getParameter("hap");
		/*int total = hap.split("원"));*/
		
		
		System.out.println("grade servlet1 : " + hap);
		
		Grade g = new Grade();
		g.setPno(pno);
		g.setSdate(sdate);
		g.setEdate(edate);
		
		System.out.println("grade servlet2 : " + g);
		
		int result = new PartyService().insertGrade(g);
		
		System.out.println("grade servlet3 : " + g);
		
		RequestDispatcher view = null;
		
		if(result > 0){
			view = request.getRequestDispatcher("views/main1/costGuide/payResultView.jsp");
			request.setAttribute("hap", hap);
			request.setAttribute("month", month);
			view.forward(request, response);
		}
		
		else {
			view = request.getRequestDispatcher("views/main1/costGuide/payError.jsp");
			request.setAttribute("message", "결제 실패");
			view.forward(request, response);
		}		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
