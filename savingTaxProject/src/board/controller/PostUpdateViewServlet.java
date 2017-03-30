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
 * Servlet implementation class PostUpdateViewServlet
 */
@WebServlet("/postupdateview")
public class PostUpdateViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostUpdateViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int page = Integer.parseInt(request.getParameter("page"));
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		Post post = new PostService().selectPostNo(postNo); 
		RequestDispatcher view = null;
		if(post != null){
		view = request.getRequestDispatcher("/views/main1/CSBoard/QnA/QnAUpdateForm.jsp");
		request.setAttribute("post", post);
		request.setAttribute("page", page);
		view.forward(request, response);
		}else{
		view = request.getRequestDispatcher("/views/main1/CSBoard/board/boardError.jsp");
		request.setAttribute("message", "삽입 실패");
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