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
 * Servlet implementation class Myinfo3List
 */
@WebServlet("/m3list")
public class Myinfo3List extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Myinfo3List() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int pno =Integer.parseInt(request.getParameter("pno")); 
		System.out.println("list 3 pno: "+pno);
		/*int owner= Integer.parseInt(request.getParameter("owner"));*/
		//System.out.println("list 3 owner: "+owner);
		ArrayList<Party> list = new PartyService().selectcustomerList(pno);
		System.out.println("list: "+list);
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Party plist : list){
			JSONObject jsob = new JSONObject();
			jsob.put("pno", plist.getPno());
			jsob.put("cname", URLEncoder.encode(plist.getCname(), "utf-8"));
			jsob.put("president", URLEncoder.encode(plist.getPresident(), "utf-8"));
			jsob.put("cno", URLEncoder.encode(plist.getCno(), "utf-8"));
			jsob.put("cstatus", URLEncoder.encode(plist.getCstatus(), "utf-8"));
			jsob.put("ctype", URLEncoder.encode(plist.getCtype(), "utf-8"));
			jsob.put("tel", URLEncoder.encode(plist.getTel(), "utf-8"));
			jsob.put("caddress", URLEncoder.encode(plist.getCaddress(), "utf-8"));
			jsob.put("email", URLEncoder.encode(plist.getEmail(), "utf-8"));
			jarr.add(jsob);
		}
		
		json.put("list", jarr);
		System.out.println(json.toJSONString());
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
