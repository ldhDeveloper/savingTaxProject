package GeneralIncomeTax.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import GeneralIncomeTax.model.service.GeneralIncomeTaxService;
import diary.model.vo.Diary;

/**
 * Servlet implementation class GeneralIncomeTaxViewServlet
 */
@WebServlet("/gitlist")
public class GeneralIncomeTaxViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GeneralIncomeTaxViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int wpno = Integer.parseInt(request.getParameter("pno"));
		String year = request.getParameter("selyear");
		
		List<Diary> dlist = new GeneralIncomeTaxService().selectDlist(wpno, year);
		
		JSONObject json = new JSONObject();
		JSONArray jarr = new JSONArray();
		
		for(Diary d : dlist) {
			JSONObject git = new JSONObject();
			git.put("cost", Integer.toString(d.getCost()));
			git.put("anm", URLEncoder.encode(d.getAnm(), "utf-8"));
			git.put("atype", URLEncoder.encode(d.getAtype(), "utf-8"));
			jarr.add(git);
		}
		
		json.put("tax", jarr);
		
		response.setContentType("text/html charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.print(json.toJSONString());
		out.flush();
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
