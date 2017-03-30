package board.controller;

import java.io.IOException;

import java.io.*;
import java.sql.Date;
import java.text.SimpleDateFormat;
import org.apache.tomcat.util.http.fileupload.servlet.*;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.PostService;
import board.model.vo.Post;

/**
 * Servlet implementation class PostInsertServlet
 */
@WebServlet("/pinsert")
public class PostInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		if(ServletFileUpload.isMultipartContent(request)){
			RequestDispatcher view = request.getRequestDispatcher("views/main1/CSBoard/board/boardError.jsp");
			request.setAttribute("message", "enctype 오류");
			view.forward(request, response);
		}
		int maxSize = 1024 * 1024 * 10;
		
		String root = request.getSession().getServletContext().getRealPath("/");
		
		String savePath  = root + "board_uploadFiles/";
		
		try{
		MultipartRequest mrequest = new MultipartRequest(request, savePath, maxSize, "utf-8", new DefaultFileRenamePolicy()); 
		String postName = mrequest.getParameter("postName");
		int pNo = Integer.parseInt(mrequest.getParameter("pno"));
		String postContents = mrequest.getParameter("postContents");
		Post p = new Post();
		p.setPostName(postName);
		p.setpNo(pNo);
		p.setPostContents(postContents);
		
		int result = new PostService().insertPost(p);
		
		if(result > 0){
			response.sendRedirect("/jsmi/listview");
		}
		
		else {
			RequestDispatcher view = request.getRequestDispatcher("views/main1/CSBoard/board/boardError.jsp");
			request.setAttribute("message", "게시판 오류");
			view.forward(request, response);
		}
		}catch(Exception e){
			e.printStackTrace();}
		
		
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
