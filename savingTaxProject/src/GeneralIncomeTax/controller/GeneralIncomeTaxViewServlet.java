package GeneralIncomeTax.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.sql.Date;
import java.util.GregorianCalendar;
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
		System.out.println("오니?");
		int wpno = Integer.parseInt(request.getParameter("pno"));
		String year = request.getParameter("selyear");
		System.out.println(year);
		int gyear = Integer.parseInt(year.substring(0, 4));
		
		int[] income = new GeneralIncomeTaxService().getTotalIncome(wpno, gyear);
		
		int income1 = income[0];
		int cost1 = income[1];
		int income2 = income[2];
		int income3 = income[3];
		int income4 = income[4];
		int cost2 = (int)Math.round(income4 * 0.616 /10) * 10;
		
		
		JSONObject job = new JSONObject();
		job.put("income1", income1);
		job.put("cost1", cost1);
		job.put("income2", income2);
		job.put("income3", income3);
		job.put("income4", income4);
		job.put("cost2", cost2);

		response.setContentType("application/json: charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(job.toJSONString());  //객체 --> 문자열로 바꿈
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
