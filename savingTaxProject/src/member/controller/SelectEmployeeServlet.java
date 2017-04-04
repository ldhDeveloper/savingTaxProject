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
import member.model.server.PartyService;
import member.model.vo.Party;

/**
 * Servlet implementation class SelectEmployeeServlet
 */
@WebServlet("/semp")
public class SelectEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectEmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pno = Integer.parseInt(request.getParameter("pno"));
		ArrayList<Party> list = new PartyService().selectEmpList(pno);
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Party plist : list){
			JSONObject jsob = new JSONObject();
			jsob.put("pno", plist.getPno());
			jsob.put("pname", plist.getPname());
			jsob.put("id_no", plist.getId_no());
			jsob.put("phone", plist.getPhone());
			jsob.put("position", plist.getPosition());
			jsob.put("email", plist.getEmail());
			jsob.put("emp_type", plist.getEmp_type());
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
