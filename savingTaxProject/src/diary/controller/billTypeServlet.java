package diary.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import diary.model.service.DiaryService;
import diary.model.vo.AccountList;

/**
 * Servlet implementation class billTypeServlet
 */
@WebServlet("/bType")
public class billTypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public billTypeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String btype = request.getParameter("btype");
		System.out.println("btype : " + btype);
		ArrayList<AccountList> list = new DiaryService().showBillType(btype);
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(AccountList alist : list){
			JSONObject jsob = new JSONObject();
			jsob.put("ano", alist.getAno());
			jsob.put("anm", alist.getAnm());
			jsob.put("atype", alist.getAtype());
			jarr.add(jsob);
		}
		
		json.put("list", jarr);
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
