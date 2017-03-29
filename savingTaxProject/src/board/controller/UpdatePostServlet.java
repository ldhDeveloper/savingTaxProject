package board.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.service.PostService;
import board.model.vo.Board;
import board.model.vo.Post;

/**
 * Servlet implementation class UpdatePostServlet
 */
@WebServlet("/updatepost")
public class UpdatePostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
//
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
			int postNo = Integer.parseInt(request.getParameter("postNo"));
			String title = request.getParameter("title");
			String postContents = request.getParameter("postContents");
			int boardNo = Integer.parseInt(request.getParameter("boardNo"));
			Post p = new Post();
			p.setPostNo(postNo);
			p.setPostName(title);
			p.setPostContents(postContents);
			p.setBoardNo(boardNo);
			int result = new PostService().insertPost(p);
		RequestDispatcher view = null;
		if(result > 0){
		response.sendRedirect("");	
		}else{
			view = request.getRequestDispatcher("view/board/boardError.jsp");
			request.setAttribute("message", "글수정페이지로 이동 실패");
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
