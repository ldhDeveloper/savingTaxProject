package diary.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import diary.model.service.DiaryService;
import diary.model.vo.AccountList;
import diary.model.vo.Diary;


/**
 * Servlet implementation class DiaryDailySearchServlet
 */
@WebServlet("/ddsearch")
public class DiaryDailySearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DiaryDailySearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ddate = request.getParameter("ddate");
		System.out.println("ddate : " + ddate);
		
		ArrayList<Diary> list = new DiaryService().DailySearch(ddate);
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Diary dlist : list){
			JSONObject jsob = new JSONObject();
			jsob.put("atype", dlist.getAtype());
			jsob.put("ddate", dlist.getDdate());
			jsob.put("pname", dlist.getPname());
			jsob.put("anm", dlist.getPname());
			jsob.put("product", dlist.getProduct());
			jsob.put("cost", dlist.getCost());
			jsob.put("billing", dlist.getBilling());
			jsob.put("proof_type", dlist.getProof_type());
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
