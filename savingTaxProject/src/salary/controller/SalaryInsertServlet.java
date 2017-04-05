package salary.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SalaryInsertServlet
 */
@WebServlet("/insertsal")
public class SalaryInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SalaryInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pno = Integer.parseInt(request.getParameter("pno"));
		//System.out.println(request.getParameter("wsdate"));
		String[] wsdateArr = request.getParameter("wsdate").split("-");
		int year1 = Integer.parseInt(wsdateArr[0]);
		int month1 = Integer.parseInt(wsdateArr[1]);
		int day1 = Integer.parseInt(wsdateArr[2]);
		Date wsDate = new Date(new GregorianCalendar(year1, month1, day1).getTimeInMillis());
		String[] wedateArr = request.getParameter("wedate").split("-");
		int year2 = Integer.parseInt(wedateArr[0]);
		int month2 = Integer.parseInt(wedateArr[1]);
		int day2 = Integer.parseInt(wedateArr[2]);
		Date weDate = new Date(new GregorianCalendar(year2, month2, day2).getTimeInMillis());;
		String[] saldateArr = request.getParameter("saldate").split("-");
		int year3 = Integer.parseInt(saldateArr[0]);
		int month3 = Integer.parseInt(saldateArr[1]);
		int day3 = Integer.parseInt(saldateArr[2]);
		Date salDate = new Date(new GregorianCalendar(year3, month3, day3).getTimeInMillis());;
		int initPay;
		int overPay;
		int restPay;
		int bonus;
		int incentive;
		int meals;
		int carPay;
		int childPay;
		int exp;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
