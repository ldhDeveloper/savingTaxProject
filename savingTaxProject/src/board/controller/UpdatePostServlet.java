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
import board.model.vo.Board;

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

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
			int post_no = Integer.parseInt(request.getParameter("post_no"));
			String post_title = request.getParameter("post_title");
			String post_contents = request.getParameter("post_contents");
			int board_no = Integer.parseInt(request.getParameter("board_no"));
			Board b = new Board();
			b.setBoard_no(board_no);
			b.setPost_contents(post_contents);
			b.setPost_no(post_no);
			b.setPost_title(post_title);
			int result = new BoardService().updatePost(b);
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
