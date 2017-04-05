package member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

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
 * Servlet implementation class Myinfo3SelectServlet
 */
@WebServlet("/selectinfo3")
public class Myinfo3SelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Myinfo3SelectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); 
		 int pno = Integer.parseInt(request.getParameter("pno"));
		  
		  Party p = new PartyService().selectParty(pno);
		  System.out.println("selectpno: "+p);
		  JSONObject job = new JSONObject();
		
		  
		  job.put("pno", p.getPno());
		  job.put("cname", URLEncoder.encode(p.getCname(), "utf-8"));
		  job.put("president", URLEncoder.encode(p.getPresident(), "utf-8"));
		  String cnoArr[] = p.getCno().split("-");
		  job.put("cno", cnoArr[0]);
		  job.put("cno2", cnoArr[1]);
		  job.put("cno3", cnoArr[2]);
		  job.put("cstatus", URLEncoder.encode(p.getCstatus(), "utf-8"));
		  job.put("ctype", URLEncoder.encode(p.getCtype(), "utf-8"));
		  String telArr[]=p.getTel().split("-");
		  job.put("tel", telArr[0]);
		  job.put("tel2", telArr[1]);
		  job.put("tel3", telArr[2]);
		  String caddressArr[] =p.getCaddress().split("/");
		  job.put("caddress", URLEncoder.encode(caddressArr[0],"utf-8"));
		  job.put("caddress2",  URLEncoder.encode(caddressArr[1],"utf-8"));
		  job.put("caddress3",  URLEncoder.encode(caddressArr[2],"utf-8"));
		  String emailArr[]=p.getEmail().split("@");
		  job.put("email", emailArr[0]);
		  job.put("email2", emailArr[1]);
		  
		  response.setContentType("application/json: charset=utf-8");
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
