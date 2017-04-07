package tax.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.server.PartyService;
import member.model.vo.Party;
import tax.model.service.VatService;

/**
 * Servlet implementation class TaxFormDownServlet
 */
@WebServlet("/downform")
public class VatFormDownServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VatFormDownServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int [] taxArr = null;
		int pno= Integer.parseInt(request.getParameter("pno"));
		int year= Integer.parseInt(request.getParameter("year"));
		int quarter= Integer.parseInt(request.getParameter("quarter"));
		if(quarter != 0){
		int gout1= Integer.parseInt(request.getParameter("gout1"));
		int gout2= Integer.parseInt(request.getParameter("gout2"));
		int gout3= Integer.parseInt(request.getParameter("gout3"));
		int gin1= Integer.parseInt(request.getParameter("gin1"));
		int gin2= Integer.parseInt(request.getParameter("gin2"));
		int gin3= Integer.parseInt(request.getParameter("gin3"));
		int gout1vat= Integer.parseInt(request.getParameter("gout1vat"));
		int gout2vat= Integer.parseInt(request.getParameter("gout2vat"));
		int gout3vat= Integer.parseInt(request.getParameter("gout3vat"));
		int totalout= Integer.parseInt(request.getParameter("totalout"));
		int totaloutvat= Integer.parseInt(request.getParameter("totaloutvat"));
		int totalin= Integer.parseInt(request.getParameter("totalin"));
		int totalinvat= Integer.parseInt(request.getParameter("totalinvat"));
		int totalvat= Integer.parseInt(request.getParameter("totalvat"));
		taxArr = new int[15];
		}else{}
		Party p = new PartyService().selectParty(pno);
		File taxForm = new VatService().printForm(taxArr, p);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
