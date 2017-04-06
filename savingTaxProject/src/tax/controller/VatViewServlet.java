package tax.controller;

import java.io.IOException;

import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import diary.model.vo.Diary;
import tax.model.service.VatService;
import tax.model.vo.Vat;

/**
 * Servlet implementation class VatViewServlet
 */
@WebServlet("/vview")
public class VatViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VatViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html; charset = utf-8");
		int write_pno =Integer.parseInt(request.getParameter("pno"));
		int quarter = Integer.parseInt(request.getParameter("quarter"));
		String syear = request.getParameter("year");
		int year = Integer.parseInt(syear);
	List<Diary> vlist = new VatService().selectVlist(write_pno, year, quarter);
	JSONObject json = new JSONObject();
	JSONArray jarr = new JSONArray();

	for(Diary tax : vlist){
		JSONObject jsob = new JSONObject();
		jsob.put("proof_type", URLEncoder.encode(tax.getProof_type(), "utf-8"));
		jsob.put("cost", Integer.toString(tax.getCost()));
		jsob.put("anm", URLEncoder.encode(tax.getAnm(), "utf-8"));
		jarr.add(jsob);
	}
	json.put("tax", jarr);
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
