package diary.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
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
import diary.model.vo.Diary;

/**
 * Servlet implementation class DiaryInsertServlet
 */
@WebServlet("/dinsert")
public class DiaryInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DiaryInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String billtype = request.getParameter("billtype");
		String indate = request.getParameter("indate");
		String seldealer = request.getParameter("seldealer");
		String actype = request.getParameter("actype");
		String product = request.getParameter("product");
		String cost = request.getParameter("cost");
		String bill_how = request.getParameter("bill_how");
		String proof = request.getParameter("proof");
		String pno = request.getParameter("pno");
		
		System.out.println(billtype + "," + indate + ", " + seldealer  + ", " + actype  + ", " + product  + ", "+ cost + ", " + bill_how  + ", " + proof);
		
		 
		Diary diary = new Diary();
		diary.setAnm(billtype);
		diary.setAtype(actype);
		diary.setPname(seldealer);
		diary.setProduct(product);
		diary.setCost(Integer.parseInt(cost));
		diary.setBilling(bill_how);
		diary.setProof_type(proof);
		
		ArrayList<Diary> list = new DiaryService().InsertDiary(diary, indate, pno);
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
