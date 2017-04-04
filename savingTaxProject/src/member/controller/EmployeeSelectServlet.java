package member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import member.model.server.PartyService;
import member.model.vo.Party;

/**
 * Servlet implementation class EmployeeSelectServlet
 */
@WebServlet("/selectemp")
public class EmployeeSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeSelectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pno = Integer.parseInt(request.getParameter("pno"));
		
		Party p = new PartyService().selectEmp(pno);
		
		JSONObject job = job = new JSONObject();
		job.put("pno", p.getPno());
		job.put("pname", URLEncoder.encode(p.getPname(), "utf-8"));
		job.put("emptype", URLEncoder.encode(p.getEmp_type(), "utf-8"));
		String empnoArr[] = p.getId_no().split("-");
		job.put("empno1", empnoArr[0]);
		job.put("empno2", empnoArr[1]);
		job.put("position", URLEncoder.encode(p.getPosition(), "utf-8"));
		job.put("hiredate", p.getJoin_date().toString());
		String phoneArr[] = p.getPhone().split("-");
		job.put("phone1", phoneArr[0]);
		job.put("phone2", phoneArr[1]);
		job.put("phone3", phoneArr[2]);
		String addArr[] = p.getPaddress().split("/");
		job.put("add1", URLEncoder.encode(addArr[0], "utf-8"));
		job.put("add2", URLEncoder.encode(addArr[1], "utf-8"));
		job.put("add3", URLEncoder.encode(addArr[2], "utf-8"));
		String emailArr[] = p.getEmail().split("@");
		job.put("email1", emailArr[0]);
		job.put("email2", emailArr[1]);

		response.setContentType("application/json:charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(job.toJSONString());
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
