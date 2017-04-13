package tax.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DownloadTaxFormServlet
 */
@WebServlet("/formdown")
public class DownloadTaxFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DownloadTaxFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String filePath = request.getSession().getServletContext().getRealPath("/board_uploadFiles/");
		
		String fName = request.getParameter("fName");
		BufferedInputStream buf = null;
		ServletOutputStream downOut = null;
		
		try {
			downOut = response.getOutputStream();
			File downFile = new File(filePath + fName);
			
			response.setContentType("application/vnd.ms-excel"); 
			response.addHeader("Content-Disposition", "attachment; filename= \""
					+ new String(fName.getBytes("utf-8"), "ISO-8859-1") + "\"");
		
			response.setContentLength((int)downFile.length());
			FileInputStream fin = new FileInputStream(downFile);
					buf = new BufferedInputStream(fin);
			int readBytes = 0;
			while((readBytes = buf.read()) != -1){
				downOut.write(readBytes);
			}
			downOut.close();
			buf.close();
			//System.out.println(downFile.delete());
			
		} catch (Exception e) {
			e.printStackTrace();
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
