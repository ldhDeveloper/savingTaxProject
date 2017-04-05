package member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import diary.model.service.DiaryService;
import diary.model.vo.Diary;
import member.model.server.PartyService;
import member.model.vo.Emp;

/**
 * Servlet implementation class SalarySearchServlet
 */
@WebServlet("/salsearch")
public class SalarySearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SalarySearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pno = Integer.parseInt(request.getParameter("pno"));
		String startmonth = request.getParameter("selyear") + "-0" + request.getParameter("min") + "-01";
		String endmonth = request.getParameter("selyear") + "-0" + request.getParameter("max");
		
		System.out.println("pno : " + pno);
		System.out.println("startmonth : " + startmonth);
		System.out.println("endmonth : " + endmonth);
		
		ArrayList<Emp> list = new PartyService().empSearch(pno, startmonth, endmonth);
		System.out.println("list :" + list);
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Emp elist : list){
			System.out.println("elist : " + elist);
			JSONObject jsob = new JSONObject();
			jsob.put("pno", Integer.toString(elist.getPno()));
			jsob.put("pname", elist.getPname());
			jsob.put("id_no", elist.getId_no());
			jsob.put("position", elist.getPosition());
			jsob.put("wsdate", elist.getWsdate().toString());
			jsob.put("wedate", elist.getWedate().toString());
			jsob.put("saldate", elist.getSaldate().toString());
			jsob.put("init_pay", Integer.toString(elist.getInit_pay()));
			jsob.put("bonus", Integer.toString(elist.getBonus()));
			jsob.put("incentive", Integer.toString(elist.getIncentive()));
			jsob.put("over_pay", Integer.toString(elist.getOver_pay()));
			jsob.put("meals", Integer.toString(elist.getMeals()));
			jsob.put("child_pay", Integer.toString(elist.getChild_pay()));
			jsob.put("car_pay", Integer.toString(elist.getCar_pay()));
			jsob.put("exp", Integer.toString(elist.getExp()));
			jsob.put("rest_pay", Integer.toString(elist.getRest_pay()));
			jarr.add(jsob);
		}
		
		json.put("list", jarr);
		System.out.println(json);
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		System.out.println("json 파스내용 : " + json.toJSONString());
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
