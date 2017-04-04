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
 * Servlet implementation class MyinfoDetailUpdate
 */
@WebServlet("/detailupdate")
public class MyinfoDetailUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyinfoDetailUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  int pno = Integer.parseInt(request.getParameter("pno"));
		  System.out.println("pno detail: "+pno);
		  
		  Party p = new PartyService().selectParty(pno);
		  
		  JSONObject job = new JSONObject();
		  job.put("pno", p.getPno());
		  job.put("cname", URLEncoder.encode(p.getCname(), "utf-8"));
		  job.put("president", URLEncoder.encode(p.getPresident(), "utf-8"));
		  job.put("cstatus", URLEncoder.encode(p.getCstatus(), "utf-8")); 
		  job.put("ctype", URLEncoder.encode(p.getCtype(), "utf-8"));
		  job.put("tel", URLEncoder.encode(p.getTel(), "utf-8"));
		  job.put("caddress", URLEncoder.encode(p.getCaddress(), "utf-8"));
		  job.put("email", URLEncoder.encode(p.getEmail(), "utf-8"));
			
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
