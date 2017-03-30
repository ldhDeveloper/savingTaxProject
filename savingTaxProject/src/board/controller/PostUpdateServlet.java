package board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.PostService;
import board.model.vo.Post;

/**
 * Servlet implementation class PostUpdateServlet
 */
@WebServlet("/pupdate")
public class PostUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		int page = Integer.parseInt(request.getParameter("page"));
		String postName = request.getParameter("postName");
		String postContents = request.getParameter("postContents");
	
		Post p = new Post();
		p.setBoardNo(boardNo);
		p.setPostNo(postNo);
		p.setPostContents(postContents);
		p.setPostName(postName);
		int result = new PostService().updatePost(p);
		
		
		if(result > 0){
			response.sendRedirect("/jsmi/listview?page="+page+"&boardNo="+boardNo);
			
		}else{
			RequestDispatcher view = request.getRequestDispatcher("/listview?page="+page+"&boardNo="+boardNo);
			request.setAttribute("message", "update error");
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
