package board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.PostService;

/**
 * Servlet implementation class PostDeleteServlet
 */
@WebServlet("/postdelete")
public class PostDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		int page = Integer.parseInt(request.getParameter("page"));
		int result = new PostService().deletePost(postNo);
		
		if(result > 0){
			response.sendRedirect("/jsmi/listview?page="+page+"&boardNo="+boardNo);
		}
		else{
			RequestDispatcher view = request.getRequestDispatcher("/listview?page="+page+"&boardNo="+boardNo);
			request.setAttribute("message", "삭제 이상");
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
