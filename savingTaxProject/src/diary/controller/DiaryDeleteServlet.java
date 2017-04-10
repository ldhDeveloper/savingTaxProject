package diary.controller;

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
import diary.model.vo.Diary;

/**
 * Servlet implementation class DiaryDeleteServlet
 */
@WebServlet("/ddelete")
public class DiaryDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DiaryDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		String[] dnos = request.getParameterValues("delselect[]");
		System.out.println("dnos : " + dnos);
		String indate = request.getParameter("ddate");
		System.out.println("ddate : " + indate);
		String pno = request.getParameter("pno");
		System.out.println("pno : " + pno);
		
		
		for(int i=0; i<dnos.length; i++){
			System.out.println("dnos[" + i + "] : " + dnos[i]);
			
		}
		
		ArrayList<Diary> list = new DiaryService().deleteDiary(dnos, indate, pno);
		System.out.println("list :" + list);
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Diary dlist : list){
			System.out.println("dlist : " + dlist);
			JSONObject jsob = new JSONObject();
			jsob.put("atype", dlist.getAtype());
			jsob.put("ddate", dlist.getDdate().toString());
			jsob.put("pname", dlist.getPname());
			jsob.put("anm", dlist.getAnm());
			jsob.put("product", dlist.getProduct());
			jsob.put("cost", Integer.toString(dlist.getCost()));
			jsob.put("billing", dlist.getBilling());
			jsob.put("proof_type", dlist.getProof_type());
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
