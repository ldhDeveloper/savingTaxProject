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
import settlement.model.vo.Asset;
import settlement.model.vo.Settlement;

/**
 * Servlet implementation class AssetLineChartServlet
 */
@WebServlet("/aline")
public class AssetLineChartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssetLineChartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pno = Integer.parseInt(request.getParameter("pno"));
		String dyear = request.getParameter("dyear");
		
		ArrayList<Asset> list = new SettleService().assetline(pno, dyear);
		System.out.println("list :" + list);
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Asset alist : list){
			System.out.println("alist : " + alist);
			JSONObject jsob = new JSONObject();
			jsob.put("asset1", Integer.toString(alist.getAsset1()));
			jsob.put("asset2", Integer.toString(alist.getAsset2()));
			jsob.put("asset3", Integer.toString(alist.getAsset3()));
			jsob.put("asset4", Integer.toString(alist.getAsset4()));
			jsob.put("asset5", Integer.toString(alist.getAsset5()));
			jsob.put("asset6", Integer.toString(alist.getAsset6()));
			jsob.put("asset7", Integer.toString(alist.getAsset7()));
			jsob.put("asset8", Integer.toString(alist.getAsset8()));
			jsob.put("asset9", Integer.toString(alist.getAsset9()));
			jsob.put("asset10", Integer.toString(alist.getAsset10()));
			jsob.put("asset11", Integer.toString(alist.getAsset11()));
			jsob.put("asset12", Integer.toString(alist.getAsset12()));
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
