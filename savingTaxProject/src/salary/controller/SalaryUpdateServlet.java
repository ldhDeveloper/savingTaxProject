package salary.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.GregorianCalendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import salary.model.service.SalaryService;
import salary.model.vo.Salary;

/**
 * Servlet implementation class SalaryUpdateServlet
 */
@WebServlet("/updatesal")
public class SalaryUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SalaryUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("오니??");
		int pno = Integer.parseInt(request.getParameter("pno"));
		int sno = Integer.parseInt(request.getParameter("sno"));
		
		String[] wsdateArr = request.getParameter("wsdate").split("-");
		int year1 = Integer.parseInt(wsdateArr[0]);
		int month1 = Integer.parseInt(wsdateArr[1]) - 1;
		int day1 = Integer.parseInt(wsdateArr[2]);
		Date wsDate = new Date(new GregorianCalendar(year1, month1, day1).getTimeInMillis());
		String[] wedateArr = request.getParameter("wedate").split("-");
		int year2 = Integer.parseInt(wedateArr[0]);
		int month2 = Integer.parseInt(wedateArr[1]) - 1;
		int day2 = Integer.parseInt(wedateArr[2]);
		Date weDate = new Date(new GregorianCalendar(year2, month2, day2).getTimeInMillis());;
		String[] saldateArr = request.getParameter("saldate").split("-");
		int year3 = Integer.parseInt(saldateArr[0]);
		int month3 = Integer.parseInt(saldateArr[1]) -1 ;
		int day3 = Integer.parseInt(saldateArr[2]);
		Date salDate = new Date(new GregorianCalendar(year3, month3, day3).getTimeInMillis());;
		int initPay = Integer.parseInt(request.getParameter("initpay"));
		int overPay =  Integer.parseInt(request.getParameter("overpay"));
		int restPay = Integer.parseInt(request.getParameter("restpay"));
		int bonus = Integer.parseInt(request.getParameter("bonus"));
		int incentive = Integer.parseInt(request.getParameter("incentive"));
		int meals = Integer.parseInt(request.getParameter("meals"));
		int carPay = Integer.parseInt(request.getParameter("carpay"));
		int childPay = Integer.parseInt(request.getParameter("childpay"));
		int exp = Integer.parseInt(request.getParameter("exp"));
		int realSalary = Integer.parseInt(request.getParameter("realsalary"));
		
		Salary s = new Salary();
		s.setPno(pno);
		s.setWsDate(wsDate);
		s.setWeDate(weDate);
		s.setSalDate(salDate);
		s.setInitPay(initPay);
		s.setOverPay(overPay);
		s.setRestPay(restPay);
		s.setBonus(bonus);
		s.setIncentive(incentive);
		s.setMeals(meals);
		s.setCarPay(carPay);
		s.setChildPay(childPay);
		s.setExp(exp);
		s.setSno(sno);
		
		int result = new SalaryService().updateSalary(pno, s, realSalary);
		
		if(result > 0){
			response.sendRedirect("/jsmi/views/main2/emp/emp2modify.jsp");
		}else{
			System.out.println("직원정보수정실패!!!!!");
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
