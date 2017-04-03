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
		int owner= Integer.parseInt(request.getParameter("owner"));
		ArrayList<Party> list = new PartyService().selectList(owner ,pno);
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Party plist : list){
			JSONObject jsob = new JSONObject();
			jsob.put("pno", plist.getPno());
			jsob.put("cname", plist.getCname());
			jsob.put("president", plist.getPresident());
			jsob.put("cno", plist.getCno());
			jsob.put("cstatus", plist.getCstatus());
			jsob.put("ctype", plist.getCtype());
			jsob.put("tel", plist.getTel());
			jsob.put("caddress", plist.getCaddress());
			jsob.put("email", plist.getEmail());
			jarr.add(jsob);
		}
		
		json.put("list", jarr);
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
