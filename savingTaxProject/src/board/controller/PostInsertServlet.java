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
		
		response.setContentType("text/html; charset=utf-8");
		
		String postName = request.getParameter("postName");
		int pNo = Integer.parseInt(request.getParameter("pno"));
		String postContents = request.getParameter("postContents");
		
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
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
