package salary.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import member.model.vo.Party;
import salary.model.service.SalaryService;
import salary.model.vo.Salary;

/**
 * Servlet implementation class SalaryFindServlet
 */
@WebServlet("/findsno")
public class SalaryFindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SalaryFindServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sno = Integer.parseInt(request.getParameter("sno"));
		int pno = Integer.parseInt(request.getParameter("pno"));
		
		Salary s = new SalaryService().findUseSno(sno);
		
		Party p = new SalaryService().findUsePno(pno);
		
		JSONObject job = new JSONObject();
		job.put("pname", URLEncoder.encode(p.getPname(), "utf-8"));
		job.put("email", p.getEmail());
		job.put("idno", p.getId_no());
		job.put("position", URLEncoder.encode(p.getPosition(), "utf-8"));
		job.put("emptype", URLEncoder.encode(p.getEmp_type(), "utf-8"));
		job.put("phone", p.getPhone());
		job.put("sno", s.getSno());
		job.put("pno", s.getPno());
		job.put("wsdate", s.getWsDate().toString());
		job.put("wedate", s.getWeDate().toString());
		job.put("initpay", s.getInitPay());
		job.put("bonus", s.getBonus());
		job.put("incentive", s.getIncentive());
		job.put("overpay", s.getOverPay());
		job.put("meals", s.getMeals());
		job.put("childpay", s.getChildPay());
		job.put("carpay", s.getCarPay());
		job.put("exp", s.getExp());
		job.put("saldate", s.getSalDate().toString());
		job.put("restpay", s.getRestPay());
		
		System.out.println("job : " + job.toJSONString());
		response.setContentType("application/json:charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(job.toJSONString()); //객체 --> 문자열로 바꿈
		out.flush();
		out.close();
				
				
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
