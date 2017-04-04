package tax.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	int write_pno =Integer.parseInt(request.getParameter("pno"));
		response.setContentType("text/html; charset = utf-8");
	
	List<Diary> dlist = new VatService().selectVat(write_pno);
	
	RequestDispatcher view = null;
	if( dlist != null){
	view = request.getRequestDispatcher("views/main2/tax/vatDetail.jsp");
	request.setAttribute("dlist", dlist);
	view.forward(request, response);
	}else{
		view = request.getRequestDispatcher("views/main2/tax/taxError.jsp");
		request.setAttribute("message", "부가세 출력 실패");
		view.forward(request, response);	
	}
	
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}


}
