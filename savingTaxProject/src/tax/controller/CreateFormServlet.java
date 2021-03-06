package tax.controller;


import java.io.IOException;

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
@WebServlet("/createform")
public class CreateFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String [] taxArr = null;
		String form = "";
		int pno= Integer.parseInt(request.getParameter("pno"));
		String year= request.getParameter("year");
		String quarter= request.getParameter("quarter");
		Party p = new PartyService().selectParty2(pno);
		if(!quarter.equals("0")){
		   taxArr = new String [21];
		   taxArr[0] = year;
		   taxArr[1] = quarter;
		String gout1= request.getParameter("gout1"); taxArr[2] = gout1;
		String gout2= request.getParameter("gout2"); taxArr[3] = gout2;
		String gout3= request.getParameter("gout3"); taxArr[4] = gout3;
		String gout1vat= request.getParameter("gout1vat"); taxArr[5] = gout1vat;
		String gout2vat= request.getParameter("gout2vat"); taxArr[6] = gout2vat;
		String gout3vat= request.getParameter("gout3vat"); taxArr[7] = gout3vat;
		String totalout= request.getParameter("totalout"); taxArr[8] = totalout;
		String totaloutvat= request.getParameter("totaloutvat"); taxArr[9] = totaloutvat;
		String gin1= request.getParameter("gin1"); taxArr[10] = gin1;
		String gin2= request.getParameter("gin2"); taxArr[11] = gin2;
		String gin3= request.getParameter("gin3"); taxArr[12] = gin3;
		String gin1vat= request.getParameter("gin1vat"); taxArr[13] = gin1vat;
		String gin2vat= request.getParameter("gin2vat"); taxArr[14] = gin2vat;
		String gin3vat= request.getParameter("gin3vat"); taxArr[15] = gin3vat;
		String totalin= request.getParameter("totalin"); taxArr[16] = totalin;
		String totalinvat= request.getParameter("totalinvat"); taxArr[17] = totalinvat;
		String totalvat=request.getParameter("totalvat"); taxArr[18] = totalvat;
		String gin4= request.getParameter("gin4"); taxArr[19] = gin4;
		String gin4vat= request.getParameter("gin4vat"); taxArr[20] = gin4vat;
		
		form = new VatService().printGeneralForm(taxArr, p);
		
		}else{
			taxArr = new String[13];
		String out = request.getParameter("out"); taxArr[0] = out;
		String outvat = request.getParameter("outvat"); taxArr[1] = outvat;
		String in1 = request.getParameter("in1"); taxArr[2] = in1;
		String in2 = request.getParameter("in2"); taxArr[3] = in2;
		String in3 = request.getParameter("in3"); taxArr[4] = in3;
		String invat1 = request.getParameter("invat1"); taxArr[5] = invat1;
		String invat2 = request.getParameter("invat2");  taxArr[6] = invat2;
		String invat3 = request.getParameter("invat3"); taxArr[7] = invat3;
		String totalout = request.getParameter("totalout"); taxArr[8] = totalout;
		String totaloutvat = request.getParameter("totaloutvat"); taxArr[9] = totaloutvat;
		String totalin = request.getParameter("totalin"); taxArr[10] = totalin;
		String totalinvat = request.getParameter("totalinvat"); taxArr[1] = totalinvat;
		String totalvat = request.getParameter("totalvat"); taxArr[12] = totalvat;
		form = new VatService().printSimpleForm(taxArr, p);
		}
		response.getWriter().append(form);
		
		if(form == null){
		System.out.println("error occur...");
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
