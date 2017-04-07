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

import diary.model.vo.Diary;
import settlement.model.service.SettleService;
import settlement.model.vo.Settlement;

/**
 * Servlet implementation class SalesnCostBarServlet
 */
@WebServlet("/scbar")
public class SalesnCostBarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SalesnCostBarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pno = Integer.parseInt(request.getParameter("pno"));
		String dyear = request.getParameter("dyear");
		
		ArrayList<Settlement> list = new SettleService().salesnCostBar(pno, dyear);
		System.out.println("list :" + list);
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Settlement slist : list){
			System.out.println("slist : " + slist);
			JSONObject jsob = new JSONObject();
			jsob.put("sales1", Integer.toString(slist.getSales1()));
			jsob.put("sales2", Integer.toString(slist.getSales2()));
			jsob.put("sales3", Integer.toString(slist.getSales3()));
			jsob.put("sales4", Integer.toString(slist.getSales4()));
			jsob.put("sales5", Integer.toString(slist.getSales5()));
			jsob.put("sales6", Integer.toString(slist.getSales6()));
			jsob.put("sales7", Integer.toString(slist.getSales7()));
			jsob.put("sales8", Integer.toString(slist.getSales8()));
			jsob.put("sales9", Integer.toString(slist.getSales9()));
			jsob.put("sales10", Integer.toString(slist.getSales10()));
			jsob.put("sales11", Integer.toString(slist.getSales11()));
			jsob.put("sales12", Integer.toString(slist.getSales12()));
			jsob.put("cost1", Integer.toString(slist.getCost1()));
			jsob.put("cost2", Integer.toString(slist.getCost2()));
			jsob.put("cost3", Integer.toString(slist.getCost3()));
			jsob.put("cost4", Integer.toString(slist.getCost4()));
			jsob.put("cost5", Integer.toString(slist.getCost5()));
			jsob.put("cost6", Integer.toString(slist.getCost6()));
			jsob.put("cost7", Integer.toString(slist.getCost7()));
			jsob.put("cost8", Integer.toString(slist.getCost8()));
			jsob.put("cost9", Integer.toString(slist.getCost9()));
			jsob.put("cost10", Integer.toString(slist.getCost10()));
			jsob.put("cost11", Integer.toString(slist.getCost11()));
			jsob.put("cost12", Integer.toString(slist.getCost12()));
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
