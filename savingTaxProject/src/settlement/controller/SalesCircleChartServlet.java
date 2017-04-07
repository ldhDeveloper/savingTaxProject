package settlement.controller;

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

import settlement.model.service.SettleService;
import settlement.model.vo.AssetCircle;

/**
 * Servlet implementation class SalesCircleChartServlet
 */
@WebServlet("/scirchart")
public class SalesCircleChartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SalesCircleChartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pno = Integer.parseInt(request.getParameter("pno"));
		String dyear = request.getParameter("dyear");
		String cselect = request.getParameter("cselect");
		
		ArrayList<AssetCircle> list = new SettleService().salesDonut(pno, dyear, cselect);
		System.out.println("list :" + list);
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		String anm = "없음";
		
		for(AssetCircle aclist : list){
			System.out.println("aclist : " + aclist);
			JSONObject jsob = new JSONObject();
			if(aclist.getAnm() != null){
				anm = aclist.getAnm();
			} else {
				anm = "없음";
			}
			jsob.put("anm", anm);
			jsob.put("sumcost", Long.toString(aclist.getsumcost()));
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
