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
		
		request.setCharacterEncoding("utf-8");
		
		int owner =Integer.parseInt(request.getParameter("pno")); 
		System.out.println("mtinfo3list의 pno: "+owner);
		ArrayList<Party> list = new PartyService().selectcustomerList(owner);
		System.out.println("myinfo3의 list: "+list);
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Party p : list){
			JSONObject jsob = new JSONObject();
			jsob.put("pno", p.getPno());
			jsob.put("cname",URLEncoder.encode(p.getCname(), "utf-8"));
			jsob.put("president", URLEncoder.encode(p.getPresident(), "utf-8"));
			jsob.put("cno", URLEncoder.encode(p.getCno(), "utf-8"));
			jsob.put("cstatus", URLEncoder.encode(p.getCstatus(), "utf-8"));
			jsob.put("ctype", URLEncoder.encode(p.getCtype(), "utf-8"));
			jsob.put("tel", URLEncoder.encode(p.getTel(), "utf-8"));
			String[] add=p.getCaddress().split("&");
			String Caddress=add[0]+" "+add[1]+" "+add[2];
			System.out.println(Caddress);
			jsob.put("caddress", URLEncoder.encode(Caddress, "utf-8"));
			String[] email=p.getEmail().split("@");
			String Email=email[0]+"@"+email[1];
			jsob.put("email", URLEncoder.encode(Email, "utf-8"));
			String cstatus=p.getCstatus();
			System.out.println(cstatus);
			jarr.add(jsob);
		}
		
		json.put("list", jarr);
		System.out.println(json.toJSONString());
		response.setContentType("application/json; charset=utf-8");
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
