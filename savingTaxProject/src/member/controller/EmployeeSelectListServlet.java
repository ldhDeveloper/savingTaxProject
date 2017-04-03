package member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import member.model.server.PartyService;
import member.model.vo.Party;

/**
 * Servlet implementation class EmployeeSelectListServlet
 */
@WebServlet("/emplist")
public class EmployeeSelectListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeSelectListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pno = Integer.parseInt(request.getParameter("pno"));
		System.out.println(pno);
		ArrayList<Party> emplist = new PartyService().selectEmpList(pno);
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		
		
		for(Party p : emplist){
			JSONObject job = new JSONObject();
			job.put("empname", URLEncoder.encode(p.getPname(), "utf-8"));
			job.put("emptype", URLEncoder.encode(p.getEmp_type(), "utf-8"));
			job.put("position", URLEncoder.encode(p.getPosition(), "utf-8"));
			job.put("hiredate", p.getJoin_date().toString());
			job.put("phone", p.getPhone());
			String[] add1 = p.getPaddress().split("-");
			String[] add2 = add1[1].split(" ");
			String address = add2[0] + " " + add2[1];
			System.out.println(address);
			job.put("empadd", URLEncoder.encode(address, "utf-8"));
			job.put("email", p.getEmail());
			
			jarr.add(job);
		}
		json.put("emplist", jarr);
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json.toJSONString());
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
